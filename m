Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AE4372
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717532783; cv=none; b=nDnl0tQ7JudVHI0mvv5gpHGcIXsSw4qB2gvMXB8x1X82P0p59h16vInXdzqS6pftw3dAf6ZCptgWfNLwCTQKcSeClbMI81t1uYfAOmkr/e5ForKGD+XXkdzLpARcqyuWHwE8RLUZadkpL3ZFKJMecx5kCEc+ceDXueL9lPTmhNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717532783; c=relaxed/simple;
	bh=gkSiq61R8cKnzjnBhL4deMqxeotGeLKVC9koNtZ72Dc=;
	h=To:Subject:From:Message-Id:Date; b=apPNVT+urdynfj9c4lgHIQhYWEE8JhPuXfWI91WiJYIXBUWyUHuCSvZrHfH6kUt45x4gD3aumy9EOUQUXEP3pUtsU1GJ3yvTcePsyLSVMGjRasmGPUElmgd8L748Hdpn1cZcYCAHRxZvFBIG2Pru7hL06a7wZALf14IdQpvwNAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rvQC0vmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rvQC0vmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6FDAC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717532782;
	bh=gkSiq61R8cKnzjnBhL4deMqxeotGeLKVC9koNtZ72Dc=;
	h=To:Subject:From:Date:From;
	b=rvQC0vmOFRWZ6TbHmsuwP+nqceUppQg5+w5Sm4gDMM0Sn2awCVJ0ddwS4rPvCRn3d
	 JBsaMADpWeba4zNYNV1NdAdh/hahdoiV3Cjc9D+ShZ4vVHs9Tq2y8BAvodqoLpjS7V
	 JW1vxWnRxczX4bdIhwoIp+mOdpKW7JivgXbutkSqqNmvFA+I+6WlsI7PaNwU1snGTw
	 0yfjko3e5/sqqBVjaTRq7DIkWMDPZfwkG2WtBMY5OtbQqABefTLH6EOiT3AaXK8UUI
	 THE64juB+RYg+GqAGrqVqIDzYjSTXlufzmI6skoJGZ9NRMfA9A3Fw3x/2Yne78sxEt
	 KLU0aCQ5N20fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDBBCC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753278282.26005.11334189783288434811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f6659338af902622423b9409fc0b338ef378b188a8931451a672092e8ecedd
Date: Tue, 04 Jun 2024 20:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717532782
