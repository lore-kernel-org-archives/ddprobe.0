Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FDC283124
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764007914; cv=none; b=on8LycSRxlgSLSRiggGGqZ0EysMoRX1BN9jkj8d7tqFz/Y6i5e2YNLriLvF8pWWj46bIpo27fx6qhg/dTMfi8duJAiiJNGLAlyK/5Fe4DF67gSuhXavNMVXSfqDpQVYyK2FK+Y5xFVW9lHLZPH140KZI+SMn61en3GQfiP529g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764007914; c=relaxed/simple;
	bh=qdIa4XoTTE3QmHBW6SjiKRf5bH/PZ4x+jWw5ntKIHP4=;
	h=To:Subject:From:Message-Id:Date; b=aPSfjk1KyYwBpDuDrRCwFpMhnawJH9U87ufAD/wCzbf57C/BMItV960oTiRtELJM9A6bc1WZFWQGPnjxnhnZVvVoeTlSNMsOhL3gUJGGR1mM3DS/oGO0PJYLTtUsqP3/8MoWY1jPnm4pIxUPXB+L6P7D7HQu2J6yKKbjMTNM6qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQ8mbYZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQ8mbYZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79D5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764007913;
	bh=qdIa4XoTTE3QmHBW6SjiKRf5bH/PZ4x+jWw5ntKIHP4=;
	h=To:Subject:From:Date:From;
	b=LQ8mbYZ+gvAlcJ7PsBCzNSMpybUbOhNR4UVt+apBNIUhvDDi2ciX+LnU8QWvwgozn
	 bYgVa4U9qXId7JPMtgSRRpHlkNIGdycrm298iyyCZ38psKGRGEdr2DH9x1iyHfi4qi
	 +IlVoE0cJsDlajwASKtoAv6xnbK2An9BGxqxA/CKaod2tsMP0M7iWC8MozN7MJ1ZQm
	 cqbaBAON+TxYqgFGBrT1OJksn6L6HM5ImKnIK8N6c2qSQT4YBdsu5ZPEaOD/U8fMfK
	 pK/cSiYyzwepYewkInbQKsvDY/auzjsy1MdkUupDR44p2PAZqKeqoCmWS9ZktTx+7J
	 ElP29UEDPWTaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A98CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 18:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400791359.29464.163639741143049765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6579039d33bff1ea3df2c3e572e4e09a5ec141a526f0ea2ce2758f9d859a2855
Date: Mon, 24 Nov 2025 18:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764007913
