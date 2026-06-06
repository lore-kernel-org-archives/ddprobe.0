Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F2F1DE8AE
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780706674; cv=none; b=LhQBEuFLSanI5mBIuHVetf8Odn8R54/G9ujMplfg0HWgCezjOSj2BafRirK9H3aK9IQjFjlPFRaeYH3AmnCAkDeVTPl17g51YT2mA0R7e1Ria9LZdqb6r6BdDdIXCTyDrvRE4wQJcY/kKAKr6fK3bz5buVRuvJr05KC29JlAt/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780706674; c=relaxed/simple;
	bh=eOlOTKUfp5BMdaGB+MP7GL88NGMuikOET0AQ7GlqnFE=;
	h=To:Subject:From:Message-Id:Date; b=Cfyd2YG5A3yzHRTv9xFmtriRZPFCngiZxnc+givcP+p5K564UPqvl/HYOi1PMBnvdPrTDNwak3UvnuJQaSxQrxMa8XCdKNXwkaHZnr89dVls+zpRa4JMBVUTWeaQBXHHuXXiL2hbPD7HBl+Kg3s2TUgPbJv3s/7ExlBw8TaPP9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+/Y0h0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+/Y0h0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCABDC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780706673;
	bh=eOlOTKUfp5BMdaGB+MP7GL88NGMuikOET0AQ7GlqnFE=;
	h=To:Subject:From:Date:From;
	b=c+/Y0h0+t+4AkNrDX2f4hlbSjMlNMVgZd3yqZALVD9r+qsbd7U/MzY7eEPf/eKewb
	 6QPCjrC/OciaxV5+/ogUPRwobD0Of8Pi+h6aDCPC1tvHizQbwX9tnXoOGDsidc9rii
	 GbSBpKl54m8Wxs82zkUGGMVJrpIvuFbcsO47eEbgkWHIlkxYcbBtshjTOuLjzAcYhi
	 RjEyP/6lVfdUr0aSktFJ1gEyuClNSmYJkBOrJKTdHSTw62QpNfgm55g89+Y7smJquP
	 rqEIUaKzSX3riVPbimYi3ZX1bourN3mjMWCToTGXPXe9/PNT0qdoZ9jwjoqH616MOT
	 QvbulnHtbjvHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE95CD6E7D
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178070667369.24821.1815925366446833711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a378fda094e53ce8f6468dca581234e429ca20dd6540cc64f14eda1ff5fb2a0
Date: Sat, 06 Jun 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780706673
