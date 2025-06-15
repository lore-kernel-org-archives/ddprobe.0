Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1504127713
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749976794; cv=none; b=V0vA6+MF/K5/s/eHQA2ZnztvWVXGTADO+wkNNhZnvff7/2W2WbYEExhD78hC6fHkl3RetLUnHk5Bu2fHGkNaH8CRZQp0UozdrLmma17bkQj1RrcC7sVydrjzN1aCFqVHwr5UtzQ+WxEvxIwtZfdxM8QceMBsNwKrdmz9YYgSx7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749976794; c=relaxed/simple;
	bh=1Wt496Cu3mB7Ju0iUYk5MOOk91HkJKRuTaI2joLguA0=;
	h=To:Subject:From:Message-Id:Date; b=iamecSVWNrzgebtI//1qgmSoOX0p3UCNaM6rUbOimUgcRFCWCinDrYdIJiomT1B72d0tGtkjldDXU27NlxE4zGORNlGuFWz2fwT6biQzErkb5Ir2J17flOVHEc/+wWiAWpmaijPgZVZZp3brTKqPUvlK/G87IgTTjc9NVMvYCnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8Ftqr7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8Ftqr7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C34C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749976793;
	bh=1Wt496Cu3mB7Ju0iUYk5MOOk91HkJKRuTaI2joLguA0=;
	h=To:Subject:From:Date:From;
	b=h8Ftqr7Lyu1hBaHy71iuoV8oo2AKWlybtTFXS/+NLIQ5+iFTKjQYcxzgvDUSU6AqX
	 YtgIZxQxy5PgGJMACQbQux1r/GgnrlvW4o3Utdi+bFsW1kUIUra52G9sRf6S5WvFA+
	 +uMScocHiluGksQbUwpCJWz4/b7uw69cHFfBNijKWImCur12yszv65tK1P31RdVb/Z
	 UJ5nz9Cva1PbJik4QQ/LAHnbKIu5yIeA8aynKgob8uAzDmJI+Z+UigoX+mMuk5hvXs
	 FCI6+M79J4b0270WDAwWsogj3tFa81IQ6u49gSWPgsV9pnf8e+xjU4NngLvvk4HoM3
	 wSmLgIIUtk/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91013C71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997679358.11850.3228629839109302737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7407dd2fad1373a7aa749299d77112f43c795763e768817a9d544ca1d47a7ad
Date: Sun, 15 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749976793
