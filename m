Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9DB179BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720245323; cv=none; b=jYm3hWH5egjcy8p21ckCo7r0PAEADInyZUUOA8+9M84icWUqdnnlXAJ1M0ssDXQtc3CrwA+XD1pwg3Dh2pYvh4UCibWwHNhgK9VAjqnsaIXAooaLBFkgwLI3rFhyz7DN/jqFVjp7aaax60FeXP74GAvtrVmggT6OB8lrlBKm32M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720245323; c=relaxed/simple;
	bh=Hy0QiV1TE9lUFwboMaOFmxqBLIDOtvd4geFlnth4zEY=;
	h=To:Subject:From:Message-Id:Date; b=Bv1ySWfrI3L/gmmvefCBbHusF3uidV9a45qZBkuFogUyeSrOA96TQ2tSERs2ac0Gw3XTLJTEZ4gLmqUWNvrQpPzX10URPmZvPRpJqBDMnvZSww4oB7erMJJzxMTXLDRWmk84rrgiL/o/fZsJG3DPD9yskb32nwYQ14D+QMKyKEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWjX1aFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWjX1aFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8185C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720245322;
	bh=Hy0QiV1TE9lUFwboMaOFmxqBLIDOtvd4geFlnth4zEY=;
	h=To:Subject:From:Date:From;
	b=PWjX1aFlVp82DZmjWyTbRxw0o9NHuPUSW9wdLyl7JRkxlj9dhedA4imt1j9R+pnfg
	 TuNPlKbDaziKOPyUtnu0NAVlT/0Tl8N5ggQI+PLFsKATn4K+ZOLeD73RkcRUZPfKUJ
	 g6TuMJKeYyv0vGcRdkgFISg9ltC7NwD1JAI07qJto1l96BKRzXVjoSBmU6fuW2hGk7
	 AzaNCYjvI/kftTyud8/2G9xtrWorDpVM+PtOZU2c7LeIIBHVyYTkVliI0tdo4RRN8T
	 PMm7FTHf6j0g1qFppEEiwu0SkDFiHKZAOCEwT9zFBMiuCAiFoStcOpYM2p1rkiG2wt
	 WnCL4b9HTvAMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05EBC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024532276.28520.14909930220658194293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b2fc25abc3da6de0884f57aaea40620ca93cad84513f025a4a980b2311118d3
Date: Sat, 06 Jul 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720245322
