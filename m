Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6251BC2A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723246554; cv=none; b=nhY035YFVhCXK0Otslg0I1apCsD1iUmsnkVPT1QRssqfxBs6bjC3DMvcNgPrGa6ictHtGzXm2v9eukLDt75R0YBn/8Ec7LMcqGxY5Cj55+L3biYpos6I2/Bnr/kq3FZof6f9JoVgpCHi1A7lni9yq8ygdiqc8cLom57xjgoIli4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723246554; c=relaxed/simple;
	bh=BreRfUPk004qfXGdpQ4oCLEbx+vaENXck7BUfVqjjY4=;
	h=To:Subject:From:Message-Id:Date; b=XVtYgdnGMI8S81V2gu4r/xrO1tn7zBGiaZbS9se36706SJ0fsHf50ngqrvZDZYVyhDyxnYNxzEhJ5rtKquvaylqA7UB9otM6QtJ/VERFQEjMfczdIcLT4PuR4Sc4xTbXajUuuz/8Dj5I1OHqy1LPIaH6ClbxM/5pAlsQo2DxieI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDIuCcTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDIuCcTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD6CC4AF0D
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723246553;
	bh=BreRfUPk004qfXGdpQ4oCLEbx+vaENXck7BUfVqjjY4=;
	h=To:Subject:From:Date:From;
	b=lDIuCcTKhel+7ULjBj3M3udn28ZxkEkvsJ8y56W1HlooMhKJ60GkBcmdSo9QCiXpf
	 4sNJ8djvek3qkQahioUt2pgCB836CaLtO/lFnfe5c14l7j1MyXax1yGdAKPWMV1+/7
	 5CGuSHxZa/QeheQ7OMiPTy/nCKSw9QHM3MhLaBggg0oD2C9I5aAWnk1iepUocmIOzG
	 BJo60ioclyD/oQFnt9yZSX7UXMgWjgXOnrXU3A/dxaH9foTL5Lmm3nVpboMxThbMfu
	 bA+eE5dSnLiRuGtLf/WpFAl4gvnCDyXVDdjesV6GsqzgVO4Sda+/BdOhdm1bK/bQeq
	 wFa1kJEEtKq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994D4C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172324655360.27461.12585043492347073279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb7d3eed46f1762e976064bfe87498b60a2e6824017a491ede67c514663fcd2
Date: Fri, 09 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723246553
