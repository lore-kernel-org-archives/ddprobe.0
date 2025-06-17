Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CC2288C06
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750145995; cv=none; b=lJqzzQ+tGLN9w+yakN6+nlX6IKOcdMjoGWkSTWQdUwtZz/PUB+hPGyknPDpR1KavsS/vTgZqnmd0aWpkmx/KOREeloSdmX5aFHO0WA/D7vRujrYDwmfNaPHK87dR7CwKSNapopu6e2R/fNhQihbl5gx1zUdvrz8QR6i8srZVit4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750145995; c=relaxed/simple;
	bh=ala3xtlanXyGRXN0ehsllwk5rvf2kBgrbaOWq81O180=;
	h=To:Subject:From:Message-Id:Date; b=fA7bDoImGIPwdFiiFTysARmgB2in5JWJHFcvy+sE7EwR9kts0JCCkYFQnguMzwzwlut429/tVD+qASqPLsjhcPMSgNF7NuTR+QCdmYJhD71Sp67APBwB3E0SLHGFPjWZoqwk/PFhOxfshMon0oUlVjKuEScxxyEKbvmMSgUdZPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MrtAQ8hS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MrtAQ8hS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F15C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750145993;
	bh=ala3xtlanXyGRXN0ehsllwk5rvf2kBgrbaOWq81O180=;
	h=To:Subject:From:Date:From;
	b=MrtAQ8hS4+v7QcD/6697p/w1RbCgQDg9oZwOTh9kMgUU0d2OtL4m4l3TxltDu9jFH
	 7qUiccMdeUCzm/hCc+dLRSt+2HvMmaDljdeLyNp02CI2pqXR3MilTgMOwJkM0y14KJ
	 pic6gGY9cQb10BUFEdw8Gn97cZF2aW7VByDuwXvjY676bpQxtlxqsXbyYqJnBeHK5n
	 fBGpH8hT5MKWWq1jNvnaqvFpK3HP5bpGwQm3VZegAapsXv41RYvLdR5wKuv2U2lmjG
	 YVm2u6X7hcGEWefD2D/AOSsWw/Z0yfruA3H1aHGdlEhbbpYeby3onYjCRKS5f8UIbc
	 rg9ASt1+3LLQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073AC71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175014599358.29419.3036461775449897627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0aa610ab6499bca678286dba2fdc0d948947026fca0a8d1ac563a53be49641
Date: Tue, 17 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750145993
