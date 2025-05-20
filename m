Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3472AD14
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747716594; cv=none; b=QJATxQ7dS0m+kCbmeBwTd8eSf+MCN6vIrE/wkKd319xijq8ivUceLxJ6nCUptjO3oIBb72eYf9Sd9OUEQ4Z0cdstbemNEU6h1iDiJn9rYwcbp+wrKY9Pey6zlwzD5zSmHkPXJ6TrnybZcd8k9cTRg6pncJCvKv6oMcOCr/8Y9BU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747716594; c=relaxed/simple;
	bh=U7kjwYQSKF5GxmZL1aD8055Cdd7hr3GQ+s7rf2ilnac=;
	h=To:Subject:From:Message-Id:Date; b=DGDrKMI3/OcMVcWPWv9mHCuP+KTHb2NJ+AGjn5RIMtH4Pr+62OM/4xS0wqvCfBJwUI5/obYil0SoH6CwwsTunXyVb5Thz8nhdxNSFfr8V/VFgizZLeQIqZhTJ0po3lfqkxXfCiiUqB2hbJ0jZTMs54YIHJoR9Nd8hjiygMPX+Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggCiKgas; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggCiKgas"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90F7C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747716593;
	bh=U7kjwYQSKF5GxmZL1aD8055Cdd7hr3GQ+s7rf2ilnac=;
	h=To:Subject:From:Date:From;
	b=ggCiKgasdrg6StM1O0fTqGpv7jPRPLIbNHkz1/JxBu59/NxUPeI3cLXBtF2vD/q+X
	 iXK8ACZGGaxP8e4QIZz5NthmpANI6PefESYCyLBcDtptm9aAmUQ4PUt0PVQN0fIJ14
	 Dcm2dw2gHLF/V7H9tBZ2P8Al1FsfKQcScA8HxWrGPkYAVT3wWMYmwbkIScsPP/XPN9
	 GS4LAlZbvEOJ5lxG9Mg7/HfM2ZhtecPtho6hCdsdHiW2UKVKM9GefhmQ59GDg3TiSE
	 D488SYRJ8nnT4Z1oECkfCwRU9wFr/QQ7J2CmyGI6iCG0PX2XekL8P1E+VdV6QJWnd9
	 joiT36F2LILrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94460C3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771659357.32224.8651403084630661582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c9edee369cc7c2dd94296bc39270c86853b2c10c017da500277b62ffc77b4e
Date: Tue, 20 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747716593
