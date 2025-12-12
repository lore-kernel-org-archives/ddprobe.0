Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0B81DED49
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765498974; cv=none; b=IHGi811whIFv66L8Dtnd6D2UBVymI/IzPMqZ2NUfczq3LDvGD2xaocyWM7836tUobxSare1UcVUQCZ/TMpfkmjX+hWcbSODRs6Q89qZfMVuCFI01BbV915ILPbUtQ1gilz6CMNNHYfH3HvpuAFnpgimuFGP+bWhQQgNQV2lX5Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765498974; c=relaxed/simple;
	bh=T2TyQWiwvMr5z2a1O6yPjaQ0vo80mCpFcTxmQfEuxxc=;
	h=To:Subject:From:Message-Id:Date; b=g4m/JLd8sQwYOE/3puStHiMhMxoio45LnbxntPqVIzYClLfOv2pGE4OHedM0TdBRCrMZaYulz/poRiXIuz4pOrg61a8u3hrD8HiMMl2OwQdOWvy+E00oPj/DPoVFezXA9IThcMbrODXKUT1FWHzmwXWRC0JlF+j0/7ALc2wxzpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zpqa2Krg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zpqa2Krg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC53FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765498973;
	bh=T2TyQWiwvMr5z2a1O6yPjaQ0vo80mCpFcTxmQfEuxxc=;
	h=To:Subject:From:Date:From;
	b=Zpqa2Krg06q0ro+aag0zb0p2j92g6KeJBMx9IImNWlidwNW8hO2xLeyme4LPBREW+
	 WOofvywvPNK2i6UOaPz1hqU842uwHjpxmOMa9Mo5rEI8sSP0gpho0SX8KpY6qZ39MJ
	 gTkQfg9cbV1UzKKox3Op4YcqeZ3GM1iAEmNmQJKrPehxIgRnEdN4Gi6DU5z6yugZ6q
	 s+9leI102K1/uy+oE4ZELVpkCWku9MrcX7wy88ZhN1SVHGlciRc7nyDFn8Mwmak/f9
	 YdmvzBJB13BLuDUNZhJjd5yoMpZVU+O9RlnPzxuJ3DtTQqEtROKUOfX3fMPTEFkYaI
	 aCDtbl2LvG7pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99069D4335B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549897358.29438.10798022705049408599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eed13b2833c4f4b47b93fbe0b208e0dd4ac33d618ad933c558041587a0055315
Date: Fri, 12 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765498973
