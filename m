Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA3123F36E
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740778134; cv=none; b=Pn1ZOSvHUl2f3+bEUQwNiKq/PB9Gi/p35SuQFh20sYbAxLMHa8JQrOi/+GmKWIv9JisQfiF8pOO/RDicOrHrAWXEQbywOq57cN9cCydyy9mP4QeEGU5AMcgR93lTrmcvENWe3ekdDU5nwQWISrZ4wVr87/Dx6amD4c7vB5LV6IQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740778134; c=relaxed/simple;
	bh=07BGBp6a2p8MTBj2A4SrEuiGpsiwhnLOVKy7CI6WjMI=;
	h=To:Subject:From:Message-Id:Date; b=psUbbQLrg9G/Lav/iTb/HM3Kj847lM+xMOO6YIZed9qHnYUYj/VmHPWuGFZ+MuS/ZzJPMoNNAk1nghvfxZJOHcQVNquCTzB21mk8h1rkA87xReEU+hwMtAd0gx5HmoJaPxZG2i198UbX27PTM60c7hXoI325sC1iTPANOjSgGVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrMV5aF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrMV5aF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8667C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740778133;
	bh=07BGBp6a2p8MTBj2A4SrEuiGpsiwhnLOVKy7CI6WjMI=;
	h=To:Subject:From:Date:From;
	b=QrMV5aF9y3it+U+9fIAK/deObS6uXRNT2v2unYtJ44MJzK1pXk5XW6MbdVvGnoJfk
	 QEaRV4xhdqO3VAYk8VRV6tMPfoFaOFNVbUIlRJdIWDXc9e85nYuJDNxnEcGz/UdK0l
	 1AdrOfXRvfH706tgVLVi2hU9X6ouXbf+yrCes6xDmD8oYhHBXXL3nVZVMl3Y5DEuTt
	 l8OPI1CThHk2Dh9CSjo3UGD4tu+Zb3THNLerIJ4V+ILbAxxAV5c2q+uMu54DLe6+HW
	 3p9Nwd8M6DSkcaRwHSUqfupw4/0KHVoaIImiQt27EqXqL0y6Y66b/VTHjfDSG2pc14
	 +bDJ++pe/yvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A8FC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174077813360.23015.973965187068637565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b886d1fa98efd06ba07bd293066611d1471b1d4adf016c9e206f727749de3a1
Date: Fri, 28 Feb 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740778133
