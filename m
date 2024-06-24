Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DF6182B3
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719215543; cv=none; b=ce/NaRnCFPzPuDhHwLMYkTnIZyUMsAslexBCThfmvj5wAhaesnBNhfPl4U9mrXm2F6qc1IiCxqkV6/VPnVIt2oqB3+LK3J+G2MWaED8Pck08kARIF2t6x9nC9rCowYj2sIEPreiQmyQp10S5eDB+9CpDzGuCrqyBL3K4KvxY8rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719215543; c=relaxed/simple;
	bh=cUGowmeBVq37O3CocOyCch51URP8DcNlpHXBdCr7O8A=;
	h=To:Subject:From:Message-Id:Date; b=W2e5dPpq4TYDFvTjAor0qD1CUngYpJ/dKRQU6tjXnqQl+zD/ZHwriGpPd0eDyslPWP4B/I4Zhn1vq8estM2Tw/lbtdDHibIMBokysUAA2K44bwLROXm0Cs3/yEpraIik2OviWYH3D49jfo2APqntRzaXQ5AKDYXnAk8TXueE6Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/Gy/cES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/Gy/cES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D137BC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719215542;
	bh=cUGowmeBVq37O3CocOyCch51URP8DcNlpHXBdCr7O8A=;
	h=To:Subject:From:Date:From;
	b=W/Gy/cESOtElCOuIAXKcIIUBsylrFemBYqRsZQMT6g74UKurW6docS/WRLwQDzJcx
	 akOjDjVLxf0vpHMa6/+j4T+GEGanPsSwPOa1PPnaJNsQAgy1Oo7VOJpGWU53F6UTp5
	 ZbeqBdHqTDH+Wz/FEptd5VLIWbmO7tGbZhJ7OAZhEmHnp4N7c9KQXTb7inB4Skyjjg
	 PG/eYzgU7LjmejEeuS+k78Jln4spdqsa47E8yVeiWc2ixxZElbDRx6jhIzFeNVH2wY
	 kvP4OLqbiZP2uULJFXjUTax6HEXnBFZ20f8vr1y60MCi+kX9WDS7TcDBlPuBtq8sLr
	 r84H0loUijA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA331C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921554275.16751.3960406706320554743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899a36197d76205bc269e615d8fec8e74cf721ee5bffa4586fb029178ddff275
Date: Mon, 24 Jun 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719215542
