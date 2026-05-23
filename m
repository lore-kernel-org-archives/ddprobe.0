Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5564A1552FD
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779496354; cv=none; b=D6cgPHlb0IZTeD/h+McY3+qNli2PZq6dMdHG47c/HwlvriiqEEj3wJTKHAyl3pfFoH9vJfCrBjV34ARE10IM7kO4lyFRth74SQR0UbtBrjTYlQSKhJ5I6r/C9dxx5ghgwo/1ABgiImZB5pegn3IJFv3JTj63vIoPSmqLESKrSPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779496354; c=relaxed/simple;
	bh=wJP4Rr4pHfNEvW6HhmjOoV0moTqGcojHGlkU34WrzN0=;
	h=To:Subject:From:Message-Id:Date; b=gAYapv1z0pGBgbLTQuvvIAEbRm6SyNbvWGZluURxURVTMudfThvodI8Bsooo3x0OmV3cftql06DNW1iTPro2Y3W12SoLJueg2uB78TrhbyjQnsKvaHNuzPZQ3G3BMtfy0hCsuD8LvHXUaitwFDMPraL3ZNvz77JpvVUOC3wSAzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKdRFKXO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKdRFKXO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD64EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779496353;
	bh=wJP4Rr4pHfNEvW6HhmjOoV0moTqGcojHGlkU34WrzN0=;
	h=To:Subject:From:Date:From;
	b=bKdRFKXOCCEdSCIe6cqQQHv6Z+AaPQlyMw8I+7QktYySrfH0XTIgLQdfh0Mtv9pcK
	 RphLFpLTyhND+EnJ99mP6m8UdJHcVRzB4knSUgt1FZnIb1nVaTpNLPfrynMq4DXUEV
	 lqifg4B/oVz0nB8UuArPfl94EF2kePgSKP9zi80RW4zX7pM9zLl/CQIn+Pi8b7KjeT
	 JTPLD7zRs3pxlLH+FRglPSfQvBMvHdhCUhLe8+JCs7DaJleoZ1thPGMAmw5cmWaVFi
	 lP51Zi/JC0k/ub+/2HBZMfCjUfnU8YHNr30qtbJ7YmlRXjLje7MRMLCnbwY26BiIWx
	 z1DwKx1Kt4BOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE6ECD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 00:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949635369.15615.7277372988580266913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ac4753b431aa87626363c38ee5d68b2f117f02a80b451ada17c5ae223fa241d
Date: Sat, 23 May 2026 00:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779496353
