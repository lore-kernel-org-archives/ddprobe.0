Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2690D43AB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728108354; cv=none; b=bfAo7yY6Ih1egJ33zLLA9XFu+AE7dfskDvseMoM5ECx2RWrbhn5+09iHhkibYcKFMigsasRDhpLh5fRYYZTQ70bknItuebg8F2n1QvrkH2YBOifMPXXRHoLnzcN4MhJI4g43LHso8RVKhBsqJx28QLBhiNjxpN+2SlOz7egeTwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728108354; c=relaxed/simple;
	bh=WrP2lzH3V9y1Ig1jWWCuX3iaoNVS6+cHx6oGgqBEqfA=;
	h=To:Subject:From:Message-Id:Date; b=BysT/L8dAAA5el7A140cXT9T8g8wXuFnniaWe6BN2OV/hemw0ZgW05ealz4HUAvY4lf3QEhs9bihuWffDwSa5/ImZ5qzpXywpANSC4rqpakXag+DjWvbM1qZZj8hIc0wg3mDYMtsu3P24RfbmUPJ+nL9+R62xKGQ1/7DAOTjLN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psVVbfC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psVVbfC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4747C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728108353;
	bh=WrP2lzH3V9y1Ig1jWWCuX3iaoNVS6+cHx6oGgqBEqfA=;
	h=To:Subject:From:Date:From;
	b=psVVbfC6phFQr4nahpxsI5/HKvJFCLupKYKJHMWH05B0jodxbHBSzPqFoeq7pDFiw
	 20AglEQRl43/dI7fG6YmN8VZ1QEzIqICP9df8D/INwHYltmpldWMlxDXIuIFl1B522
	 9akU8qd5Ufi2nbKatMqc2j8sChRQT50TtFphkwSLv1E6ZKZZUOR8/HiJvdLMdwMdrG
	 QeNf4sdLRjjATTnotjFw3Qiie5//Tbfsd1nMtQp0rozCyVnHEh9ejQyU5GeEBWVwFm
	 TnUsh+Lh+NO7cM0okAj4qP6rlUilVJO75zFXSvbLfwidqg5WG4D7I86Cw8+VaDYmMc
	 SS9hjWVHx2UDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D846CF8851
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810835360.24184.7721345179704029940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6820530f75dc2077826dd0657e39219ade34d449f8102b71d93c9ba566cac2
Date: Sat, 05 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728108353
