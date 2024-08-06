Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256838F77
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722924954; cv=none; b=DejlsZ2U1eFc5HPY6Hd0aqsVWn1YytyERA0LWejETVxplt0iR60VUJpwUk/n3Rg3ljgNisvLb3OzkeOuoe7C8LargeJvJjKJxhefQyh4r1/1TTJVizVmerg/S18r38Ho0czX2UrTrz6cbGYOGZxZvXHKRhdIn5ECoTdzFb2LHgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722924954; c=relaxed/simple;
	bh=lAPS/TRFlf36KrDX0VmltkqR7YPqXuHm02SzB4zmwCo=;
	h=To:Subject:From:Message-Id:Date; b=roNuseb0mbLBqRsUpaLB8Jr2Yf+tvVNNi/CXAMdpi6u5h04ilYSiaQ2KTF6yZxFnPmctnKlLIk4b8snOw8VaPmTLHuyy5fWWcTtdPMxNciUuwJVaZke+YTNMxemYX15i3GpzKS0UY6xsVStrIDYYVjebtzXsWx9ZkUc4fnHrNSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDrYoVG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDrYoVG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0663C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722924953;
	bh=lAPS/TRFlf36KrDX0VmltkqR7YPqXuHm02SzB4zmwCo=;
	h=To:Subject:From:Date:From;
	b=jDrYoVG/TWFY/zV7BcRoUQoeVToONMN1eSNv3y+rljhbXpS2v3W7DvhIPDnYGIHDf
	 spX9wub4NRjai/w9a9q4mwo9OFj2jzaATJBm98BsKT1asO0zMUNP1+LT7V7TWzj9G8
	 l0hOEeNpk/RzHS1BTrih5TtpMzTpYRj4juDcnBL6G6Sz/a4S/dEJ+pho95V09HsT5f
	 fjYgeJv8iXGyOmfejndk99dehfPlFeMWlSUR7g3luO6pwV2i3PWlfuPJsODVvJ7q59
	 fr1MWcsCBXYACwC9mFXHJshhMtNTOOV0J+NRILLExgdahCzEFViYPHE/tXVhwsxzvo
	 cGrtEk31xIfYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E9C3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292495360.19132.2354855058910990583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd782f0f25aed7fe4e483565d5300581dc3f31b7a4b605110a9d5e02fcce2cae
Date: Tue, 06 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722924953
