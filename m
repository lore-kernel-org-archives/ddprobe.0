Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE1025B1CB
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772156094; cv=none; b=NJvh57thxyGmJlabtEWS80AeWBk/3CmuzQKfqSTGDUfQhSp+TYG2eVpLKrrn+GlOLQnb5Z1vg/dsugrx5fkmIhJGEaaB697m6ModnHCSiqo6Slq4frHOdcBlEvFDoSVrcL44eWBBMDsdp4BQHUpcdUyvFC3yZ8I2fW0mbXu1ibU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772156094; c=relaxed/simple;
	bh=j3qD5QIHTXfMCykqd49mocQ2vFwXqyPs3awKxD8vKQs=;
	h=To:Subject:From:Message-Id:Date; b=gkjnyYkaqouoNG26v8yU9gjkhUo0IDAVM6MG0yK1zxrLunOYzbDSlIE4rBFJPQm0mvQmMUfzH4dHoHxs4EAs+Kya1eWgxvhLSrxU3de3dBpRwdwDyG4K07Da1nqKHz5YZvXvhsCvsoAoWxVhcbu3dHn/j4t/oSBxAxYUdKQFxYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9DPwvv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9DPwvv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2644C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772156093;
	bh=j3qD5QIHTXfMCykqd49mocQ2vFwXqyPs3awKxD8vKQs=;
	h=To:Subject:From:Date:From;
	b=M9DPwvv9EjACZ2/uz9S3TCicsMzXSgviutLXGmfzffkij3smBIy6OmjYrGkdBm9AX
	 3ysKtQ1Lj2cDk9P+7tjrF9EVWvmHm3BjVQTnw84mjNZgMkeygkWAalaIwDs3FCc5//
	 LUR/bTREmHTLFMTC0CtIkNIzdKwbREiE3+uOZhJaqdubN4y35Kmb6yPfTpMbvwyG0N
	 p0ue1Kb4Hx8yPjue0AEm/EwCl04tvDnYRtpDYeHaU1bi7bdtWbGKadxmK02N/Vc2my
	 NxQ4JiEKV+o3zANT7SndhhgvOWxvBewyyEpPoXaE3ms57pnEXYRKSg26q+/ZF2W64O
	 bVzclzKUwIJXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13EEFD9E29
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215609361.24829.4748423193239834321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 195c5c12ff499ac0c85e62bc4a8023c0e9d866e040250740783c2566b8735a71
Date: Fri, 27 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772156093
