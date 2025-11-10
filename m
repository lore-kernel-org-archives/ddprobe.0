Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D670F33F375
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762805395; cv=none; b=EWT7dYzxDbM3LZj2eFtCqh8k9eCS5k/oGP9jWRpiktrQVrM3ShIXyNu4KKEtXBHgcF9/6UT3VAic1AwKAvMBtUj7FMc5Np5XeskP7Pp2jdTcrj1nvQBVrOVFqEoo0uMQj5m/wCJ/NrkRCi57Wu+ekMNrspY/awFFrihBbohyqvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762805395; c=relaxed/simple;
	bh=2qrsJHPCuGGSky1Mi5BnX0KGsHrf+hLqyMHKa9M7hYY=;
	h=To:Subject:From:Message-Id:Date; b=OxULxlK/ET28bHsjDAwKXzStAl0OohDTZr3BKyPeAj83K0jQilKY+O7Txa+LdIDaA57MZhcdsOROcfIsCHvtuhQgkdyduJE6B4Vk7aWu0uq1q2igOL+2OpcgwfdFN+VsmXlPk17mAGEcqimTsW+y6eS4J6EkkwpKreh8W8qWPro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V9+ae4/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V9+ae4/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 60226C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762805395;
	bh=2qrsJHPCuGGSky1Mi5BnX0KGsHrf+hLqyMHKa9M7hYY=;
	h=To:Subject:From:Date:From;
	b=V9+ae4/+SEzYMP2F2qs6c7JShLdoBoB9fLnO2a8YkCEAxGK6sc1djT3Dlaodlx/R5
	 P9JpzNKfyx+ojW4fFH/QfCPWvX0VbvLoRnnaJRg4RCHWnSQEc6D+8xFpnNcaubnKIe
	 WHCVtXX7pvPlmmwEWNXsJCMeberAy6rkemHY2Gxts8boZwKU7AdijNLiAnKYn+s5fR
	 wmfqe/m0yQtgo/vqKOhGJHOgj/EmpOVK4VAgSu3TRCjwf4m+j25xoomRCFZj0HyKIy
	 XuPgUxbPmFTQ12MWlXhYaOdVpqLxmTZQKdRb1/ZowpaZFV9NkjBeHts69q3wqc5IIP
	 FaZpmw2YDontw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BA24CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 20:09:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280539401.16884.5765480381985933669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70cbe44912ebfebbe8607f5eeaf4fe03eaff87197fbbfe98228c58c0632c235a
Date: Mon, 10 Nov 2025 20:09:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762805393
