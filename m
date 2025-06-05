Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A35220D4F9
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749161394; cv=none; b=Ac/f32Hs3B3PnZVxRSwnGUan4c4+dNkNpT25l1Ao6QvGm+6LrMrbWuEXw3hQ3KRVwxIdqskDhrjiat0RK2qMNnCbmi7K+c/hcP8gE08LWPhg/329C93D6KFY58p3TFGnXBUnHWUac6WbMebGhZEBYWOLidP0z/rZQnZsQ/eo+TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749161394; c=relaxed/simple;
	bh=lbowDz934WiGBpfeh/0x4Wwm6teke/yUSekMz8ZKr/E=;
	h=To:Subject:From:Message-Id:Date; b=Yd9bekLim2AHvcVh2QaNeJ/CKEeyWBE63Cy4+9dp1cmeSH+It5sxfI7tXeVkHz5pz6ZYPAW9sJiKfRH9Tq4bzeitWC0MNugSjSxM4tg89XCp5r/WWSQyMaoexaKoNbkc9vn2ODUwo3Kjp590zW3sjaVuNOMm7y0Zfh6xsTAbPo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoGF5gt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoGF5gt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA857C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749161393;
	bh=lbowDz934WiGBpfeh/0x4Wwm6teke/yUSekMz8ZKr/E=;
	h=To:Subject:From:Date:From;
	b=MoGF5gt+cdWIu9omCR6Tdbkm+1PZTuSC4l0NQXl1BEW1aeS19ZdWMXYU8T9ZiHdvU
	 6npfUH2b/wc/mkUpelJf0H7L32o4gVz1NycEMuSdwl5W0WE2md69u8hR4Kl2qk3zeL
	 HPzsurUeAwYH/z50ofx3uBixnfPI1bqVTNt3aPQPGact58awSOqj8sAqt52IzFbjrP
	 7FqLRPx8efuoeFBNhO4iwvkUpkWzavl6cqkVI8OLqJsLN6qv3Ns7nh3id5qQ+a+N9z
	 Y6bMowcQGrU13YQ+1iAu94C0TOrSfNrj7CyMNExVtiStEexi9yA4CPgY6zBwJ4fR9X
	 qorHakYoIVy6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F79C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916139358.27863.5847576211730963816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ebe3c165b87b6a4a9e07199419043ba1d57cd4476711b236182c6d9c9f89d9
Date: Thu, 05 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749161393
