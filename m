Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D2E2222C4
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763111393; cv=none; b=GW5bhXq3uHmBBOch7FXORjCf1sMaRKCV27ux4ketpsewQqOVfeqSZ3nrGNXxnPuNJHhMhvjrXWX/3hmWpmvxfZc/fqbLsp29M0OMNnJ6xlDlL77WihiO9LjeuvOpWxKCUUYi2rI0NMMo+cwU23/hqw3p7NIdsP2hX7WEM5oEo4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763111393; c=relaxed/simple;
	bh=xNCn0Ex26zQWgMV2GwghHael7Fb07HxGSpgSXeKCmJQ=;
	h=To:Subject:From:Message-Id:Date; b=JOIAxX3UO9GAOHf9V2TBqeNDyR3T+3EeHnYT6/+3VTcUvxRkKqJV8W4dv5SLpa2eFXf+4sKpK90XLq9nnHtsITTGuhrdpwgi8tS3Zv8l1GlBudwRM45Ad22ZZFBPRgL5yjZBlXky9XhoQ+O/t39hfd03Q8DtV065D0rK6XMv/YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdRssGJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdRssGJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C16C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763111393;
	bh=xNCn0Ex26zQWgMV2GwghHael7Fb07HxGSpgSXeKCmJQ=;
	h=To:Subject:From:Date:From;
	b=TdRssGJn8hEM8hio61x1uX3TQ8rONrCc9TiWrs9ZjGRtIN0xOq69jzG7O9k5xo9tf
	 Xqro14zc1pTkEgUolq5EGug/Be4mQ/8MXs6PIeAqEkJu9l0KNdUABk3F4oJ9KVEQZP
	 ZmuQFh6ZrbTO/OY5rv0Ua1DCcTm2N70dS00z2Zqs+uWGupXXy2SDWibFAu8FC9lT0j
	 5AGX4lNksCW8mIUt3WK/t6DacBDx7xGSx4kgGG+FesghixYX+xgge/W2/OmBs6EvYJ
	 8SMuZskXzc8agvq6kaXHIph2ZvOryQBxqfjl5HVwesIIRTRXReKfMcYcK71P8IqCKN
	 LeEv8S+lZbyvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C1CE7A96
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311139360.4584.12616220061423721808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dea2aa0b0f2566ac674a4acbe8716acc933e5cc85f1a57be92d997a4098fabd
Date: Fri, 14 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763111393
