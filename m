Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C5A5DF05
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 11:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713182363; cv=none; b=CKWnkoLao7g5o5zkI9Ut4SqvEAy+T6aOlFjWpfipKncvmShZxd9u/LjuS2dxziIgRiNwQmAv05x8sGTeeVPovWlKNsMshgUP2y/EmkAQVOQJExqko4BRDwR2c1L8HhESn2TI2NKUXMIU330jJUZibdxM0ntpiiKnFK+35GCF3pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713182363; c=relaxed/simple;
	bh=rSjsErTLPbXBYe+MP/N5qBd3JLWheoo+QlTVbXQcmTs=;
	h=To:Subject:From:Message-Id:Date; b=QC0oMU1ZNdZHDLgHtxRqi6nv3fgjmE+JBpiYDSP7QtvSpX6cA0dCPZg8XcSdQXXDIieS3JdbICTRdsDIf6rXJPl68U3U67M1VsMhkd81HqzVse0pkm5YThls2GD8qRVPVBtklWxDlQ4r5wBHDTMnauZMlPBNv9a2eJBklKxbWnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsAjBO8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsAjBO8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7CAC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 11:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713182362;
	bh=rSjsErTLPbXBYe+MP/N5qBd3JLWheoo+QlTVbXQcmTs=;
	h=To:Subject:From:Date:From;
	b=XsAjBO8iEYHeQmP+9MNqL0jELn9tGVpIvyRDygBHvrar8m7bFfCxGu3oeykQMvsYP
	 QirH8j8MuvF5aP+RiJG1tnpc1btTMctrBxq4DX+1DrXLr3+td8qRnixZ83IcKMX2LE
	 IXEWPHPC2hQ73cPmL9ALp8Or9zu9B5DT/RyoUXxvdEFyOU/Zfii5PqVYiSBrGnBiO9
	 oyG8XUh7eOYCHQpSKYPLmamW0AodlGyaWgo9b5c2I2rCHrcQXBmyJ4hNtWcUWMrpuc
	 I5jwkrmweNFQsqRE1qEqDALLM/mTIdh8WdretL2I9tLe/pga4PITFqgNqd6qYLhQ0j
	 hRGm5uLr0c66g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B987EC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 11:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171318236275.4160.15537401459522413237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d927f5119c26ca90c848811d27ee1fee3d914d33e35df050a08ec9f2d19b03
Date: Mon, 15 Apr 2024 11:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713182362
