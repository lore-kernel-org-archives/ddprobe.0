Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295ED1A6822
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775397934; cv=none; b=W21WT6tzYlpcuueIH2gEaLQKKRTJlxGFNAMIQJVevSXtgtFLOXT6SgsjiT7A2Q8nTi4MNrd8CqB+iRRphsnHLeo0q2n96s37xSvicmYYFdPe5p962n79G3yIGQwlwlBc8eaAb9vqyIWooSdNzBdng/TurV5jws3umFaK+tSt9r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775397934; c=relaxed/simple;
	bh=LOmC9P1i0BgjJ3x602QH7cvZgdh2DXaZI9zPGuk7DIE=;
	h=To:Subject:From:Message-Id:Date; b=KlbAFae/9VILUeM7xh/WdX11A1ZBOJhvLxh9jcgdZWStCfmGtxdWBmvm17XLuIjoGhaEAOdnYjvUBhGQP7YZe9vbQOhjk3Sg3fJZnMHfvfWy+JCFRjW/OASFJFnpJ/VdCBNZzpElJX6R/JjJRt35kjUfSVVbxP63QnMlL+SWUH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ov4UOiqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ov4UOiqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF51C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775397933;
	bh=LOmC9P1i0BgjJ3x602QH7cvZgdh2DXaZI9zPGuk7DIE=;
	h=To:Subject:From:Date:From;
	b=ov4UOiqaiv5iY0fUKb9Gc6xcRbrTA3eC1DFiOIQ1lIHY+n+S4vAhu9SnX5BlAhAh8
	 iE/SIjvh9bwKB1UdiTUKFIdGD/Ugt63rZk4Kd4XFt4AoIU9Dgq6RZ1DHRGuVlq+kOP
	 ji85C0n7Q/xWt8FZoxz80+MHAJdfeOOYKoeDghW02sC3tDo2MyqP/JcAdImc0cVtrC
	 sj+zmI4u4iCDsryI8ijpSEGrnMoirY08KkupM+CxitBfDZvOe7nVZopYk+vMeJgS/8
	 vqzYG55rVmyiHrQj6G7z2oX0txhV7Nw9K4gfIG6XhfRQH+RvC/peAQBKJR4qUD0vc2
	 OBo+4GRAt3Ijg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF0F55123
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177539793368.10718.3359200971275202427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12044dd48a29aa429fa4f195d0a00a8629638cee0d114535a15cb7a6cec5c0a
Date: Sun, 05 Apr 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775397933
