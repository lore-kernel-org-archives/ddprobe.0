Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222F91DC745
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725395154; cv=none; b=Iylx+rdVJGm2DVOShIh6tj8pmJnMTUaG+5tniNUpPXcjtWVta2w7PdYji+RFGVY/OGdMhIogVVCP+vcdKoruTCOYosHkJ6hgj9OR0+ZSLdw/dYIomlSMAZiYRLc4FzmkoVv83sC4w1hOdjQx4Wd89kBbVdCq38+IB1OwTmbQdXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725395154; c=relaxed/simple;
	bh=zli8n5xnPMQm1aV5IINZo38XK11O5ogF+X+rBcpEYmg=;
	h=To:Subject:From:Message-Id:Date; b=TjdtVLT0f7V/jpg745evCo/KZXjwpKyZs3UE2iVwy4iAo9BbZ8F5BGGGlJBDFaLH+tFBMuy2hPbXpa9bPdEpRkJ+bcmjVg82BmPeq7f+AU+Td3z7NgxlX1qpJE7nz/sz7kUBO5I5xYUW31wcIC27TiaJzuvP0RQVg7ri0YRTiCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmJqztss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmJqztss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30DDC4CEC4
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725395153;
	bh=zli8n5xnPMQm1aV5IINZo38XK11O5ogF+X+rBcpEYmg=;
	h=To:Subject:From:Date:From;
	b=CmJqztssId4Q2Df7SkFpPVgxWw2SyVpHsGaOggHAJYCuxvx71KVb/a1SEOSzGQdRO
	 ikfFx2bWWmHsnM2QdxPg1SqYF6obJrqwoA1zj15uft26vIQF2V6sUeJ14CIDyGnOA3
	 TAm1aVetsKR3u8gSLsRfhkUhWKnADwlwVeHgEC0SKnN3G9to3lzk3/IhJymdJCfdrF
	 ANKNHZrpQRPs12ww2IOvpedTvxU0PmJarSYZ04cWfnqLf/fjmTBlnVF7KFMtHIuKBo
	 ENofjutq5YyyfTARtaZ/JJheoR9VEmOw+5oXmV2FUzl5gB+T/NzkBzbBahgcA55TOe
	 OWpQ8Ve0p249A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ACECD37AC
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172539515359.15703.6721151464825054105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a905d8eb8e4ce1a790a9ec0bef194561e76c4b7dedec91c6975a23647818e9
Date: Tue, 03 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725395153
