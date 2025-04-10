Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB701EB1A1
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744309794; cv=none; b=WPlbEaHKuR5xf/2nO81ME+eRINA4g3WPolB7R0W6kfulBBz2Ps3aSOUQsSJjEtxdOG8QOn7WYadeLEpBNYfJpFGo5Ftj5L7otsPEQitZh6ss2YE8o98XWs4V9/6qPa/7YXW3LoqDNome+ykkdnB1LCcRIps8s/kvKJbpLOMF7wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744309794; c=relaxed/simple;
	bh=GwckI1tSm57NjZ7+MGMmekbx8+wSgDU0OpKw/78BGSw=;
	h=To:Subject:From:Message-Id:Date; b=NPCPUp9PJs8Mv1MWaF9r0zT2XvVu3wSWIZQmS0QXvl4f0s5b0BxoE1Ssu5qFR+cZYcgwUhG42ESCeIEqXauD2z/Rk3cyEqS9pF72MRImdJhaTrjkMqm1STtX0qwBQBtO+lR2Ks0PbgcsWgPM6rc/Nk3SL2G01I3dOK3d89WAM8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDnfuHUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDnfuHUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7729C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744309793;
	bh=GwckI1tSm57NjZ7+MGMmekbx8+wSgDU0OpKw/78BGSw=;
	h=To:Subject:From:Date:From;
	b=tDnfuHUx5xzyadyKFNqFI1iCO7ki35pM/+WG8oIbtna5XzZYL4EdBCdvYRKGu3SN4
	 zxhiycbvWl3/FMMZOWDlFh475rqPgG5+sKoVgZcJCzFselPxpHA4wg2MFSvuppjgKZ
	 l95U5I8fhWfF/+YFttav0hk15sXVhhdrfd7moz9qMy/4a0QBFllhV7QROLz1wQd8VC
	 M0iXnhPp08IZgTVmdoL2lihObq13uT9o8qYqDsZ2m+31Q9f6VicN4+tq2br7Ru1FVi
	 dwiHduLObLvn49NuyvSsvVia3uOssG0mIA3JmuaxnJC25WScR4S59GaXRFvsaMuOrI
	 HohqH5/J5k1TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FB0C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430979359.8213.5631947122178562758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28641e8d3bc03d4dbcec0ad3cde39880d5648843232fce8f4b0ed476d29b82f
Date: Thu, 10 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744309793
