Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDD8EBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734172554; cv=none; b=J6a/DE70qGH20PBlN5f//Z/SO49xrV6HGjsGwquKlZoIAAvAci9y/XraA3LsCVxX/Bfld7Lh7imAA1+EJK7Dmf65UhGA+YpJeP/7rMul7PiejiCuc9iLP9l5uXJP+wbYKY2IBXQYv1GUWVSoizxcc8Kp839nU+uK4rqJrUtfUCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734172554; c=relaxed/simple;
	bh=PpTdykrGH3TVdcAf1ZEu/fPVfY0fCEB6dBuepV0M5Sw=;
	h=To:Subject:From:Message-Id:Date; b=VnC/oiD+7kbFrS4HZa/vJG4z/S1/gQRXJVQ/Oy/p4hdnoebeS3U0alhTqC9QrRHlqxKx8XofVKQfRSFrmr8f/eSzz8SMdTDrCShaaCMpDXtbkaIHWlBw1GEhuzR2wsVKQ/M5DOz2vvIsZwjZRFJ+5JpTt92C6AK9SM4+m7ONmMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XShRBmk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XShRBmk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC4C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734172553;
	bh=PpTdykrGH3TVdcAf1ZEu/fPVfY0fCEB6dBuepV0M5Sw=;
	h=To:Subject:From:Date:From;
	b=XShRBmk3vAc5ErBpVqmKYPAL4T0Ib9qtTH+GJ4SHEP8DVJPeWfM82JosSlqkBl2DG
	 SN6wfRt0SzCVeHnsLpo50O9XXtdIEzCdR8iBs5QhQdx5InRfQbEFiblRdU4CIIFrRO
	 yAO7B4LsBdKfIY5bZtH+KuM7oBTLLML2l72C2BPMwG+hR+LffEOHFF2BTNWSr7KgO8
	 /Q2jVU7ms0gKXJK7C/5tlGUrYHZk30Nbv5fGhb5tzA0z+Bevw+VLoTjwTxewdlFoEC
	 YpSoTqVWUUJ2KHz4AUavDeL2Y5BrAd+AV0zoYSr2VGJG90xFgd8/W0lfCEPaIfi1q3
	 I4Cs6YDs0N+7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B80E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173417255361.29239.5846570992120482601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245bc651a4c742cad66776a79ba49e8bd490ced51793428dda469b5a9f72b1ea
Date: Sat, 14 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734172553
