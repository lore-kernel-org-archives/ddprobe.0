Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E7552F7EEC
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781460994; cv=none; b=nXNxesgAgshKQOcY6eGfeDAyrPchjai7TrIla/l6omYcp7hkLAFmsWNNCV8NnwTGbDOY6WCiY1bSjWcudME5OEezHCek6yFkpPPe1eU2QhG+q7PnKtTTBp+ewnu27GKALd6KghGGAiW2StK8fG9NGD8gh1CX76lpaj7z3HBFUSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781460994; c=relaxed/simple;
	bh=+pe3XWZWwYfwkttKOuEkIDBIKHMtSIIAXTc4L1tZUSU=;
	h=To:Subject:From:Message-Id:Date; b=C+aWtytC42eSDY05HWly71+tEEEFmbwjD1qcLyzNOwRAWhJc3VTyln66yjt/yXPyf0K0ddYso2feHgKQkng8lzI/AmCSFRH2sf8kXZWfVZO5QtiNT64FY/9ZXyBk+zlbkeF4ulq6kswUjbiS3wUxCTnqqJqt+0Nx82xySZolLYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6VuchYX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6VuchYX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5698C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781460993;
	bh=+pe3XWZWwYfwkttKOuEkIDBIKHMtSIIAXTc4L1tZUSU=;
	h=To:Subject:From:Date:From;
	b=G6VuchYXuP57ZEYF4XFuLVbi6r6ZATU3dOSZ+rM5WMNASix5i+idYmAW9UKZugsMf
	 bVJrFZP10FszlLvQeQmCO3MoqMHwBT2Ooey4NXYCNegIQ+NrbDrNLCl1HZxor+YsMu
	 2UAuxgQmtxkWnd3Q9YYrCibubqeW+M665+hUJ9UBpCx2Tsq+vehIzXCTIkbrB6xBot
	 YYM4n3UHeCZCcVnbMAZkXe2DKpLVzkQ8kWU0A3uEAC4lbngFDILxw3NmzTPeufgwSX
	 Qz1zHARieO3jjpWsLl/rGUoTd/gUxuSSLA7gTp4dvjq4rFDIJ9ZPqlu2GqY6O/I282
	 oqu7cqU0KPL1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B598FCD98C7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146099372.32459.6745856216051551616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74dd58dceeb5b9477c6a6cd1a32bd0067ee5ed7d428ea771d8a6c7d2dba78297
Date: Sun, 14 Jun 2026 18:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781460993
