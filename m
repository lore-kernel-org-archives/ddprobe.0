Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0DB2208E
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716849263; cv=none; b=dS8PE+1i9P/yjdF92xohSRIu9yupZ6g62h1LgR8Z08tt/Cz+hP59NAr0HSJmFaYeC9mAqDd2E8fZe5M3SBCjqRnfRK5Xi3bmtXuL33G9QVDauq7sjCTPDo5PkuhACHWWOr35Um/7ExCkB0NSwwOd8IN/edaxT1fYt70/EHaybHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716849263; c=relaxed/simple;
	bh=zgFmEB0px6JHgVgM3m7WSusuBYZ2sXNWAe2mrb5cSQ8=;
	h=To:Subject:From:Message-Id:Date; b=ZuMoBz1FVFdua3YvkP+M1OfvJVnv8whGsNpnHeuzsJOhPNtx5aMgYAs+Puis2JWTjIHL/2oSxT/1wUQh5U/wPIZl7eglPVtmk0U8vfvGKtvyWSHBIzy5Pw7eRms+PDlOwXQuecQGMu8CMM8KoU09cXPanyQghpLgORUfixT3FX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XSjbV7OI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XSjbV7OI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 003A4C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716849263;
	bh=zgFmEB0px6JHgVgM3m7WSusuBYZ2sXNWAe2mrb5cSQ8=;
	h=To:Subject:From:Date:From;
	b=XSjbV7OIvgyw5AcIODLYGQyPogyIgiVJPFw+quAg1vha/elf1S5PqtaJzHZ4hgw5/
	 vxG4iLsQXEOcsl6D92cHVCpZ56ONGoxW7uQkvA8MY3v4ZaTOraX7IPGKR4rdvVDi2W
	 rdARDj3j+WhdFG2yLtYv4Wj53hcv5s19ApeOl0szrTLh3rj05zEMqvLVuNxy1/iH50
	 DBgBiiezhr8at8lOZJOGM7ayHamzuHcaTfVS/O9wsn1GEo9RU0QD2SUaLFi8PHAVlI
	 acLokVPz81gY1xMnbZqfzaemL7FScX/d+OOmXOrCoAP2QrWDmvRmLLv83sAguGh34M
	 KONWXOrHVqXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D64DEC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684926284.17554.14721213545396078138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7e5805c25d10b852c10d1e47fe07d70950802a5ea0060a30f0e23c5974305d
Date: Mon, 27 May 2024 22:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716849262
