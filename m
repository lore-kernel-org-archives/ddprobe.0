Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A24B1F0E37
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747126794; cv=none; b=PaLUQNA9gpdb/1DY/wVBR4fe6s+FVw5hbCPBIlAJRELpWOzbNvuzSFyk88xQPdNZiLxSK+0k7rPBzUeGGU4a6ue+RbhxZxIMN023WV5XoP/aIk0nFWtAziHWzKpSUIpqA8ZF1mvCAAgrBydHJNAT5eAKbmfDreQnnvFR3qTQVwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747126794; c=relaxed/simple;
	bh=47dpfukyJOkyFk25FcnFWIwcVsaBYAlFp99lw7VCDGo=;
	h=To:Subject:From:Message-Id:Date; b=lAk4A3DT25dGXoUEDLUOAxEGQyqOGWGljymdiZ2IQrIfPylJXVzg9M7VTj7ByrPawUM81sZNJMDIBpogjoUqsaPEFJHS0o4YdslN6LdWm898znVP4asgsAlGSr5O4Ak7HowTUFxk9Sz0N95+gPTdbGAep4dWv7eSZpskvPxl7Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFpEJak0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFpEJak0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10BAC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747126793;
	bh=47dpfukyJOkyFk25FcnFWIwcVsaBYAlFp99lw7VCDGo=;
	h=To:Subject:From:Date:From;
	b=jFpEJak0ZXfDuDVaMCoEWoviDonqBj02OSokpzYiwkWqNbFMUmTtZfyjKhtZEMsfk
	 uFhN1Lk2fgHgRSIDDkmN8GifsGkk27UI4mVlOguqzgiy2+QCeLLoXhmJe96ih9BTDW
	 d3L0He+p4nd5xSf5sUad3PBpiqo7m/VMh+Jg2rbgDpJGSOICs/2lMyPrSNBs1vBKJJ
	 dUh8YTHVXRli87N824LWEoCtvuoVvdWqMgUYkzHRT5u5fV6Vnp9KinDq37sEVmb/q9
	 w9VwFQ4VmB0AsCwTmgqRYtlGmPQ3yZGy3yWJpzogqEYq/CEsX2msuSXkbzOEGEGLJ8
	 /KBq6noif/UPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E1CC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174712679359.6276.6716684509057733073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb7af22b09d7b9cfe77ae869e1452b3b0a4a584d3ef7fe7eefcf8ab05f36566
Date: Tue, 13 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747126793
