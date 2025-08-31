Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137522765FB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756684794; cv=none; b=cjM8qZmTf+r18GmP7UJvE6lrKyeuxgbVZ2hwA5j0dm6dam2TtdlAlMN28jJQdv1Brz9cleO8ogDswGqFXEZevp2RUr/R9mSiV2qlXG4E6EbP8q7InuA472ILg3r98XLhklO3menvC32ctxSk3ytpTYFBPyETcgDJB0+GxhjldO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756684794; c=relaxed/simple;
	bh=vPO902MSKw0MtS15R905HMDGlX+RSQcPqP8xWjwbE2A=;
	h=To:Subject:From:Message-Id:Date; b=cTOrmnhw9+rYHO4spHairpVFMTlPSqF95ylLDE1kpx74LTYDVD2BKvpGftaOk0e2fD8rOeJ9BGGs23CzEjcGSa1mNcpk5v0ZLvuySQwdLwpAGrK0BuCO2rfees1nbi4BEVzXutzbLixBhqLNONffIZnETR8GS2AvdLwsNKK3avg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zb2GttMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zb2GttMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F4C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756684793;
	bh=vPO902MSKw0MtS15R905HMDGlX+RSQcPqP8xWjwbE2A=;
	h=To:Subject:From:Date:From;
	b=Zb2GttMlbZXaNB9yo+srC9pYK3HMTwbUOlaT1lsOTZXLp3q2KX4PmjFbzz8JLsSZC
	 ZsfKU9e+HXvNnDAMBSY4Ea68YSUXJFRI20eKh0rdbjQHP+cVsYFb7Gd3SNhHtXjhlF
	 WXkQ2zyBj4ayuvp2ml5yT8dXh3iDcohXD5tJLv99NVeHjCLNNHrE2/mhGR2F4X82lx
	 YYy+wVYpSNdV0beH7a1+2iS3hZ6aGgmiTKHHSvX8yZSVq3eEwULvZmk32Cyxniyo4/
	 zOSRjwK2YOIGx1Yjp4mqRIsno8fdYMKie60DZTkiGFu3Tt7m3etnl3Wwz8yQMAfnDG
	 BqnkU+oBgA0+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927BCCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668479358.18193.1708168559550105363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a69bd6a65ce883a8c7e3ec9d085e63185b6ad3d447ee2215ff0acb699cc7b26f
Date: Sun, 31 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756684793
