Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3AF167DB7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737563154; cv=none; b=kHORaqa1fWUaPgspIjvVTwDLupQWmBXG90BtPOYf94R7z9uuOnyeqNvND8Lwtir7GlIp6/fAVwyVeHbFanJe5HrM5ajLUgDpnyl2hpgrG2Bu8VIhiixqrIiwSgyVL6Zz+4b3WOi2w6XTWW8bGLBQH9KC+iKtgaMgkSPz82M7jwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737563154; c=relaxed/simple;
	bh=1Hyrl+fke2g6jSMJS7PwkwNW5llenPWgTmpn8/mBnTU=;
	h=To:Subject:From:Message-Id:Date; b=ByhgthccqvLPkWzQdcXorC3xbBsgvtp/10JqWq5bJz4j7kXU5PC5ShgtizqTUAQc7lArwKUCSRQA+syJ/e+QW1GwrGwMEH0g2ZYMLGxaiN81okDtJeng0i/l/wyA6fd5dp/N/J+ZQZJIeYDIK/rkKWSxXiSrNSxJ75Pb2Jf12UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eC4X0pYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eC4X0pYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A0CC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737563153;
	bh=1Hyrl+fke2g6jSMJS7PwkwNW5llenPWgTmpn8/mBnTU=;
	h=To:Subject:From:Date:From;
	b=eC4X0pYNpGsXnwqt6oBoCcC8WcCjt1kulRXuUwtbB1DI2YhkChKXr+i7GDPFt8j2r
	 KVAbohPmXs4TBN1hXpSpmP2MHG1mJ5/2fZakvDteuIJMiD7o3izeS3Rc/2MWO6pGtu
	 Gr4K8fTqWLcQX8lxkHO6XItLyjbNZeXX4+JPQ0/cXEmp/U2dUfyZoKt+wSr9RCGHbF
	 ecOeemN3MufZZOtiVxh+JTAgrF6wVl7TVcyGIrqVjsYS26Yve4LO2famviCXAP4p+z
	 V/MOmhVIwcckFafC2Sv+ZmMt8j6Z4oNaEAjEjDg8ZWnVPArD9QR0N35IqGEibUUUSs
	 ZNBv/t5URNrVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939FFC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173756315359.25219.9531345639761949984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b607b27be7b1e47c151688d0543bb1557cc0778eabd88a892aa8b9b94a27a4d5
Date: Wed, 22 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737563153
