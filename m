Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CCD3A7858
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784192315; cv=none; b=f9Oa1BytaZ1EM9mgs8o3ds0IpuiyXEeiT9pZq/A+n7zwiosHmdh8Iythgm+JAalyLvLZIvZW2N6/6Y7r40tspsreGs+D1yyRka/roygjDhiYgTxCZl/Ph5th8MkJBK7kz9+9I3tWFgFnxKZWJ6HzLVGxxksVqF3OpMsypUZQSTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784192315; c=relaxed/simple;
	bh=W/R3B731lv65UqlAk3X8stYjdcBIoubd+sCzRIm1xqQ=;
	h=To:Subject:From:Message-Id:Date; b=LYvo5pE9A3PXRK/uP5nLuPQtpErHO4V/OCzjZXCY5xOYwjk7DGeCwf/p60yIEGBjXXO6OVyclIrAp8g/WOCIEiCwmnbHgEY0es9fXlISTRYEtxGpSPnJrX3RpdcmlnDT/zzbVg8rPasHJs/mMktehQ2DIJ0Fts/5B/AdLqyhy7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVZl8cPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVZl8cPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D004CC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784192313;
	bh=W/R3B731lv65UqlAk3X8stYjdcBIoubd+sCzRIm1xqQ=;
	h=To:Subject:From:Date:From;
	b=OVZl8cPOM+AtAp4U6VE2PGF510WRCKS1QzWNGPB7PLO43UhY2e1eUeh2fEDJjr5f2
	 zxW4pH1Bn5KR/kMrWrQng5cuWU4CGz599/sDqcfMRmCPnpvdgWd4Acw9DJHV90n3KY
	 hOSEpxtWJWHFYROELidlgcvAgprdsDSuo8n2IPROrXc75Wi9TaaobJxqQwcny9m5lH
	 qnHh2fz/AOhScWvUqn0LHV3QFBxLvrke1sm2uvxmOpdJuKN+mdBHiVPML/U9yPVU+F
	 AYj2ViJ0nCC+fX3eKLJhY53pvedqRByIFs645DaLiEoBy8mYgjsWYgThr7yIH1B+ae
	 /RZF0gLtJHVwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBB1C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419231368.21719.12439909291468272017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 360174dc669768ab3ebc5d5aed4fdcdc9c7efa2297ee37d082f19c7b3158df58
Date: Thu, 16 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784192313
