Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D91224B14
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766361234; cv=none; b=umj8RCf4i9IxdcFgYhtEGBMnscZyfLCR6F/JcpkXt3XL5z5kGxCjh6CLG9Pogq86/w07Ak5XmLO3rLbwMk5iSFhzH7auDkV82JjNhCEsko+nZr2tCxlhAyRv+cklPSx6PL3A8J2e1Uwx8q8EmylfBV2s1sMSsnNnXY33G0SyYok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766361234; c=relaxed/simple;
	bh=mbFZ1GBnCraZOS2tFx2xr6FJuXDilseNT8SO4j8SkiU=;
	h=To:Subject:From:Message-Id:Date; b=sr+u+A44B74u/LzxdY+bZHDIph1BFI5R/QRHWJSVdNrSNmiXQDlowyfhegu1J8+AcKNdE4qQlsGw/Cnp9HvUMojZGJE4F+BaokwrhPisbK00+sJqgH8g7IwXwHEYOBT8s7vmdcid7mjdgAG5gToBg9iUMrfQ96D/mZHkJ797UIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQcBDFLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQcBDFLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1458C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766361233;
	bh=mbFZ1GBnCraZOS2tFx2xr6FJuXDilseNT8SO4j8SkiU=;
	h=To:Subject:From:Date:From;
	b=oQcBDFLi2UITfmjV0XpbnlAUNPlbVpx10W/FZqSjhAeOfr8zNNMYE/e0R6uOXxV0Q
	 ZvEBG4803a3pWk0r9blhFcaZMyAbzDNm8KxM17JUQLnd7yKkRTChj32vaoe40kQPlc
	 U8HkI788O3RckXeBfUE0vmhMHcKnklKGTcI0YAPX+MpyXOhIjeUqbjkT3EuoOQ6Usu
	 bE7FyQLxR+szYaHCKd/4CkH4UOLq+SOFbx+r+JqPxYbC6RMa/7P6Vhx/98btT5CRNB
	 FI8qeaCLR1wGm1Eb/Psw3kkAtI4CnaYdifD6Q4/1O9hke/cGBpRLFzEumAa488+Usp
	 gUuoBXqFL6v4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB2D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636123358.7805.7504187464867315654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3e020917725face881a36ac9d20434b2e518a5bcd251326ec2f1c0b2cb8777
Date: Sun, 21 Dec 2025 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766361233
