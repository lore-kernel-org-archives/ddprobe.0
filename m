Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DD6DF49
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752899394; cv=none; b=gNcGHYSDmz4sak56L9wGFYsjMjDyUCdJvhc9kPtM3R+M6ctC4j3ekmXLiHB8wFTt3Ue/K+dTgSFoPr7IKbTKIfrBFOZlB8ylNzzTBa2z3dNQNblQn6cg7K7TT7pnpGRGfxoleyuOH//bXC6I64xrt8M6n3DjmtTViYr1JKTMvsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752899394; c=relaxed/simple;
	bh=hFtBm9jmjmddqK9kIiMy7ZhTLAQcUDa2NeaDegaAsGA=;
	h=To:Subject:From:Message-Id:Date; b=Bwdbfj2r4gBVcFINt0dXXys6C+6MeuTqNke5pa6kQeQsxW35y5wRPXSOpUG6W9uSSTRNOwmfx2UcsMLxZIVCodt1rpgJiiyjvZbbmxBXJC92mh8ULIEnqEVP5DvbYi9gj6goVRmZX0vRkwehqs0M0YFGGcAS65ALQdwD7BtLAPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsWQGkyD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsWQGkyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752899393;
	bh=hFtBm9jmjmddqK9kIiMy7ZhTLAQcUDa2NeaDegaAsGA=;
	h=To:Subject:From:Date:From;
	b=EsWQGkyD2GE+YE+rxjUJnbHib8pb4qjcPX+f3zAlxSDrNottWWYDlBM/o9vp9tdXV
	 8iqmosAisIKGey6GIH515A9lsQ4WNB2nWzTwZOzJ/ouSN6Km5Um6CQCS04P/En80iD
	 D6x9EZYeUHMcwGebDfV6XODGPYhJ/qIXzCZAa61MtMJzs6x3nHj2st8yQOC1l/xQFV
	 rlYxRrfn9XKBL90hN89ff6nhYo2/AHvVZxX0ewM22ZKZ7Xn6C/o57468Q4iXnWszP1
	 X3VwlPqXqq7C0A+pz1YFee5MEOro6bEBxeaQp+3+Phc/DlWMN2snKKEhg+y1U5hi8d
	 VEHPHseVyUUxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916ADC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289939358.30418.1836748537336699762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f2eb5d36dca690567522cdbfeaa69d3a75d4f20099eac2723fe5eb5e8be1f0
Date: Sat, 19 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752899393
