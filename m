Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF3D2D9ECD
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776003454; cv=none; b=mJ5NuKIQ2PETp7aD8buYGB1dqQZpl3Ah7uCxNSRHdHc2v8A8ddxrBYMZaSxbn39X0zHQvxN3ZFpxc+utBi258Yxxc4knDipt6a1sD1B3070aT0ZN69JgwnygNRHKwQLZhLYME4X9Xz3eqF6HkpYgiZ/5fPairGqB6/gVaEG4vjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776003454; c=relaxed/simple;
	bh=tmBj3YLWNRrcNMBdY/fzf7wJn9ezxzRkPXY+FnnS63w=;
	h=To:Subject:From:Message-Id:Date; b=iTJeUoqlFcexPe1emgPQX32pjlYwvieytPTkWwNdmfCDw9p0d/aEd2NVRXxrHJtm3c5I+ZlAvnsgmdhvAD0d70yY3kr/6ZPGaLFK0+GNVTh6dvuY8lCYEcN6ySKPW5bOcR8ne29SN5vDBTZ4DuugeHG4Dl8YmCpVjemyZuBowIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOLAZSTW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOLAZSTW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADD0C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776003453;
	bh=tmBj3YLWNRrcNMBdY/fzf7wJn9ezxzRkPXY+FnnS63w=;
	h=To:Subject:From:Date:From;
	b=cOLAZSTWG5CkV5n9eXt/eTWP3mWRDcbSLcr2i4I5Rbss8S1yp+u0IwekSLCiiFjOa
	 SfqRQ9xlB/m+FqbMzSSILAnt/6LjS34+zUGFRTrf47cQ3hdN0g1FLk+OGonZw2M7sR
	 QsNXh6s+hvnBHtrEdKCCP6PIilWjgxW7IvfoOBHFdm0t1hBPlg2BruwTfD7NQdxFcJ
	 66WJ+IguO8SGlKJ2Dtn488BE6rBn8dymmr5wc7aPIGlGVv16JZxiIpTFhbiJ7AtnRW
	 3bLqKvpy6PBhIFcveoCPkurNYjW5b73/bqphTzZdb1A6RA6OVDTQMJCVle4b7kpcNX
	 D+YXcd+3Hk2dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A93E937E1
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600345368.16112.15547719594795079023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2ba60f4abcf9f78b4449976f106cf62ec70341cff3accc0b6ad8d0c2685313
Date: Sun, 12 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776003453
