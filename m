Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450C117C79
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718439503; cv=none; b=t3ZH6IApGZuerSKfe2C5KhJe0mayC1Fe0mQVSHI96AoHin4eEdKYKFqzZiu7i/NYIdCPc4YOFF2152ht/Au0r+86iogDZ9KPkJp06eZBOIWZNaHVzjViJCd4KAYVJX5VUOFyTDY/4l/htgVfH5Mokwu0ASBaiOpcLdBpxvtebDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718439503; c=relaxed/simple;
	bh=EBtXHM2rAy3ZJmh6sPIvLqYkv5LRLDaORAEt04GMfLA=;
	h=To:Subject:From:Message-Id:Date; b=g7oZzR8r7LAz1Xwb3DWOq4Y54LKr5R2epzshoIU302KKW8dBPNxQYoE1wEMFGhUUDsXi/2maes/DSY22qQHMNG/RD5USVeWJIBe4dh8AJBULvG659NI38s5L06orln4/ILPeGyNqey2e1H9tzzp46hZsWzNrm+WFe4YEffUFVd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdhEYpdC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdhEYpdC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D86ECC116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718439502;
	bh=EBtXHM2rAy3ZJmh6sPIvLqYkv5LRLDaORAEt04GMfLA=;
	h=To:Subject:From:Date:From;
	b=HdhEYpdCF7cJLcd+mdLLfjr/B7mSCR1bBfWOLIxxqQtBdG5uapi2MMh/L+w4xlHUo
	 Sq4Idq0KbLfnSGknTEFuWdncSHcWmIEbymb67M7t2lgrwv3nbpYyA9N2QqIKPjB4xj
	 xoFgVCJRmUryVf7jvIb/rb7NTu4MX8vYzh3OhzvGFbhio2ss7/aQixD7u0DcIni1nO
	 eMLKjDLkZSFBd7gH6v4gtTfUN+MJ2WZ6Bpk/EZCVoSh8u8EUGducAf4XzxTX9lcith
	 arnq9zwyOOpIx4zLkfVan11Pou9ULdsXfVvVEiEM5vCH2DNY5reJPhog6BgnzHdbgP
	 gKeoT1P4AL+FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C210DC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 08:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171843950278.4893.1044186040157745679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdedf44a0762eb4791f048ff4c1fed8c5ee644fd2b83556019f1a5edc4cb5d27
Date: Sat, 15 Jun 2024 08:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718439502
