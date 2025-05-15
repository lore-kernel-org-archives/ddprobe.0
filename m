Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CF0DDC1
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747336794; cv=none; b=j4Shap5pQopTaPNPFZDU/k/tkZUwJZ2mMiTHJrAWslVp1b57+rJeoLnCpQy6DKO3/EeauFFkRcQR6dogA46Oewju6fxjYWlNzoPQGxMV5KgUpfGIPJ3jNQgdn1J1dL3cXXk/MDbkwAMCIFvVlbfHDW59KgHZKZIPLru/XMeh8yg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747336794; c=relaxed/simple;
	bh=VFB6Ucg9qXuK4l/G8sKZPCfHuWS6dTSs10T9t00PMzw=;
	h=To:Subject:From:Message-Id:Date; b=Q1BhT+sF7qdRuXJi1EIc0hRcLYasZnlsQDG5+J2OTsIT1RQMCjQ7UY+ynfG4rmPaJtHDPK8NMxBKR7IEwnajQ5E7arYJWYvxtZeI9t9qPZHY+x4dSs3dmUgMwVkkXh8WEo04goBMSKuAwxIGQ3MWcNHnedFzerkdfpgqZi53yZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dL55oUxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dL55oUxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA145C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747336793;
	bh=VFB6Ucg9qXuK4l/G8sKZPCfHuWS6dTSs10T9t00PMzw=;
	h=To:Subject:From:Date:From;
	b=dL55oUxm0Y85KN0oJmg3ddebbu0qqJShFVlwtjneL53SxbjvMCSJS7qQdlhcs8U64
	 RZWKZ9oHTHIV+DLqD4a4Chd0rXuJnACuuEtThLNVO0jV550yUfF58kFsEU7Qn22xrZ
	 9Bdda3LVhBwrMGfWwntU7PjZV0E9hm09uXpzOKSM0SoDiLROuqotsHAfEoHmOfdkKz
	 gHWKUHl6VPK0CYUZcuPTHWOZbZa9eGXzxeBbATf7vD1+4pPbD0supLLjboy5DGEClt
	 wNPKDRXPIToBjW79vlQCtbSj+XrS6xdEsVGWW/p61/zGMlh3nvZiXbO7KUAfHPWzIx
	 reciV56+W+WYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E60C3ABDD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733679361.27912.10905713084416535592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8693f2751fdb8e57f87975e4053e472500d73e7ae34eded00985b8666a5b8365
Date: Thu, 15 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747336793
