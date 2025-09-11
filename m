Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E1B29BD89
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757600995; cv=none; b=eGkXAU7OEMpPy8qyjMKMQiZ4Ttw32tOJ95D3/WTQo2Xfpl2v/WmShPT96ks5M5ZUUJOgNqroqz0UjYpu7vxvMu5qFvy8lVEf3teqdFuN1AbCsolqDq6r6eRgwFYCeoCc95EcK5uMMLdxgd/I8idRwhvihbdh6WFDDANXOEkuTXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757600995; c=relaxed/simple;
	bh=VGKNi1pSAqOW2nfNzCEG9EpzaG34LgFbLAPFaFt4BJ0=;
	h=To:Subject:From:Message-Id:Date; b=kVU5m4Lf/ZBSOaDZ3zxiXYtgSobdFLKdzXmJ74s2HkroNFGq24EamzT/ghlVatLtbcL50tIhWm3SVkjGL+/QRcL2NJo7ma2q73kGHr2J6dzwqOTCRJ6MyS7zB8MWs11LiRJ93psySH568sJT9ohG9wdtgVtbCxwjIO3jz32Bqhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXiFyzT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXiFyzT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A8AC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757600993;
	bh=VGKNi1pSAqOW2nfNzCEG9EpzaG34LgFbLAPFaFt4BJ0=;
	h=To:Subject:From:Date:From;
	b=PXiFyzT2W51mSgXXjNlBBccy80SjaGmB1cUseU1AMi7bgHFKSBDX6L9Ipr3iWT5co
	 AMfx50t40We8bxWh3wbznjInnf0aBS1hDKVckizdTt9soK36MJVlFH8ozYskH5GyBp
	 aawmpFB+Qv79mjivDSOIzs57DW7d+qFPbRxoSZFVAW40ZIPwQOA1ObN08KpCD0NS+J
	 7WVJ356WKD5FnIri7ILRP+pScQjjwn3nOt2MJai1sbol/1mQx7WR64EptOcBW/CzFr
	 NQhFTxv78oUI8y/ozYTyn+ZGAfMaO8dfRF/dm8KJgcbhwoIO39QH/v4iuudedVUDaQ
	 RnSOJ8CL1U2SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FDCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175760099358.25224.8662002607375723532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97451b97e8c744a8bf6cf07508dc51798a25b7752a193354161c432883ac2032
Date: Thu, 11 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757600993
