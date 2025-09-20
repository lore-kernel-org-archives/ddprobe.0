Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2758A72634
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758370194; cv=none; b=j08faKCH2vNBBuSNJxDVs6trAzqe0S+8zqAYKBej3f/XK7y3eckt2dudFrZQGEK4/WKMeWedsMJ3ocjkUcbRAPxFglZK/iuXCEHdEiTHsL4rRiSchIBNnikF9XAmkBheGkSMU7/sOiPtI2wF9pdsE4n2twMIaRAHt8rC56besZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758370194; c=relaxed/simple;
	bh=HLBce3HFfhOrds20r5e7iPTgR3fqLu5pAFRco5C9iW0=;
	h=To:Subject:From:Message-Id:Date; b=uC6/up/mDo9fYKTyMky+PYWSgeIm03XLF5U14BP0amo5HB8ym1B3Uy/YTaRYQCod465KGu303uZk1K4R3/zHdohwuu1cIuZ2f15SPPiMCdvs9FRCbx1+iQGPL8u5/akUP52XNC6/5excv2PTPqEnnehVLoBoWBFJaoAvaJgV+gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6kY7onN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6kY7onN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E92C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758370193;
	bh=HLBce3HFfhOrds20r5e7iPTgR3fqLu5pAFRco5C9iW0=;
	h=To:Subject:From:Date:From;
	b=c6kY7onNFBaEt/12lQGhuRXy1uxFG4k8urFezG4zfunet9QMpZlxWXbQeuOTPHqiU
	 b4lO+gdZmvCy9IvJ63RVcjtV3kd6UizygFWxDgP85L+/KzA94Q8VN94CtUYSJD51qc
	 K6Pa7RALfzVmhdsRyqb8dK4hnFfU5fvnxnEIFet91Ei4Znrptd4UOFccE4dYKuq7LO
	 aQHD0/frORmarfW6ZcRn4nCfQHDD4A6nNFu4aHR5NQLASNGIG1faUluB1kAsrsxXXA
	 cp51sfmpL0dTUEAu/PfdoKFpAaSZkCzh/Qe0odQGaiQniKtS6od5HUiwGDv4xudhBq
	 pDNNGC+dRYp1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA8CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837019358.5221.6827625839598802212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a3775a27ce663a00f9a3cc380fd661a67853e4fb805ebf827a388ca51df146
Date: Sat, 20 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758370193
