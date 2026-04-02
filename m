Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCBF2FFF88
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775136934; cv=none; b=Pi/nox9+Wp/B/jv+ykyy3WEY3P5u340lalFPlPXEu5ioI6fShovGmn+pAAL9l61jG5R+25/jqg0t3IsQILKXLdSMA3Izrq/jD3mVysUYeoslnWRQeEaWRwUwbEcnf552uLjsjeqz7lWiWQ6AyoYc+VbcLMVG1fGOnkN6cDxKkUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775136934; c=relaxed/simple;
	bh=dAdyP+S58ki5F8Di7HcmKB00F5sQwOq6Z7ZmrrCzlxg=;
	h=To:Subject:From:Message-Id:Date; b=OKFPawbwaghv8Fv6weFDBa6oN+aJ8sAgDlpFgLba5gP0oLnex4IAX7pnnq1zrWbrKsJ6+QCXDtuo7zKYepIHlCHLQGgnLh2GS4SCDWjfKO9jbIOQKiPTRuZIq79hB/Z1YPnAUjr6Tgyq+OJu+oYqcKH2bOD1tyA6RaebosUJ0vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbtozMzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbtozMzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD9C2C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775136933;
	bh=dAdyP+S58ki5F8Di7HcmKB00F5sQwOq6Z7ZmrrCzlxg=;
	h=To:Subject:From:Date:From;
	b=VbtozMzj35ijecuDnm0Poce+5g4pkqvyqpg1LV+dTOEKQvatf47Le25Va/zWjzoue
	 pjt/JyO2TmuJs0O4MxjsQr2JrdurYv1Frjc48sxCx6Tj2IKvBaUDOk6zTcoigxWj+G
	 wUfo5V7AB2pGcRduXoqygxHcvMvI2NLVRCULLJ2MOPI/il1jNoxEd9sD354C5nQJ+i
	 jxe0copq5QcRF5qcHmizjMs3nfCRJ5d5qUOM37NI2dgkK7xjKZRdrsCGZzjTKV4K9J
	 TI9bfnk9FFrN6kfndy0K1pqxXkLqbvYAqicL5iyz4FQxC1RgHpY6OkwKYGJIDvbBM6
	 EXLbWd6HKKekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF1AD3941D
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 13:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177513693369.25240.18365351745494586015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd12539d537cb51682c1d160dd6e535a83e7709fad3fb7bf380ecd11546760d
Date: Thu, 02 Apr 2026 13:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775136933
