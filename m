Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCB02E7179
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767337433; cv=none; b=g2RLWOMw9xrdIkbUKdulTXZFI7z6OW8sLs6iAZN9F6GMdvt20kcPFH3490xx0Fv6xpjppUevtsNNozPuGXF3CDGzZp5X+3vQQQdYHfZ6R/jmZWqtV2m1eI/QfSOWpcbUwMpQ4pya8J9IdRtUAZuAPEg9ZOLRmI3Q/DrWJg+ZzsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767337433; c=relaxed/simple;
	bh=ZV4C0/beUH/VlFKfznCmhwpnlr9trQDYMyYcobQhc/Y=;
	h=To:Subject:From:Message-Id:Date; b=peKuxsVh6LXGKIbgj/BUfhnBxWPH66rYRpg2g0a953xj8zM2xYCp5LKDxF5YVl2XSny1NMr11hF2c0dqU9hmsgRYvtWnPxhhECimwSVnBW3fnti9aKMP4vgR2LEfeZunhumXUIVEM40rkXBJoWHscCdS8N33kZ1sdhNMDV4hxEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEbX2SsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEbX2SsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2CDC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767337433;
	bh=ZV4C0/beUH/VlFKfznCmhwpnlr9trQDYMyYcobQhc/Y=;
	h=To:Subject:From:Date:From;
	b=AEbX2SsFlsakz756ASGaIhVPyAfsyx2fDLVM7xCuyApxsj53emwj7UjGWlk2WsYB+
	 LgEyz24zexjV/WFzl0QSHeeU+KHDV/016iWtpB+zb2kjI8jxJaoIXYULpkywhA2uaB
	 SQ8J6Ti057YqthlT+YPDd7KdZQV35McUhnaH69OX1FUxAJpyuC1o77X+nnDDzSqJ8g
	 enGisSSUmgkIEXkD/Eh5r50A3npuhl//kjtJfsIVQitdWf2M2owiWoqVJtZmqhqNAm
	 Ve/JBCiplu/RwHlrrrRL+JLXNp9KFi3upMCqo3S038zRkD33JlEvWV/PfqV/BP1Ymz
	 NbuVIKF0A4daw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D99BFA372A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733743363.22676.3788708350546364517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36ec4ab78dc1f7d8968e6da46a3869a5697413ea1d099beebfbd5c1d1873a26
Date: Fri, 02 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767337433
