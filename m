Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD18DDA9
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742926794; cv=none; b=ItI9O6sPl1WSu5HL7WM1gPGbNSwc+KyzRQhzMBo+0dRQ/0bCKXgj2+MO1SAK/EwuyUQy4HKXh381Gum/+lD7v7NXqrQWzecQf2wmbkYf+88hkAPR3kJvaEDNbyVMnp5pzLuW0V8hzbgnccFqL1ZJsiBIcfEbQmBOqmkdEZ6Y/dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742926794; c=relaxed/simple;
	bh=AmpGjb4aSBqcrMIPOc+dHqpy8h1kA9/gLG8CDJUNVjk=;
	h=To:Subject:From:Message-Id:Date; b=Tj80rCCCay/t9ZLoR+wQ/o7lmEz++tPZb8NoqOBsl8Y0Hqy2sYvCPUukLHRbUKd0kTQrJW2WswZy2a38/rOHGMxShsZCj63NJuf24RnCN/cOtTxFeG6thncUN9MklmWPKuMw0f52jF8o3/mYVnF1YAkREN635ZFPApMmcWKfv7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8hv5/oY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8hv5/oY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACEAC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742926793;
	bh=AmpGjb4aSBqcrMIPOc+dHqpy8h1kA9/gLG8CDJUNVjk=;
	h=To:Subject:From:Date:From;
	b=N8hv5/oY/md8/aAaPgAha0X9Ax7seV5NETjOZxQx848UkWP8WdQ2IPQ776iYstqaL
	 cW11GlTBAeI+LSV+GB8kaTv7ph9GOpbL+VDy++MCtCbgPonR3J/G4MwxE+Y0S6i5we
	 y4GHEYllJZCKuS/FTs4F3ZVs6ZFQ5PFN3X7QtouMl+jlcy+TIXRvVpx+zkTr/aVWRL
	 pUUZ7weCUf6W8OTEpJ56hOIpOB6h6I8vVL69KMvvHUosHmhEE/lGhtGy8TdvdpG2Pt
	 QTJzTOKlu+OtRNfXkWx/mAuUPUYSsyDBv6n1Ndd7VsUx6HCHt7GuoHHXJhUQbOWlMk
	 Z83DMtTr7S3Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99153C36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292679360.27253.4640662743384805354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d4a590f20e17a1a91c7c5a8f6072e6556643e5ffbd98f3e02e4c0ec585c40e
Date: Tue, 25 Mar 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742926793
