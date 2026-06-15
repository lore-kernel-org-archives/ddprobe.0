Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6EE2E1722
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781505994; cv=none; b=aQdpQNg68ywxt0YTdOR8xDQg1RZTFKyNHmfAfjGTflaf2U9TPVrtE6MUfULa6xEF+9WBFL91gRtO0/Ab+LgQBWW6tXcrErnOv5xrFdz/gIG9GGEtFdRk+lo05j5ePMZkr/v/2lz/Bmq3FWzXpqVxqFCWfOiLB9T29UjXYdkKkFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781505994; c=relaxed/simple;
	bh=VnRrcAr24jHkQrDEzzI9Wh5Q+90VSSgf+ey6PiGbttM=;
	h=To:Subject:From:Message-Id:Date; b=EQSiqJpSy6n1dxEkuLBdCyWiSJyHYJUAV1l6BdfCnYvk834Jttyjmn9cLey5gAQ4CCPOURcF7kEyLO2f2G6wwQrPK4MXWgyfApfXBaetm9ixtvrWTnZgSqfjRLCwYXh9bZut/WOLWfTZncAMHzmrnSyaNTdkl4dYUzfeWxXMC/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I64hEHjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I64hEHjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8237C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781505993;
	bh=VnRrcAr24jHkQrDEzzI9Wh5Q+90VSSgf+ey6PiGbttM=;
	h=To:Subject:From:Date:From;
	b=I64hEHjT5dZmEUpw1IDdB88SL2FAXCIlKNVDpilL8QSlpf3CDztZRhXCB2Q5OpR9d
	 WviEPjJkBh9gxo309jxrE6Th9eg9XTezRwV2fmsMGIu0Qp2v/oxjUYxZXH+632lsYz
	 tE7s/MBJeA4BIo7jr4K0DjblLWNkQylgYkxcSG5VngmHTvKZIS8D41fe4QgBuoyFgf
	 HJ+QlHA4m+JRuzLVUxSo8hNiSIpFQKOAyIrHmRw97UJWCsra415Lyi+UaLkA/Z6wcu
	 qESeus2Q+096uRaPbix7rCT+uotBpMXubd5+R25dUk4iaRbT7IN8oOkKHIXfiJjZqp
	 GAl8C1LdlLR6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F88CD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150599371.21716.2806184683947487199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a70ece3b1d9566d11b436b6288075f62c0099c5cc0eaad51f8f6f7a2db488e4
Date: Mon, 15 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781505993
