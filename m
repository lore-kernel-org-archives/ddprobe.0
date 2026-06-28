Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405813B6BF2
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782678514; cv=none; b=nNOi3Gc1H7xB5vAC1SABIm22N1qEoiRI5hAlPXdDDMoFwW7dvvUVHMlaT2RZTpJinJhn35Hg5+w5wZxNVcjhEsVKEtQKZ4Kr4RSpGfZEYQq68WTxTyWV83RwLu8nEv0JmZVgig5+4vm+6CE0sEYbseJZFB9UBVq7u4PvRMMUbCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782678514; c=relaxed/simple;
	bh=Ng5Hn7U4pNUnkNSht50M09b1TvwKNAnIJ4dWccr+4nQ=;
	h=To:Subject:From:Message-Id:Date; b=h/XPB6BbPfhqMWO4U+5aKWgXGQwe6+IeeAHjxCBRBpCN8jU6NEcItFm+S0WspbeZYQcN5G4E53/rxEB0v86oqjms5bmvCpdL6X2Bb1g27/FmdoKhq4mIuuAjnPBEovnpGVduxhBkT6b4AS839vbnWKdwgbe3N26frYH/kzwwm3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXE0j2IN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXE0j2IN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D81C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782678513;
	bh=Ng5Hn7U4pNUnkNSht50M09b1TvwKNAnIJ4dWccr+4nQ=;
	h=To:Subject:From:Date:From;
	b=LXE0j2INH/44CiJKPk2GpbSAimfR8wdG3W5KEFg81nnlU93bj37XjlaBlkoViv+1Y
	 Y0AqFMz+1fzZSk26KgJgK3Tp6MguVFRhappjfIJNCsCWTLp962FQhiFWeLKfl6artF
	 yMV2jdKf1Bq+f69vnuIRZeDcCp8FLViKe1EQJrHPAVwKmugWiguISWna3O2hmyyqTr
	 MsBm0xkYj5DxxXLXFOqWLnXhUZb4r3vWP+r1NFBFUToTOvEaNYguuRlgljU72RXEKM
	 yOr+BAvG1rXp+44z1gU/PrqXO/p4vTdWzEdwwAPC6zKhfs/i+sxVt7u5Rqi/SByVnG
	 pZwf/GSnope0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0213C43327
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267851371.9507.8842991414220652314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82307d46f1b85e96d3031c3d2eb34cf31f97f7a024e26766f20d2b9f3313052b
Date: Sun, 28 Jun 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782678513
