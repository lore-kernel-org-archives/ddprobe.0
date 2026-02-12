Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE82344DA9
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770895494; cv=none; b=JmXQplpLVlSk9hgaXycqA1AhLgfibHWGxVe7LAygkt6vrteZwInqWwYXVrztJwysGa4jEsyUPJtmvXX4C6Y8Kwrp+CqDI5EXRvjpADbzY0+ICUh9msSWr14RZ02pwR/csp6kYyBmZYuV6tcvFO+WsmXmtvzoxJi9bs0d5zmfG4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770895494; c=relaxed/simple;
	bh=bHU/D9BtI5VE+C0iB9uuIaz9jRbVGp72rvs2fRoSkvY=;
	h=To:Subject:From:Message-Id:Date; b=GH2454K4atIk57QAiFoIH15E3FHk++OJpnAyDPFthu4WjQQmoo++TzKMc9ifGQpITL+4QNJf6XpQuLwzWdmt7q/nsisDK68YeSbrvBhGYhJd28RQB2+uWb+UwcBPxFrI3yTjnFI9qY+TNvYf34mFXa0bp+FNfqPdfVQxugEyGu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKHkFMal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKHkFMal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90BBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770895493;
	bh=bHU/D9BtI5VE+C0iB9uuIaz9jRbVGp72rvs2fRoSkvY=;
	h=To:Subject:From:Date:From;
	b=IKHkFMaliC96WewII+SlX3U0z5Gju0AuX2BRgwpR/MJ8qH/DVReyWJ0uA2rP0svbv
	 psh04Xfz5tpEBLRGNxjE77rbOXogn9bRFhEOyayeyG1MKav1TLFYK+ZF0vh/rSQy+o
	 mke1u7Ew5KMQg7w/HvhtFJYBaajZoaZEeiicAsTMrT0a8Aq4tkKZEUHjFLcfc86E6o
	 Le/+O3S7lTXzG5+FndBMHoS+vLYst/GmqwjOpP11Mx3nh+g6gaZMgmn3zvgggHpKEU
	 X2C6xJj5Qfdebvcd5ZPPZkMPhxAEaAROuIEGP48UKG9uV+88IhqT4+IDHf/Ka4B3Wj
	 rqs/6QOw9s9uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A66EB48F8
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089549361.13567.5825760083575782453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35da0bbdea7969b608086eeae1503f77bda47fccdffa1aa5a5e26bc9fb27640d
Date: Thu, 12 Feb 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770895493
