Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5227D347BDC
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788200434; cv=none; b=uEaV4i1qQ0suzG7EFnFwmmK+kicT9/DIOUmtzVItwr5NYmyBMPt0WLeXluSm9eNi9CCMsJdBwZORYn+PowLsK0E2u1R1xnZ1YGA9OHnYNVRmcWaVvZJOoBL7XBk7DwfxoaAMgkFsuFFAzioTbS4j3yiHY5mytt80opizUahZeEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788200434; c=relaxed/simple;
	bh=IrKjR6m7xXXGSvgCENGFVTJiw2mo20w0QZ702V8ntyk=;
	h=To:Subject:From:Message-Id:Date; b=prqHqcWxaOndOYMAt0zFuAlNX3EByohgRm812aGmgOSJ+xqk35A7ZLOPt4MkkJ2vsdn585q71XwPvW9qKmAbCDyciKtKAzBl3FCQDSm4AI3VnadvYHkCnJGUbyLgmNhLN5O2ZmxTBnclBnIgpJu5BrG5XWLoOAD/v7CtZciVtjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jztg2ycy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jztg2ycy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C5EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788200433;
	bh=IrKjR6m7xXXGSvgCENGFVTJiw2mo20w0QZ702V8ntyk=;
	h=To:Subject:From:Date:From;
	b=jztg2ycyhdC2RUIzNi5COy02yCkhIPcBx4J6EuBCyRri8KLZUiyeeh5Mq5oDIbfwc
	 xLTOzdBsgxViEK4IR7rDwoEWD40FCntlcBJkelipBOcSmQoC/C/miYXyFqzMuTM496
	 xELE/JbBeczhoO5WceaRjUQyOiAyBkNsTlf1IGjporoS70wMiIcooWSImoBMAVn61f
	 NBTxGU8OPQO3pBX2KCnIfypWOlFmWxkhj3/or08nKx5H69SW/NWYVU+rrnxLDMV3y/
	 FvOa33Lu/oBV31inNoGFhsBSvvg4bJvfOAeKZj6oOXMk+LVi3I76u+MGpHuvIKj/Kc
	 uifAoFzRxJTtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F89C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820043371.28413.536725377089006691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030883477da1a7cc30e4eb5af271117d102a192f1d208ea3be2a08fe058ced1b
Date: Mon, 31 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788200433
