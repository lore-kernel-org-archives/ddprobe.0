Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D824B640
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716728063; cv=none; b=u+DJxaGdiI0dsGLC4Z66uXvUVkF+6rkOxgFx+3o8nEbOW4yFTp8GwSDJRvpgGoLHuohMvbHoIRJLfBXHgLuVHfG/ak0XSN3PaZQV7HY4tDUNIXTd0jWSURop+Uycp5gZQaoiul6vOhZkabgI5o768QIBvmZmnnCOl2rJ5Q68p10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716728063; c=relaxed/simple;
	bh=gqxsYinlpid4jAh0M9wAhk+/gH1rkxOcErwJn3uWiWA=;
	h=To:Subject:From:Message-Id:Date; b=Wekf/+QzFgZDpfEW+Mddv0CPvQctX2dalVFDErWOURIgoxeQjsq+tjix2UpkmrhoV2b3qMNGSxp6PrZ/wVW/lfzD3Y03xHc8SqsYG6orTjZOpJE2XHVSgGx5VLczlytFmYKfrF2DwtDtIB/BdKtmqvhjtegJin2EEJJU2Lv0k7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eqf/Ppxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eqf/Ppxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BEDC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716728062;
	bh=gqxsYinlpid4jAh0M9wAhk+/gH1rkxOcErwJn3uWiWA=;
	h=To:Subject:From:Date:From;
	b=Eqf/PpxjNIqlKFpmeuXCdJP8Ca5hpBKWZT+eWDdKa5ceZKg6HYTfMBoCd8kq7WGrO
	 vmFgRzrDnKSwSToC5Hzm+VNlKV5DahHnEysm8zOJlfJrg+VsDT6yqoJrAhPpRQ7T2R
	 dmvxsekQaKBDm8TsrAWvSn0xpDmCPqYwNAhNO01q8pV9mf1YVxuFBZF1GrOQfyJY2K
	 hz2jDMYkctZyAjXhPGrAs4wWdYzDrwlKNesnnny5CBrzHJKUQJJ6JCo0nteTuhSWal
	 OyhFMr5Cea6p4oOpfXhpXm1jWtebCtV0bzGgW9mQhpJa0Vr3+jKzVp3h5c1Ct0GAGl
	 vdRmr61g8kbpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C198DC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 12:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672806276.13838.3280053780375096426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35906b83fd90379887894f3c0e9f31ba420c200522846753db92583f3162f59
Date: Sun, 26 May 2024 12:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716728062
