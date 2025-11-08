Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FAF233723
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762586394; cv=none; b=jNknlWOu3DXHeFBxlOd4VQ+iM781vPaL6IL5Hj/qrmObmEIc4MkHoPRljXzLHK1V3XM5MHqwlZ10O4+0IDAsk7dNUoo+OFWm1YJJXgkimyExA0g/RSRJup1nMFAX1k05jo6zN7Z7aqDMjyjvuJL3XRqcUkBvmobRcPrAEZg6m9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762586394; c=relaxed/simple;
	bh=s048NBljggpJbk+HTYSGjZIuNU7rTgtVP4TziX+qJa4=;
	h=To:Subject:From:Message-Id:Date; b=IbEGGSKsGtnQ31tH77PLXyTsnoppf3FoJHp6muXpvwTmlIRAZHxCnkxybeec5hjlJ8FWrmm+XceBLspKSzsPNi91AGmAzNSdDGeIB918mtZ8yjR9fDf/5LVWScv3x5+s+IOUDUMJF43bhXsoBjXKeALYMs4nwQ3n+UK+sOQ5l6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPwx4/NX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPwx4/NX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A52C19424
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762586393;
	bh=s048NBljggpJbk+HTYSGjZIuNU7rTgtVP4TziX+qJa4=;
	h=To:Subject:From:Date:From;
	b=DPwx4/NXTwMgEscRqGphnW2SppNiJvkjduF9B22AVix2d973G9RNczVtQBfg8Wzdv
	 mb1NK5isuv1W9slhosux7vfi3mmVfN7UGEeYKaBZtM0LtSU88afhGcTxK4UPFIqs5E
	 cn9Ho2kYn8dL3Goxsh+jbxf7Sqtsj9hndueeHnp5GwfZsbmDGky2npVxoSReMl3TIY
	 SXW5dKEOlD5BM7hVnflScVUR2mmY5kJsi2GTtwAxVXHs18CZwoYW18nrGZQkypEcCt
	 f7aM9Gp4B6Lh16aFMI0/8vuWs9azrSqX8we+VnJukSVIch6MXLUlY8dggfRssFjyGx
	 5d3WNWjahJ0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974F2CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176258639358.6267.12149165199988961127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c84f37175c7a40b643abcda891ee57bebf40629636294eae97f9faf35d3ca9
Date: Sat, 08 Nov 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762586393
