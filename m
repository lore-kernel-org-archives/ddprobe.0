Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A22EED8
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791704434; cv=none; b=pVe5c3ANw3jZbOL1fipZ5Rz1luTesEfOCkqSfyTJFxdpVMzeKQOcYJX2C6sPF2JDwwxkOzmhwaKQVwFX/inAbvhUp9m1acARFpsAsk2yR83OPflW22s7JPKSMEfZCY8zTpmcVU2tgUvtct0nIBfnBgersrD6xHdr/7ftFuCvF9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791704434; c=relaxed/simple;
	bh=3iZOlVmq6nHAiop0XhSG1zg8sltOlZ4NZdb5NxfF5Dw=;
	h=To:Subject:From:Message-Id:Date; b=qJFTg+Su9fMmOmGg0oCRrus8qe9SSgZL6FcX0XIoaGFIJrQf9fRSf2Vuf7ICZUOLJp8M7CRMsTj/c1ht4kqSgSpacpZ8gSAkqg5fqGtLXTwLn7/B3DcxMmKItdXgHkkE1UtlCm0BTtP1DmDvRASFxWj3qdp+HrfHfyTIO+qzehI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUOL8wQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUOL8wQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2325C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791704433;
	bh=3iZOlVmq6nHAiop0XhSG1zg8sltOlZ4NZdb5NxfF5Dw=;
	h=To:Subject:From:Date:From;
	b=lUOL8wQMGtG/489IJlHY8TuAASZI1DqVENMUF0vDwJLpcbVovMLN1iIvV1Ogp/tcX
	 0N0kq13c/Tl0NrznhJ3Z0vv11iIRQR7k0bKzPyghYUJeFCnt3qrZbQ9iPIRDIjEZ+4
	 IC/OwWwvF532yfVFVPmDWqTyZEH/EuBjauCRm90823DAv/gKZDo7yEDL6c5L7AaOoJ
	 50essHkMQj9sgxoFtFuorV44eu2DR29p023iBgX/m2GYPCtr2NtvOOcYxAVwPfIhXZ
	 Nb1C5qL6yrdzfNnxD26nlwec6cIwrbb+5gofqG2SO1e3bdzzBZbx+XPbqfavYjwEvt
	 yp8tGmzH43xuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A918ACA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179170443368.17109.4080242644300559866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbe395e943c04645da8b912350267d60b3a6e75f8ca42f674772341c4556f63
Date: Sun, 11 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791704433
