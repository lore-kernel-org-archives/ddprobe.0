Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1315E224E7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705510697; cv=none; b=FaOpoikZhSa7k4sR8ZFLSLvGaU+8M/g0cYhEFYE+PrWBEBtuCCGRIp/fMRHGPl0wZu7A0L9DrNTqYbhJunbYsFpsstgSfOT/CUU5wYffBfrrig1AcTXB8B2pXAAcdLClqjqFXsIOdB4ASYLl2K1vAxIto/d4lSgawhwfnQDTu3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705510697; c=relaxed/simple;
	bh=/ldA7eiNozDRik/MBEikb02NbVIAiEr/3QyZ06S1xYo=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=nmV52yEMnm9h9uIbAPGQScHN+kO4r351T821wCnvTWKuj+FWJvS2tcAgAEoy9a/s36TQyvgvzW0Mkr5AkQPPJpvN0QzUd7sqQakjk+u5pI4F3ClIOxrI2PIqnIecwM6HOD8Z9JKT5nxffSm+bFFG76Vb/EmSx0LiaEesZ3JxnSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwDbiEir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwDbiEir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D437C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705510696;
	bh=/ldA7eiNozDRik/MBEikb02NbVIAiEr/3QyZ06S1xYo=;
	h=To:Subject:From:Date:From;
	b=bwDbiEirK4bkMcIF/COPoUWSfzfuPt7H1G4oTqFKzF7CvaFwUuTEHY+xi9lNt6ex1
	 BcTkUC5nmU1AepEyCGfzHka9OaAoPX2FvyO6lJ+nTPDcH4HVFa8AO12v5rv9l8MbSH
	 fbbbqSHI+qmYWfP00+GBzwCHtEjkd7DY/0b789RaruZxWYMS0uK/r8Z9gW6dnlM2wW
	 3A3azaNFTcSsYWdkktdniMpqyjFzI33l1OjGiNrA4VvyVDlCf7d+nOWrhICr3MAdVh
	 Byh3BwueP8VGiG/RmWqu2hRHl+Dn5L2gguip/F78icT3Mx3UqGCD8cyu89mFDlFqq3
	 PY8NK8m0iLv1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625C9C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170551069639.7592.16392588705048477448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6110db41ab96f9f7b0318a7b5352076cfaf52d223782af5be15a630753ea30f2
Date: Wed, 17 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705510696
