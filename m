Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227341C37B9
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723014354; cv=none; b=l8NsQQMIp7awK5Ncpw/iXetgFY7/9WdxA8swZVgDmCjYOtUwRuldqS4ojkyy5aHXQ7QCGFtc9Ut7YKO6tAPj13bavDj8XeOC/YxWN2CbL0S27wJfU31H/BR80f4jpXHTNe2YvwVTmdDskvln4nsJSXEFfC9DI2o6sk2JLYN0gQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723014354; c=relaxed/simple;
	bh=qw8OXqFEf0q9zwPtTxR8LSfqdC6n2+ipjKgET/MeDTI=;
	h=To:Subject:From:Message-Id:Date; b=u1n4TQxAHc0CUHo7EOR0RUzThEYwz+p3C2C5qBYrAoNP6eAkNMMhKKGZxz3dQxz+F88j5QOw2DtSVJTJ/NJ9uu5fVWJ94mq2+RU8UqmVA+8vLeA3TVSCwtoc6N/o0tTBppsrDL7xwRAJBuP79499ZraygI7OHrdpFyH/Hp+qoAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kv7XzJ7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kv7XzJ7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A932CC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723014353;
	bh=qw8OXqFEf0q9zwPtTxR8LSfqdC6n2+ipjKgET/MeDTI=;
	h=To:Subject:From:Date:From;
	b=Kv7XzJ7Dij4niVoUhZWWp/bFWNTXhjxwsxlF654QlAjRFQRgpvGwIKuucz9ZImJDX
	 7TogAtxB4OSHVhjBgPhgnTydqdqJhmrruGkknNhho6GeuSOnudLIw1hz5GxprkSa8T
	 /ZaaGSEaFc68feIjqMOZGh9DDgp4H7r9AFAkAXPdJFmz4GUgi2FLsiueAyaNrBAOi7
	 Fgpor2gECy41mGpkW9CftET0bd+omc7RQO80c6ehqrTVI6q9WfI+0GHRyGa9QBzfG0
	 ZGlUJ5/czcgpmJwMecHoQjceRl803a4W3JdwqmTvvbcWws+E/VB+v8rJyMB+PGVnTo
	 fm+jgGXz2R6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DE2C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172301435360.22237.16166519633863107605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13bb75447e7f6794034152dced1a969e58d060b12dcae2de4cac895d1da315cb
Date: Wed, 07 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723014353
