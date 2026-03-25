Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFF01684A4
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774409094; cv=none; b=iSosHB/caP1NcVHalwl/KDuVT1yQCq/BTnlhzeCSydU/O/p/0sAwysfVx2j8dR71IFb2mivWTdw4ChPafSBmpIt0hwZdxiGAwwuhN1tN0ePhqgvZhh4NMh5bBuLX1XWG81w+TiScoyNpzCHhAY3z/+5y8KAvlNdGByVNsowkPrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774409094; c=relaxed/simple;
	bh=Vg2msFdS3DpwC7nRZn/GIM5Jjg2aCkLESfgMGQhghJY=;
	h=To:Subject:From:Message-Id:Date; b=NLM4niGotWd7TxqHnytixdmI/54VOowVlbyYMLYGj5p8i1M0VJ8Uf7kt8eZqpqRU9q0Vads6wTNAU5QeWNcnCMb/yU4eqv4B6AQx+irzxgE+//s1ZItQpigFXFAdwyP2JOgX6D3HX2cWjetNWaouhtwdYUQ/R0KLU+riatcWiTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHsj1lsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHsj1lsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA15C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774409093;
	bh=Vg2msFdS3DpwC7nRZn/GIM5Jjg2aCkLESfgMGQhghJY=;
	h=To:Subject:From:Date:From;
	b=YHsj1lsEbOUIIRiAcWlY0DtNDppTQUnTde3C6mGUUqbM0QRHfGSs0Unr3MCqqipyI
	 71Ywz4++h3U1G/oZhmp5jZTyaR6A0yOEG9txx36GVc8h0ivQ+IHo++LQg3Y75vGuee
	 cFRFSeueRNRri8eQGpukeLfxMzZUYsVSu/hLDTWwbX/ED7Q7CjnDwYj/e6OzlP/YP7
	 070AqOmjUFsJAf1p/OzYicFMPA+QG/y5ogiBU+xRGIVyYCImEn2A0Pfl0cMkYmFhs2
	 D/Rk6317V7uRjLHbHdykxTSbbI3xamGPEj+FqhsrG+IUTrP8Oz4o40y9isw5rymvaA
	 3gFfEcnwkPfRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9748FFEA801
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440909360.5983.13880459395478144165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57755171bb2f2f0fd9356ff8b606d69b54a7e9e290aa30b3be3143bb059275fa
Date: Wed, 25 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774409093
