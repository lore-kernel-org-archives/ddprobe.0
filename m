Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A72481D5CC6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764409974; cv=none; b=Ah7nE1TWst/Snm6j7wXTkdlqxdvpYZFJRHRGAag1KA4R6AHH6sHJpLmX2VRDR5kykn7kySREzstb0iAV7hDKoLDLc0mG0mv+/K2T0BSCDpGbi2xiC4VKKERGdENKW1nv+sjbwHD1BxeHK+UkkYI0AKjELHawsyO+8DI3VZrbDqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764409974; c=relaxed/simple;
	bh=bqUs6CN9l9fgoPoR7+0L7vBTWtiCXMi43lj/yGJKnN4=;
	h=To:Subject:From:Message-Id:Date; b=gEQDCZEF/bN9c+rYDBUJX7EAJ7LSGrKxx1w1+2HAD8jdMR7nM3NcoddC8hkVvvkXRvNttXOsQFaW4YEvIwmKHiN5WkBlN7V9BIG1uQMj7f9flOqh+Lu2P0ybywKuSRfE8039fp5U34hWKp1sex67yE335Ow2wV/U78jOaz497+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPa1sVYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPa1sVYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764409973;
	bh=bqUs6CN9l9fgoPoR7+0L7vBTWtiCXMi43lj/yGJKnN4=;
	h=To:Subject:From:Date:From;
	b=XPa1sVYpALmaBApmMB1b/oVmx6Z0CZ7PztsNUKeOQbdt8gik36/FAVFJi5hpZVsd1
	 3grWtIPziX7ZhCxuO3/SH1HHFQ7MOl9qrLYgjA0OjZuBHKU+Aoqdu8brLX1EhRWr32
	 C4Mv/p+Mz0beGnb4uBa3j9NAj+IAWX6YOV7av97AaXsHCXWIv7EjythSHpnUyo2lSU
	 +yOjbwZqpqgJFBwQqrnSF6syoJtidk701YJCqkl/AUKrh95wz+oUiBJ1OSQZ+bEbpm
	 lGayHgBl4yzLDGLKmE8/hv2uDrxYNBP6f6QOzbkp3g2lgo/R4dAk976FXrbRtQq9+a
	 GxQRqD7kKtkGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93852D116F3
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 09:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176440997358.26205.12801013086671670185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f4eb2797c4c17b3b9443e9c8c16235bd602f791fc680331a91439ba48f849a
Date: Sat, 29 Nov 2025 09:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764409973
