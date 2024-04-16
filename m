Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BF55A10B
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713259163; cv=none; b=FFopGLHX7HY0k/0Ha3S9vI/An0rLT95bs33XyycWDWByrzG5shSKfHsXNqWfqrzsw/XAaxkqvtDDn3FWGxWlk1O8ajoWHljkD8HiHwNGOTclJctsBKOUcGNG6x4IRx2Tt7GXb/te7RaMZVWFhizYuXWG7kQngNypF8BGFQsBRIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713259163; c=relaxed/simple;
	bh=tnpHW0wwVwpVW5+fwuunIfPhcAz+d+yx0GOjhuPy/4s=;
	h=To:Subject:From:Message-Id:Date; b=EyNJc+9ArzaiZamcWgOETZhT8nGD59Im85wgaIESCmncr1jsJYpWzhvl0XnfXD5sTZRatqB55WNJfZGG4HAgOMBpGeONVsWnh1qtSQqYCXGR9e+9K6GEFMNztlrBihipthBEFMdJwHp4LESmBj2ofAPCLXGpzRJEtILn1T4Tjms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=demDxE/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="demDxE/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C9DC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713259162;
	bh=tnpHW0wwVwpVW5+fwuunIfPhcAz+d+yx0GOjhuPy/4s=;
	h=To:Subject:From:Date:From;
	b=demDxE/ffZQvNLAy9In+yog7uw7dzjm1IBBgyFt5PPmJQ8sZm1B6R+Fq/xOUrj3Ft
	 JKoqLHDYeZjOH/+YzH9asOfiWB08LzqKIy9k7x4DCt9AF6Xiak5wB+jGG8A/Vx60t+
	 YMccglSsvhuxMxlLqb78mHkWHetDQI3zm0riEuRYYHIKdHyyfrcWXA3njsezh23/fV
	 Gkim4Cfx8HV3/R66KOQmHEvrdfpHfc4SbNDJxwkZwFMd/NilAEr/zQmmivhLQjWo+K
	 1fyy/NEg1SzptpF7Rk3kp8zHuSBsPZkYoKAuoMeEyw5JZ/i4bHspam/I2NnSzV3wOF
	 5JYzLcZ6y84zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1006C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 09:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171325916278.25274.14572441391076997950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a75f699976b26c181da1dbfc7c88e6f330721910b036a9be1da309fec962d2d
Date: Tue, 16 Apr 2024 09:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713259162
