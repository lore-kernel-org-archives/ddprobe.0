Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4088A433D1
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748605194; cv=none; b=Lsn+94tNN+m6mfTlnAvBHA8d/WKrwonjxme1yjhHfCv1t5geUAc88MtXHPq1fGVbYuMxCsA8peg20gq5H311NoWgCy/+RJ9IlcpIgk0CC37t3E9CHNvnfyhOEcoRkEo9M4BBPGJkbbSQCOwbXm+iCWvARntVbWpji1Nn4OGiu2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748605194; c=relaxed/simple;
	bh=6VXekyIFwrgb/6zKJaCRH17gBdec8kx88LU75ps2v+4=;
	h=To:Subject:From:Message-Id:Date; b=qFQxJy7Im1oPCDLJVuQK2vY49gb/xFIB6A/zsg4Q2FUTV8cOYZVVdwTAc1hQIMizePyNx2eFtlwXYIqHD30bJFb5hK+YV1OwRuVy/Fh9Iv3jC9I7ZFRogTsZ5JOm6WbZSQMu3fy1YmGyTeARSe60/l/6uR4t+qm+uTqcTle2InU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyD5Qm+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyD5Qm+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA80CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748605193;
	bh=6VXekyIFwrgb/6zKJaCRH17gBdec8kx88LU75ps2v+4=;
	h=To:Subject:From:Date:From;
	b=nyD5Qm+DzTrQHrI7IT0BP/vEruhLdHeG8mtB9DtL+i3aATWuG/O7r83vULRWk/RR2
	 AkHBRPMqj3IwfeZbyuT2S6BrBSdtJ+ga+658nK9sW0dn3Qx9ob+NmLGOaABIHC69nh
	 mxqc5YjUSX4mPK5cclh2m7OlC3llMtltcXobRiSce/x7/+uvIIvbZ6Av003ogzgAE1
	 5qvMGFGKHv9ydesTxNAsk3AHhPbltXplZls0gS+NdxvmUe5vjuEHnLj2i1l7+ILRpj
	 pSGp8m1uCid2PMin6cL2jD5gdtOb2kFtADdMuLfOhu3BXHLtJnDceCZEvHxcdOzVPB
	 OORG7TN6vmPbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7004C5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860519367.12521.6183933506150312189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0189f3ded3e7ddd1af3b5b20572e1611a80a97f2faf7bfae8c6bec5beaa20cfa
Date: Fri, 30 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748605193
