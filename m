Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FD120F97F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737648954; cv=none; b=BheuVtnm56dUoa0h467p5OmZGtIGwKp9FTyR68J26szaviwia/N/ZjYKzUwPNv0LQKU+PvKfOJr4JPkieMFEt66LWC8/qpSKpQOfaVeqz42NzGL0omZwmeMJZ11EcJbmdr70sPlPKXHZoDSqdfLbF4iW0OkClHTRSJf1Jl0gm98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737648954; c=relaxed/simple;
	bh=Q2B++V6RjHACAFPoYi8l5OTHSsNsdQJkUb8dLVF/Vkg=;
	h=To:Subject:From:Message-Id:Date; b=Jv/8h0Q/yRwtBnPcAQYPErCD0ehOg6G33UiTRmbFPoH01zxzKxWlCMM1gvqFuv8NNGMk1Go5eFKvk5SKe/vL1cpbwst23ff4SmV7qXuKIgo6b08LYpd7csQr1oj9kGiybbzrvbnzVPdzGtjrr+whPInOiO2w9345QYbEAlPHavE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ff3YryIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ff3YryIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE105C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737648953;
	bh=Q2B++V6RjHACAFPoYi8l5OTHSsNsdQJkUb8dLVF/Vkg=;
	h=To:Subject:From:Date:From;
	b=Ff3YryIs7eK3aoHjIkF0V9gK3GQde39aMNlvrZJF0iq/wpWvoZRqyKMg5jKYRkf1L
	 TyPLWjSAbwJXKEnvzp6/1kB92C9vFoMYLYEAzjc5OOxDvIJvKxkkFcrqhBgrpd/7JV
	 8IX/Jp6+CCs+eYa9oqdUiGo8/4K8yn+eF8ny7kt2XSYR2snYwZQfPfcdm+GKvVgFmJ
	 ZnAfZOxF2C2+1Rij93GebbQzjogB8SOPoxtEh+g1kqFsCBume9gQkw83h7XaSe8bAM
	 BscT3mPhxxGQUPTCHINhdgxm6xv6CTNL8X7MGHA1ybJJoZJwIlCovxgE4279qgKpdu
	 LYtS3ceZtJ0cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4481C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173764895366.29830.3771094068668082004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113690c6e18201718b35f694825890587b63f9f7fc3abd19148adae5a0313501
Date: Thu, 23 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737648953
