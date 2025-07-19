Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4931F1EB3D
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752917394; cv=none; b=Wo1TGgPZxjDJU52/oUTgGGoXlvRtrHrpaEelHzqVPnp7dmGWR9YeYVwqIG7LrllyGfjKXTJC6I4Q5b96sWnlW7titPDnxez2FPwZH8D/aYEjp4/AMRK3gVKUILi5guO50LptzlslVtFT8xSjwunJnFM1lvp2NXIcoZSB6WpFYoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752917394; c=relaxed/simple;
	bh=imEKAygYlX1dFX9VXw0KUzCbIuTNVfYwHYohtfeK6Ag=;
	h=To:Subject:From:Message-Id:Date; b=DkKppu1aHT6EFTJfU0MezmBBu8zrhMI2uJxSvIclxS/d+mtZ7Y+T6YHImupBaiv0Szot778PUEqdDzQr2UtBJH+zr1bKgaqqqvSj7PcWc+7aApeb7IPZLGMFNyMx8wIXRBt8DJPSRfgPIlMBiF9nqTaGLHODbNutfekWkuLWl3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYhGdorX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYhGdorX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752917393;
	bh=imEKAygYlX1dFX9VXw0KUzCbIuTNVfYwHYohtfeK6Ag=;
	h=To:Subject:From:Date:From;
	b=nYhGdorX6rcIpDBggmC+qXwRceCsn4EuLr2ChKw2B7K1vrRe2ZwWbz8EmqyEMSw+A
	 3lEFxI6zsZ64m7QepaXVohjK7LF2eVryYKa7iLhzXTZIyyGlmDnhcEINq99rJG9HXE
	 Wq3/RDn6tI3/Cb2anuqypFR6oLgNlVahwLpIuRgiVJuL0AvLGIesR52/rt30ACvwON
	 3la8WyVpLJmos2wEAZznavIEZKaeUj/QGKRKefuIIcZhZ6L/+Mj2PK5scWerYZ6eq+
	 WfZ75hW4uJrAhtluli7uShY3LT9MclzgZ1UPScAj4ZOjSZ7OKdxFNAiVignTKIrURz
	 yQDrtXMt/9qkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DACC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291739358.25993.14066121964633088057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6141e48312a800c410a5ec86dbd33a7188d253b0e8c032ecf6c3dc5e8d835e9
Date: Sat, 19 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752917393
