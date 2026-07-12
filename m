Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F993090CD
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783883314; cv=none; b=KsyNqnv1869mULHpBNl/K8i+Y0O3r0ICFPPwAU0pRpH5v/jz7lGcqo1q8M9SAWm4UxkyCawr6QyGHz/FcbM9NgWfujGbfrOAqPpEH0sf34YeB4WAqjSwqppcZ/zOh/JGEdr1one5Eq+FWtuXlGZgO/zHXwnVEjrN2auPH6LrysY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783883314; c=relaxed/simple;
	bh=Tqmd5mmIbpUlA1U3pL2rNi/VnZTF5bDzG7m8IM/IyaA=;
	h=To:Subject:From:Message-Id:Date; b=C2yABgOf8Mu7xlgtigEB7mxyqiGECAHSgGlVBDiSnm5TQAE+YkbYcjwcZA7fb9ZNpC+y7PBX80MBolEl4v7IW6+D0QKvm1DLIZfHHUhjdzwUqy0miyemS2rSrOSGD53nYsCKsPitVL1MzYUK+OBkoE3wRUijClFSOoyS5meIkYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzcLSWzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzcLSWzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB157C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783883313;
	bh=Tqmd5mmIbpUlA1U3pL2rNi/VnZTF5bDzG7m8IM/IyaA=;
	h=To:Subject:From:Date:From;
	b=OzcLSWzM3/5v1gI0l2+bXi9Gulj/Cz5odMhgco4YBGDBaTo9hcHWAta5RCsiY9+Zx
	 ihqzMpM5BJofu/lcV6A45catqpaxZakmijV3Lgsp0BOGb67WpVqe2wrWcpAHtiulCb
	 OgKaLF4e/hJI0PpOx9vulgINN33+lOfrinMWdpkGDMoXOQpN6fNmz/BsN9FDuO954d
	 u6418ZTPhvUcxxpFPgtMYMlaLhJmY+kfTG8o7NwbriksUE9o3QDmuvP8ob45GNb3sd
	 I0L+3n6Pclq8sae6I1dHyD1Yx11Nf4+N/RlTpQAd+5GKpdmrgvdLIoo4tJNisEXQaW
	 m+UR3ir/GrWkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87B6C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388331368.1105.13278075298712376631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdce05b3fda7b96a1fda2b3da623d6c079e27c559b4abb6d4ed4c535118da00
Date: Sun, 12 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783883313
