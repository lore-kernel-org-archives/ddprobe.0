Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEEC34D3B9
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762035594; cv=none; b=N3FQCVI2K0SZZfLtw7Sxr06l4faxrsgm/jkBimRcCLS7nlfCGi7d04dObUa4riW35RSmUk/nTJB9zT69CvN0Cfj3yEP6YrwcfHpy//WlubT5+3AyzZiS4HJcK+16gVV2w1+ez5gRPOr70UFl/r8E0keXHUM3Eyr0HYA4Q59gc/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762035594; c=relaxed/simple;
	bh=nFYxMNTQCr5du+dU049IwY5/hnyxYQyR/mNR3X/8U04=;
	h=To:Subject:From:Message-Id:Date; b=VmmaiT8xh8AZvIBtbm6QqhB8meP/HwUPXZRN2F81OZPon30mZkioiY89YE9iX9PQJZIk3t9oeU0pSpQZCvNZs9t5AGCYudY6KGnnagw0swPBvZtnTejWzUMgtRRpHCR5mKkXJkXT12PmjnONJhU9cQu0dS/Xy9UKC+t4GIv0hOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsdRtFgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsdRtFgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84B4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762035593;
	bh=nFYxMNTQCr5du+dU049IwY5/hnyxYQyR/mNR3X/8U04=;
	h=To:Subject:From:Date:From;
	b=XsdRtFgvkRsaVWy3cRRC8WsZexKRy1lI0hnU+yCRtlpDkSDVT8L/rIU37+ypnVXvm
	 bZwBeIDTyg9D7i+Lse0cnXey/bWgAq7Jxwo+z5BcsvWH9EpSRy3YoDnA8ckIHynFD1
	 zuDPCfGXjziq3ooXYazwj78updgm9WC+YdzN2GYO+mVvANOoEqk3CGVnRK+XGJe6cL
	 BWNr6VQ5fpVhgActdepTtRX9SA7rp/tkeEMjQFv/4WYleOcKWTGFIoquQpshK6Lhh1
	 Ez0nWi78o3URr+k2UT8jWWVR6InjVbjsrBh1keL+UAl8txtzv103xH+y/ULRKswTzD
	 Xba5tc9REW/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F7ACCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203559358.18542.16052182508848261698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419a16f47fa7f0d1557214ccb19aef9bf305861c658303ac1b4588e128b64c42
Date: Sat, 01 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762035593
