Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154B4330663
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770756834; cv=none; b=A23dbCsrNesS/PlCmuYqQJkpM6l9y3Cu8RMIJoEMKMii9hWMo+9KOmr8vDha6q1Jy6Q3I3gsIvi2s/DnE1169wkPusBXCgWWIDqSdlt/BubIw5kVKlwf5lUb1yDoJ86idy9+CdN7frFMbfX6Mp9zwZK/87Avcvcc/r795K/xwnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770756834; c=relaxed/simple;
	bh=0ckqL4StYkMoWzbRV8yKHn0fWGX1k+wqsPPm9o67cu4=;
	h=To:Subject:From:Message-Id:Date; b=lOwALxeQBNysoJhCafuEOklQSDlcV72Ycw70VRPLvs/Klw2BMH5ydIW8YWa0glVjK/VjrLjgC/f0/2iQLOP/i1rClirzdq00l9nZBJDn1s5j6XEKgO879pc8MrmVfAGwnVB7B0PAC5ajwklT4Lu74A6uWBSL/cbrIIPe5RDjvEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7uvDTRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7uvDTRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0F9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770756833;
	bh=0ckqL4StYkMoWzbRV8yKHn0fWGX1k+wqsPPm9o67cu4=;
	h=To:Subject:From:Date:From;
	b=g7uvDTRrtE27muTzxvCQIZh4Yuy+ijy24AAISkVMdKre7EWvTT4+Bk7XOqXo8ppnT
	 HLgKhgn+dnoTmgVASnzPs6cRCaZAE6GqmBMIEw8NTdk9gdtEtBgiv0RcZOB39V4RjI
	 rwsoYVeRea6TEAAC8vXrpktoEhvy2gKBOEYN4pfv+wPvEbfsO/QiNbcfr3NGCVyNk3
	 7e6gfuPCt4RkmMhgnFp//THn8ts8vfadbikhAGCdeGMoJkfg9gsLVOvNHvM6dTbMMS
	 OfZE+q07lrt4OcKrGhTIbFoaoJJM/Esx1W6osoV/2T26IGHW6WpyPfcsJMkX2Vbnk2
	 m6bF4oeXo84Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99285EB2700
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075683361.7084.3578912851884414320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4957cc7274d9033b4215ecf839e2fb0ea7bdb37c3fa7be0dbcb77c58a64bcf7
Date: Tue, 10 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770756833
