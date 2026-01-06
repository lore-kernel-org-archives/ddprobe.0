Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA552AF1D
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767737033; cv=none; b=oszwlJEsZ+jf0Kqu9bQmfkqCG/GeaxAIc4a8xAwzIt12QqHkAPkKQNk3GzzD1zLtvBMFEGWTsU7f4nE5SSFimLsWQEP/N9Gkic/+eA6+0hQrjiZ8jEKhbWTPFTVQ0Bm9e8w+FuxzgGoW50ZfUIRu3m91zuwpKn1PH+D1KbJF2jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767737033; c=relaxed/simple;
	bh=Iy6ElpXH4KGTWU3AemmsMGM45hTfu3O3VdgdlEdehmo=;
	h=To:Subject:From:Message-Id:Date; b=s9ivSurO48n0fhspuz0jthbQc/IpnkHr/ccFRXUk273UdTIQ7ygvx4ufYCZj8f864xSE39JOPWioNewXc3ORq5YEX6kYfNhkj49CYKT0MlJA1hH1Spi6jDZDxFfEeH1c1zR3hl5JHzvFpo+XBq6wnIDVRSrxxkz1x9l4K85nbDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ilc9BiA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ilc9BiA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D51FC19421
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767737033;
	bh=Iy6ElpXH4KGTWU3AemmsMGM45hTfu3O3VdgdlEdehmo=;
	h=To:Subject:From:Date:From;
	b=Ilc9BiA3UFaaZ6sYs7T2u7xWyHApgT2/pXByVEEfOFnMS+9B7B+BEi+RJk0ZLlpIb
	 wHWZ7AO1sbZp/8oXxz5nzKZAghCEpsM7M2Pt/JYeElRHZbO884YrkN+0/kdJ27VB4r
	 GQyGNulRTL8pU7udJtQkhG/xxYQi1gJzhW9hZaWID1m2bZCo2FdKB3dUmpxi4BavyN
	 RvrTZPzX2hr+truOnIIL0QjbvT7yz/ieuDw1EMjmE/dKi2/zkG+ZtA99b6JhfA2//a
	 iVRU8nCvyi17srXbJqB+X9y3kso1fr/4uAB/Plnp//wum/nZK2al4stAvdK7M6Kqtu
	 Bm0G4575QtFMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F113CEFD16
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773703357.6625.9518464536128267627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdc95bfe93ba1a7c2afa25c69cb28aa31f0318526c6057e55a32c26d54c82aa
Date: Tue, 06 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767737033
