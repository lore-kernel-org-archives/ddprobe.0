Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAAB12E7E
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714575143; cv=none; b=siQZ+i7EnJ1hT8RwJJGI6atb76ov/yFrx7ZU2z9so2wkUfcsUNsFNPviWo/l3Kmq0JZyc3EGT7j6p48OVjLUGlo3eOEn36X6+c70Fq/VK/rNzfs95+WrvUbw0sZtPfJ5vO97B0qbEF1tLkJg6tFHxMSvDHD9//Mdwem2do848Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714575143; c=relaxed/simple;
	bh=qybczK1EZnPJ6loK9k07aRPKWpPKc85fvCL+yYopNuA=;
	h=To:Subject:From:Message-Id:Date; b=nBwugpChNOejrC4nVEw4TgILq8nySjxu6zt+1aJMSFwnytr6YLj/uvgpsV5RN5cfl1atrnU+5CE5qgtW91rzjKiqTXZ6SORE5zSeDpPIe9P8Frc1cTRX6RYXMudBrZmlCEqy+qP/qN9hoAY5jHf89HiCL9yTeVgWZF1WBbW3n1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgOehRAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgOehRAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDE31C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714575142;
	bh=qybczK1EZnPJ6loK9k07aRPKWpPKc85fvCL+yYopNuA=;
	h=To:Subject:From:Date:From;
	b=lgOehRATesRnXsKELQkwBZQSA77/9ZPoWx8GnkNjvfrIqF+659y1YLrlzXovibx4/
	 k/gjjNQpfbtxd4/Jw0ZGCEMfvWofDO4WQDj0nroUq/nHt7eMJAp89rKBGh6gdp+htu
	 B36NgwOoljTFGvwZl6vhnURmbiKcYyVXBG/7kT4oQdFfVCdWf84OFmZ1d6DABwLEZX
	 5REnLm+677/cuYbZ/8GXCHeDk2pxotpoGjBvN0JyibmHBm0R9Ryb4ewsQB7ytzMXug
	 jcJaVrvK3no1irpyD7lftZtf3jYc1vs5/7WAjOmTNGhsyoKcaYvSXyWWRg7w+n9NRd
	 ZONQDU7pBeORg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D6EC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457514276.8183.16663743098753748308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8601265d48a5c1e759b83cd7e01656050bb6726ebb7f74aa30c9f5781ccc08aa
Date: Wed, 01 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714575142
