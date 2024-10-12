Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455C542069
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728757554; cv=none; b=t20VDFtm4qdMdTzNzLMAITIiLL3WDao2+msohP9z/7SByMnamvewY1SANO+PyxNR4VOxrgDTpJtoSLQ04stbWDtKDrRHfjMe+JawNgtMBks1Gi89Surac6Zv+A1o7rvAd4v3WfHdvm0bAJ4FXKPcNMhV43BEx2pa2jKWf6PGdmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728757554; c=relaxed/simple;
	bh=bdFwpRpmlhtMRsMVbHO6RyH7sfQtYUi09POTy9Lz00E=;
	h=To:Subject:From:Message-Id:Date; b=K4mEyPLWVODvAnfc3pFz0IwWyTIug0P6SJozl8fHeVTgANl13IbKS2lkgbptgkh8lAqgIMMhrAv6Zcnl4iKjdXSZ19DlZMyDoda7G9sn4DQnHuqlRY6vVdjIuI3Ao7PnPtGiryWfsZ7y0HQqFJPPLdqL/hFHDJ+/Bi9iN98FBlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHFtxIam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHFtxIam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39EEC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728757553;
	bh=bdFwpRpmlhtMRsMVbHO6RyH7sfQtYUi09POTy9Lz00E=;
	h=To:Subject:From:Date:From;
	b=nHFtxIamrh4Ao3sFManWg4qIMxX7HhS5tQkWgUrL//eZ/z0M7Q/ytgTEFVijm2I0t
	 RHKDaTvflDAKb/ffHqG6S1yB1kKThzyJsqGEsTWRULN6klvamEO4gNCiiZ0pFE0M5C
	 mo8rjaOaK8WIrcoWfeIOBdx96319PoK+rzg7ipYBN4fRyelECBZwGxXRbzLchqk/Fd
	 4+eNhWP4+jNdJ1B167qoi6Y4lPSPoAtZbl3/7zOpzsS60LYegvqI7W68ChQjyrn0xf
	 NRMP6jtH9zuuOciT5V99+vnxI8NFtJVyjsVPh3RWUbP1YQvL9y7I/J+HrdBtjWxrs2
	 SyeUVCN4SW3fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D07CF2567
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875755361.21302.9972169131374993925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16311e9aeed4bb55777d1f38a3956281b764b877a90cfc05aec119d955de8cc4
Date: Sat, 12 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728757553
