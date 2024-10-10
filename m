Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275DB1CEEA2
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728567354; cv=none; b=ET77edmla4K9NBlaWZ2NxEXWl+gw2oD/qur3fdn1JQJecfQ9irM8jv8Tx6zxtcRZL5PCSG5huGBR0Bskd0zHqmUYCwOcJueF+rBsDSrCjNbL741tixyBX0jy4UxZYwzN/Kb6tUys9hIQ5n4Ufz0ISUZJbMaE+8Kx2vOLJjW5stQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728567354; c=relaxed/simple;
	bh=g8wVfXXacVQV4RGs1d1VSISbm0m63O5BTJ6PhyWaHBc=;
	h=To:Subject:From:Message-Id:Date; b=f6QPYJEOPMAUAHim8Jc4V2OcBao/Eq+d+/4yFmrSILuLKpkvkOuLEN2Z7tgtUrwP82ave/A/L8xJ0Om8g9xHOOvUWAJF7yvd+HsLo6PCDMvcFIE7cg7GrvWrHUfJxwru0RjHd0KeMEsCQo4svWJ6d3VRa2D3Bf05RWFWMzRHyMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubYaNnqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubYaNnqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9964C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728567353;
	bh=g8wVfXXacVQV4RGs1d1VSISbm0m63O5BTJ6PhyWaHBc=;
	h=To:Subject:From:Date:From;
	b=ubYaNnqJj5GjWJ/GQyT9Pa2PJep8XfZ4UuZmZk2NnekJDei/3Kgw8PO/AK5SJIKmH
	 MlJ0fnfeOsHcV6n4IxhD/IUEBRCm+fVuVPF/pjTDPepJo4CvPpx/q3hiR902lDpn/o
	 joeiqsJfmfk/mkbPUG0SMitdsUsb9GR7v4Z0UxauGzoIJKRRwF5cnwUv7ypgQFUcHJ
	 CfytR7dlmpCE/iQEGT6q+iL1a/gz0jrqqNAacsbWo5ZdKSmI/NrknGYS0qHmvlAdXo
	 6ZaV2FTxhNq7jlj/VgDHBzbPExaAoFCTF9pGxgGmwXYM0A/xVq3XZe9B3cg9y14jd4
	 pX3xX8jcFhSJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960A7CF11F5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172856735360.18143.13126314849351131110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8442635d560b7952a42edc9d101c20f218e739c9a2be941cedf5a28c86aa85a3
Date: Thu, 10 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728567353
