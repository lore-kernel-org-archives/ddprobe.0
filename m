Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32885239BCB
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733915154; cv=none; b=n3iPMeIJMRSnNKMLSLEMPi9QzGjbMCP8NfBtY5iPiLshbv2dgFVcf6mXD6fAgqo6x2TSkfsIiBylfRNcLDU5+afhpVJwSgzYxJaMv1YkS5T7ZtTEXCEukPZiHdgpbi3qJrGsLim+MxvQJMd8Ruzwx1xTaVfh58D0UXliZYXCLFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733915154; c=relaxed/simple;
	bh=owsQe9YmmzBA+IThemxmTyEEAFREpNclWghMD7XEdXY=;
	h=To:Subject:From:Message-Id:Date; b=eO+71xWiDZNHVrrmJbNRmcfFTTChNMJMoSB2U//RWYxD3usH/LauXVY2OMFnlC/6eC+Bhu5TF79THvHn6QC3pyE7SUuJaaPLBqVk2eGP/BZgWnv+Y0FS41gvOHNRPKKrgajtiVtg4eN1Wo4WpI56kVVsEZuh0dy0Y/Pu+sXbF+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r55VJDer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r55VJDer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B59C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733915153;
	bh=owsQe9YmmzBA+IThemxmTyEEAFREpNclWghMD7XEdXY=;
	h=To:Subject:From:Date:From;
	b=r55VJDer2l6yku2ev+YRCdO6J3sPMXCj01bBpGGH8+94WlW/98Rz+yX7U860dAQFN
	 x4MGQstp1PJwmfkrZsYhDWkzTnJzZQuuueKD2MzP9mKUQ2uMQEhVOatdEOeYvyRGqg
	 pqou8ZK335u58Wdu2fTb77WJeMJDRPV3wYb/bni5ZcgZ4qGGp2897QRc41uDgPutH5
	 Y+cywzv7aNZACznHSz4E1gcSmVB6Z7KT8o1bus8nmDVr1ElprPr2TjpoE9bAjtKt+F
	 YXFGjadRKhzd1YUUzbyF24g92jEmCRHZ9gs9pCtILcElkx8sA6tAMNS8/o+nhEisei
	 qTYg4Wpq5dJyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4467E77182
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173391515365.21620.13156611661855564965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0955102601b302d094a6002d5783de5fdb6932a0b2f3192097f00379100daf8b
Date: Wed, 11 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733915153
