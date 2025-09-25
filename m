Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141652D24B4
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758842394; cv=none; b=tXleGFAGZjOIA4QJpkaIku337jwuKArY2Q2UQdn1i3S4lh1V4ciGKOxPf3kw8bZRtQ0z/qr9whKVORDRflQgEeBuO/vLJPXsFQpYXoAXbaS7mMbm3B3w9FTvI9BEB7zJiWgFLJkJG5p/avex4t0q2roxXWIhVfJDd6Etmx5uXdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758842394; c=relaxed/simple;
	bh=uAgpj/C0/sRh0X4NjuTvJ9ervDI282HNX9CyfdecS2Q=;
	h=To:Subject:From:Message-Id:Date; b=uSK8diR5+KZmjGBsC579J9OHdV2v4YBGnciR2E7iTt7zWbrkZ629WleNhdmunA2tltoIvVBGktrjx0/AXmjpt2Ey3RyNrdwmGqJ823x4ZpJRGOCjoei0HXDZXU3DyvUXCEks/IrQS5WooOOCUY6TAxL1fXyCl6zobSxrR7QzLvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmKy5s0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmKy5s0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14CAC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758842393;
	bh=uAgpj/C0/sRh0X4NjuTvJ9ervDI282HNX9CyfdecS2Q=;
	h=To:Subject:From:Date:From;
	b=mmKy5s0Rha5UyYH/e6GRTV0X/lpitNd5VZztRaWIbHgMPLcLw86be6QTcDqOkdkGP
	 WjR5hz8JTYDjsE0WFztPHus9IU1OLsAONB5RZeK8sA7XRPDe/yhTDi1e7eb1Y7hmph
	 tJGHQQcTl0JEHlI15SDlml4cTO+p+g2PsmywXVVry+244klRhdI4IFqeYxoFIIKxOW
	 3FuYCnRNFkoAdDUm857IVvcYngE0gBJ8XwlwFqJcjZIp/S8JvsAm/1GDm8RjWckn8S
	 PuvPuyf24KF/5f7b+oUu734xkmHgpmAKYgGI8DgLNesejs3E+bv7D/K5VR9SeMeeWl
	 +abrKAXBESVYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91965CAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884239358.467.10831159239527856818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b78fe4c3d8ada3d2b06c507aad858217f06bb2a5f8246f6e8c39dba1f245ef2
Date: Thu, 25 Sep 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758842393
