Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337EE13CA9C
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741449534; cv=none; b=fvvm6yJDqcySvqqSrENzpBJp+7Mfjeu3trOLBjRJnyP0X3bExo31WioUEfLoen2k+m6ysyO20kRAXPRLx/MYXUnKMGi/+nXTtbH9QJHmgqGEvTa5AagxXsgXRzEIdGYYBW/xIeF/okKqiIi9Y+FQlcNUtQZd+MMRsyWUME/yG10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741449534; c=relaxed/simple;
	bh=76YC1Il31quFPoyTwscQfCAPVVi219RAZxDMCKk898o=;
	h=To:Subject:From:Message-Id:Date; b=hzdwUX7TI96K7aTS3FcBm9Q7DzSgMYqk0tO8uAYYF8WxfBje8oAz4bKTS4m4xJdgizVPtExyttMYMu7ydDfOSDbc3p4PS1lUzV6kzDgxZAcscs4C7t0u8A6szDXaKH/ZbyiryYcbqDpp2qo8Ozz2OPZN9CYfYj7BUbZr8YFiWBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MethpnkX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MethpnkX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB093C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741449533;
	bh=76YC1Il31quFPoyTwscQfCAPVVi219RAZxDMCKk898o=;
	h=To:Subject:From:Date:From;
	b=MethpnkXMbuPTZXHnuIeb75HkB7FNMLmosjV8oakL5An06xQnd+P05z5fyrAgrS+O
	 LR2z0eN1L9vTB8+e1CgRgzWmQW8M10SL1cXSOG+pzA5S+gWREvR9S2BJtx/Q9zsSSM
	 8j1nMupPmFeS7jNedc3ZIsrpBzGn552Sc23oQy35RsUBLB3FROmGOUwxZrceSR5na2
	 w+G0kexEY1rGGfa89wVVbNqxYZDEcPaB0tV24XlXxmMcI20Cf8usJf9W6Ja4rLjpyD
	 4YhhOMiYvebq07okB4OlRb4NrM1xdqBu96Z7N2tAM7okVQbfDJy91ndtKcjWh1zBgj
	 jQDC1KqO7pDig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93973C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 15:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144953359.27818.13479404750754324992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2893dd34a545b7f7da5cbfdbb63524c8b0fff5bb8efb44978e69ea9a587b29b
Date: Sat, 08 Mar 2025 15:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741449533
