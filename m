Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FA5849C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728287754; cv=none; b=URaeTN5WoBwTN95Kxk9eHa4XYAAyZ0NKGw4OFBvgPCSwU0RUxdix+9GAvDwpIYQCv2QzjNXZMBU+3G+ANfU/mGU8xKpbip1wcM8henWvtQ3/iYWEhavQezIUiq0EJgVuBMOoWtsD6sydMZSERuweVO6E25iDIW+uRQQ8dCaHXAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728287754; c=relaxed/simple;
	bh=xtodCwEMWeoYydZfs0pWR2cjERaQq9bISxHgGWMSozc=;
	h=To:Subject:From:Message-Id:Date; b=W4XKkjqi6f6NxKzHG9FPk7CTzobHxl8GW77W6SqQM4AY9+3S0xsROet/oPBitKItGJjKyMicPuT64bbwATIV5ZOoinzNUelFWKBo0WGCfnYAdnSZAwxdcnmj0dF6fi29fq4GB+k7FE/Zao2Jz3w5lIsUltz0JZzpcqy/qIpgbqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmMsTD2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmMsTD2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE54AC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728287753;
	bh=xtodCwEMWeoYydZfs0pWR2cjERaQq9bISxHgGWMSozc=;
	h=To:Subject:From:Date:From;
	b=CmMsTD2folXps+R8feLkeRm2pRBQD1BWTFmoUXk8Q/HhgBEilvkiOCqV6L3aepXxy
	 MXrrLx+lNE/6zZxVnBPoAt8qOuYEig3S2Iv/qVoTKRJq8kZj/D2pIdLRKbX/EjjwIf
	 M7D0+bnzZKmSUmHmLDg4CRcWf/w6Q81Ry1QQIYKg+os4ZKX3npDPRD0eBFpZBy6VK8
	 X3THBFp27u7RyBwYMU70gn+RrxpPy+tG/rGF3q1hDAXv9y/NwPiN7tvuYDAFLEaTXB
	 MrehJYsWpMCtvs9hlrah8gSoJml9r1pbc0RvC/2lwb2Lg7EyhYIzZBD9eH98f672h+
	 ZE/XbcoG6GDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF3BCFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828775360.7370.16590292450427846171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41366665d224043c7d4b757bfaa572b14394aa114272cf977e669edc7b43c7dd
Date: Mon, 07 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728287753
