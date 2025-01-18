Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD937FD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737218754; cv=none; b=nxjQKiISRT4GeN0tfqr7kbflxruScN6Hdt05kMgFIm967TgdY2w9t9yLqQxfYdTTD0twJiT+8mN1ymqUgEj0pC37QXATUxPMs0qqc9nk3GkV4f0QepHjqADYdpoizfAoJAT1Nz03CrkcVuQCOREIRnG+DlTmfTeZvqRmcpKoeHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737218754; c=relaxed/simple;
	bh=UdJlxigBehryaJ/63TDtovDv9JZw7uxx7/FsNa+TNS4=;
	h=To:Subject:From:Message-Id:Date; b=bRUGQY+YdtbzqNIvR3LWFZHMxp4THPxjNYsAxRBEYWpv4MKkp0itn/8W1RCbz38no8WtDPDjEMZirOv81G3GX128mb/UOrUUaR4IzdvChDxFCI2BP/5LJ3JnxwGitHfyd9GZZmU0+A9GQKt4W2cvkghMBblsxEUDlDvaNx2vjgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjrTbyao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjrTbyao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5070C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737218753;
	bh=UdJlxigBehryaJ/63TDtovDv9JZw7uxx7/FsNa+TNS4=;
	h=To:Subject:From:Date:From;
	b=sjrTbyaogEYseA1MSl1dHCeRCLpnRdGI5gbZbE4xcAK91dasQwySzyC3CMl9has7o
	 0ferHluVfd4Rd09HDcj49PqftQoOQO86toBoB/BwJ/c4jvnxgTFPIa3wWHxDqHNFn9
	 MDTq8Y6jiPNaW/Dozz6AxggRX7+zFP+N36er89aVha0o9XfTXBBo0pe1b/2DlrqtGh
	 THmV4Z1ySDKNyWuxDAt2FuWitha8p9s8p6ZrXTjn8PCmjpnzA5SNPK/LzoiQD1kCS9
	 iAzOK3uSKGghnVhlirIbvC08+TUOGG+aA62CiS0w2dzqYToUB4UvKkL57WU/Jd4ivA
	 PR1fmEQn4q1lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7411C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721875364.19410.10444962415509193406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7529df65ebbcb277be0e4641ed5a326824cb98fa0b03a137347d922d4fd0db6c
Date: Sat, 18 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737218753
