Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403BB14E2CB
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717615643; cv=none; b=swQkYnTAUWeRuzxkVSVNMv6XVfTuYcDVptSzVNdPFqCYOepJ+OcVPWBMEhnswXm/P75SKJ/n6T4ZsZEy2FAmfFKsjGg+1hLQrLZ2qCkfgGlXiUyM1czmE0UV1kPxXnd+o/G7ZEa4vd0WAI7faRu3MRxG0tlAOa6RSlb1FXQuccM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717615643; c=relaxed/simple;
	bh=xn7T7VQJNyRjspnLqjU4kNqco3EnXy+7Ij8PXvHQGbc=;
	h=To:Subject:From:Message-Id:Date; b=FpOLITKZVeWHtj3WO/ON2R1EIvOxVNwEnZ4/ceG+N7U4GNoVYfc0x72204Kn1TO1mnUgTVKmhXv6c7gRTYgExH4K+aCmqU1++0far59KBIF/lzGEau4o5ZUvcT1W5rHSW1+pxOgmyxfyoJpyn5bU4hmXeDAz5vLgtHf29SZy6uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHMY72Ph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHMY72Ph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85DCC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717615642;
	bh=xn7T7VQJNyRjspnLqjU4kNqco3EnXy+7Ij8PXvHQGbc=;
	h=To:Subject:From:Date:From;
	b=GHMY72Ph8wb9SMVQckOlMtq1jK8UBaX2d8KjjytIPLarXotG8RmgEyPazFUyuywJ1
	 i4r7tJuOtGfQGxmJUVR/ZQwD23T1gLL/Ab1INHcaSr+ywideRnkgWazp9tZKyBYKm6
	 gzsuz/ZS57qdHTgMmFxlU+W6i6vaJuMClBKAfgC3KGHGLJDukO2zidjWKI6ybrterZ
	 V3GTvCLoEg8b8r4ex7TSLghNAkPIwX6x1tAMZbTOpSM62mJNqmZ1VVMTI1TK5ryb3X
	 BD4GHyh7LRJtX3TUn5WykRtSkW3P8pzAKjZRq7heuMYRBMraXQJitemTPyCMy43g/p
	 GFMc46GDorRsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E14C27C55
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761564278.8898.1463211120131133867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d67eb318aa189dd943750b56d2be280ec3357fea98edec9cdce8a5afe13db130
Date: Wed, 05 Jun 2024 19:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717615642
