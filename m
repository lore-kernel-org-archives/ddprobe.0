Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A5C238D3A
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744393194; cv=none; b=oYawQ82Z1+uIFWlhTkm25D9J3Yc5IHBN/rs5E0JwmHA2k9D8JCGgdkBQpRfpaD5a2gRwLq7iz4dwe607rHE7iAGVPn2o/1yPwhs5v/UiLVxh6K3uK8ZTnjDTTIfoCPlOG2XtbH+7YditsWO4bU6vDRtOvMxHk/+rhZsnstBREcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744393194; c=relaxed/simple;
	bh=9SEPpX4f4nml7RJGVOkDxb/Hbutq3RnoG7c83JTfe7M=;
	h=To:Subject:From:Message-Id:Date; b=DdVhQ7dU/8tnXqDYJbXDGpgjuLydY16hldcoN52Y+a/flMC7pRIT2GAwyNvKXQ0R7xWnYCr/JMdiRhgNPFZP9SdVTXvH0MwiNQNwZ9AY96vkraRcSr/l4qix7fKHlig6YaiBJ9SphlFEo3r1kW0517ErjYOuKzHIdheakqZv65Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRQEuB/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRQEuB/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A811BC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744393193;
	bh=9SEPpX4f4nml7RJGVOkDxb/Hbutq3RnoG7c83JTfe7M=;
	h=To:Subject:From:Date:From;
	b=TRQEuB/ZO+O7gFXG0vo3bUSa8Ye1x0l+7Crxep3aI/QSC74ZtNi1RaVB0nmSKlo2C
	 XJmKnoDyYkuzy7ei/Wzn+59LOsmgR3+4xzDK1gOkqYRZq5AhuYcWbBmoubCsiwAAaa
	 XMxbcR86cniMH3tki5JtMebxuwbN35z/QO6+Wj0jQMoOdUaFwbBNBXFmGnLlJv3HYn
	 ajwnD9ST7lyDvRV44veqR3d2kRMBQlWdbdf+jJYAcHQwTSeHE84OSGBGK96Ma1Ejl7
	 VJrGU9ewXJ955J2bH9e6rzPmdFXEqebdx53ajszUi469I2cC8kSDY6VswkVbSqlI+S
	 5HI6yKf+6oTCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A33C369AB
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439319359.19515.14308417832710714502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54ddb53e68ad7764990af502f78dcee4c0fb346dd97de001ef4e47b20a55d470
Date: Fri, 11 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744393193
