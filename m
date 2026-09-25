Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FC32BB13
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790299834; cv=none; b=Zj7S5wkms69wYcsK0aJcORbVkBVZoOOMm1xp0E5eF/HfEaHIf39WrAz8hVhqJOg1euwBPEB8vnujHD2HxM7VUJWLcB5elgxpLvpzm4ZZ0H3cmJNRDoX6zt8C8fbNL57zXBhPsJ8OS9a6KpA8sfo/nva6PxlU4MH4jhpgIDIpfJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790299834; c=relaxed/simple;
	bh=IAwNjjafJbxWQwsT9xwdmvJGG5GXyhDLxkZcKCZM9MI=;
	h=To:Subject:From:Message-Id:Date; b=PIop04CXJhRErjNcEijYjcnkSNWpRmSj0wrZRmuwYNV1Kml+1bi60GXstVpJuXWYHcfB1B6NAzJho2XBf38XglZLERfLMzk0jNFPCnMfpJxp2Nk0U3a57GsAZssKVyiyotFqngRRuAW0B2GfklvM915QYX7MvvkLeVG3vFFLd3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIw9HGJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIw9HGJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97C8C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790299833;
	bh=IAwNjjafJbxWQwsT9xwdmvJGG5GXyhDLxkZcKCZM9MI=;
	h=To:Subject:From:Date:From;
	b=lIw9HGJ1pv3mEjdVKsMKkr4CrvBECGpKbK/csLpZShOV4jzQkybUEc0+ujEJd57S+
	 LG7WgOo4GyUnl9RviNcHy2GljdcIX1O7ZZ2wG47TL83rhhGPLtiMIKDisP14tWs7zz
	 C5i5hn0GEPDfuUXDBGXdKfxJf+CiYCOQinWNpUu572vjZdZnXUVIruczKKwYNF/D1i
	 5nylmB+WiIvvC4pYnRceZ1MvascaAkBaZ3pF1hC1OTr3reG5edRkPUAlY/NXqcNVMN
	 8a78QAqJPGt6vEUi4/vHy6NujJLIRhtuDF97mHEh2+d860DeCNlO7IABHx5fbcdo6O
	 Fn7nvtuKcmu8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1B7C9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029983369.28773.6090606772098735819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c68a055a21dbc773e63bc8b4259e96a0d1295149df84de55aa4d5846e344a13
Date: Fri, 25 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790299833
