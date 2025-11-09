Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2659A199939
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762664394; cv=none; b=jyD/4JzGrfHVJMGGNowz0GPRKriBwl13th3kqontt4ll4YFiVOPZlQFeDTtQpCt3GEvF6zpmTRj1Ef8vgxCtK7pYQHwqc5uAdtd5/AYzBVz95ugRFGM81dQkqLSNsS/SprleQgvam/A1CLW8YH1URCdJp+IAaDJIoQhOTd4MlFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762664394; c=relaxed/simple;
	bh=ZEVfkRYRqSzkzzDop1Az3Zd/Nm01Hl6vu0ZZfyk4MjM=;
	h=To:Subject:From:Message-Id:Date; b=FvbPng5gMsr/SA+w3kLVuhERSmMksozAPVZLMzViOXE+hNl7HRQtquWZ9W3MnN6Zn+eDqhg3o1ephlLIsqQGWWqH3sB5+AQLxFIsZP5Sy2Vv4incPMpE6x+gEr1W/jXDQBnWoqz8B+s7gIC9UkRJ1wgEKfTCFYvv7h5Sa6ljX+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRVvOhZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRVvOhZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA31C19422
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762664393;
	bh=ZEVfkRYRqSzkzzDop1Az3Zd/Nm01Hl6vu0ZZfyk4MjM=;
	h=To:Subject:From:Date:From;
	b=nRVvOhZGZcnDJWtGo0Lc9f9zfFD9AvcOjsSTZDRIvfA6Q0Ip26WMnEDNpuzAxYH/o
	 sGB3qS4b+CO/afSFWwnfKqiUSgKxQ9PJmh7+sZ9FKfNF+1IvXc+h37rXow9xRlOxbs
	 hQWKPWud81Y8U/SLlIK1OQzsisrIz08J9MffQjHoT52EXdm8lnM5dSf89vxkfMEUo6
	 VGiJj/1J3PVoy43PcIBYV4dx5hm3Zx0fxeR/KEWWy2+DQz6i2gRlapu5BaDa1s2Hwx
	 p+0CZoAmeJA4yTa+5eThsTPWshlc7CG+5/C/aQHaXy0ibzDzj1essDB2vttrQOGxUb
	 6ECJELrGZiF3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE73CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176266439357.10353.15445691875492323685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4843c4e3a17c16498a5583267582d6403385ed4d3fc878b8bc6f45303d45365e
Date: Sun, 09 Nov 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762664393
