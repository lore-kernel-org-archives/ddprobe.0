Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2320A3FF1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767452034; cv=none; b=SPhaUZKjd7uelbO1cExHuefetyt3gAU3sZ3W/CmAX3Q9GtpGLmcfGNVan4dwKIRGxxDLHMBntmhc1vDIPZqClKAtRBMXMJfDyQxDTd1Jv8LpsqPUcukADbQxsfISn2VHQk/ZH6O2+uFH5+qHz/9JRUAOBb4vH7GXG9PDi67plyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767452034; c=relaxed/simple;
	bh=SJkkwNaZQrVk8mksJc/AryAB0yJJc+8oij/2PXwwV9Y=;
	h=To:Subject:From:Message-Id:Date; b=QVfQC6ZuJW+wabFbU6YZCRd/OhNHMemx1miVVRa8EsSIihB0CMWsqnpOl8LUg5KwAH5vmTps6jNFpHx3roehxhsSv38eTU8Eajy2+hMKc/xvaC+d4i10YOpCpAJ3gKwdqVCqJlb4/HayqAOWNd2yEnACBzAc3UzBvEhqX+GVzZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgnLcBP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgnLcBP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A9AC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767452033;
	bh=SJkkwNaZQrVk8mksJc/AryAB0yJJc+8oij/2PXwwV9Y=;
	h=To:Subject:From:Date:From;
	b=NgnLcBP+IHLwrjii60dqYIRoL3fzVzR/4SH0cCe6aSOZbI2k8ioydv+lFwXip6CSF
	 o2k0FtAX1XWauRh+SgnIjD7ElBt8GAFTVCv5G/Z82BAkz4jNfAzR5g6dCXUPkoMOZ2
	 tDQqwx28zJbSlfh7wgCmwIJLMbQDMyykom9lw+vlLMsMN4HlIfVvbW2yAO+Gnv0C9T
	 Ymt+n11qI1J25FHp+OMng8/z7MLugN4VXlZyoqXwLkeF6rlihe8pXyvPfWPo62bFg1
	 4U4M/HIqbHcb/KJRJHzs0TpB3P5LsEeQUrvjM81PTHNZBiO0gNf+It0hfSHQxqmEpr
	 D/OjPX6Wqw6Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95164FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745203358.21774.13950528656302765288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 163ee3ed37a6ae187c522e4c7f895882963b038e5772ac71aef57fa22c8bc2d2
Date: Sat, 03 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767452033
