Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4290327701
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727025954; cv=none; b=aR/8Rs6bCl3kwDWA+fw7P1p4EuohdH/hd+e5OT8DHW530fVcs3PO99TIR6pKSEgalFtMD4zt4E0unNqqVN0pcmFx0Ciw5pIgvaC7gsgXL7itRcrO+6qTmBivynBSgSkZ3boKAqlYLq9znVBm1212AnRYg3nnB4HgsLfqbbgm+Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727025954; c=relaxed/simple;
	bh=I5G6IZeF4tiwiYwbB3AOwCu6hJKBSbt1ZIluGnxNK2I=;
	h=To:Subject:From:Message-Id:Date; b=DR/BeZpVdvX4lzFs1zEqmCcEp5LeJvdRt6QYzttq1k9wSV47+XiQFcvx7qh4KC8tC4XiQ7/nC09OPfUgjEBdnfZV/8Ag8A5/lpPMHnSf8A4J8RY6hzWdmScdNfKwawAn9WoYTD+1kcKPFTNc3GWjVNWsn26CF2F3f/S2nWPhHZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWm2JQ8z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWm2JQ8z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C0AC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727025953;
	bh=I5G6IZeF4tiwiYwbB3AOwCu6hJKBSbt1ZIluGnxNK2I=;
	h=To:Subject:From:Date:From;
	b=YWm2JQ8zZumLq32LGXqCqsqBzXQ3Un0v5FOOGKeG8WM1Cej1QNMytFFuYLcc1ns+x
	 EiP3HrpHTsSd1w6yG3NL03fWoYXryZqdBxXv5sm/8WmEeyy72PMNMzNhrWjsXELhUe
	 3wYR87urlCMdgbIyo/kZlhZ2ciVvWqZSvvL30FfsNStrgNXTAUootHtllkNW0dI7Ao
	 bQiHF6QndimdrTOozdLipgVs/dhEjYKnreEWh/jPmYOpXmXpQ6W0MN14dODm2LISxC
	 WQ8xvEhnEoEZrTFgmX/pMwQK1Ijm5a4xRw5XYWWtlyvNZ0SiocSZjIc3TYgecKwasO
	 vJF7LYNGNNWaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE051CF9C64
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172702595366.20179.7285147352099874222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a770a0bf4ed0236cea474f48ee2974c81ba48652687698a8f105d92263a856
Date: Sun, 22 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727025953
