Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7574BB298
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791661234; cv=none; b=npSE5PEgSRgVhBXQyF36GFo+gOaA0MFndkaJ4bPBHXEzPn28EHRa3Hq3g5vJ1REHroJYWAtLZD6iIOgdn4EBZ7peDUEv7z/evz6AHDrxGG0KgMgZMG6CyC+9uSVOPJohVzZyphvZFTLnJr82J6RjIrh+RqtXKWEZ4XcrtwpAzF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791661234; c=relaxed/simple;
	bh=UjiQbfhb4OoApGeWxZEB5gpQLP/B2Q8GRB6l4QlJb8Y=;
	h=To:Subject:From:Message-Id:Date; b=Rki6RI3fCAbtF5Coq5ML5O78JvN8gn2AEMr2QVdiBMw/AFfj/fA15B5hDSGCFaPAascw/DksmkJ+RglQiplIQr5cy11inLcjtW5UavPsj7nEPypamMniuoQjFERPmRkbxBx5MwHlhSFF78JD+qlR/hZB7k8OZILokhPLjZkXe7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCltBfbQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCltBfbQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE66C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791661233;
	bh=UjiQbfhb4OoApGeWxZEB5gpQLP/B2Q8GRB6l4QlJb8Y=;
	h=To:Subject:From:Date:From;
	b=GCltBfbQvSZWBSf7puBog7gsCPwl7gXS5RjNky/17bf00OUZav4rKPomAhptT4IHQ
	 nzDimbB4HsW/Kcojfcqs6SDNz4i0gZ/odkUmqb1GfPPiJk0glX3QqB9WLubrGEW3Nj
	 Ty4ll8+eV60jn9GGdxZYluUnUd2q5pPAdlg7edkynJO6iSV/qLUpLMM8RF10Z1ePHl
	 g1xi3SLJfidVXQHyroV14I35PXGLnjpSfLAy81EoQZD9OGC2SIl1jSiIBL5xQuL/VT
	 eWQ3Wo8hJkubB/nQm57IUKzsnzI/cvzAcqGm1zKgkkSPlPP6CUKGsFhkQEEeDg92L+
	 M7UK51RouCBzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE127CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166123370.30327.4351406052238094946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6992b6eaa0e2cb3099be841e8762e6a78b0183cfc851bc1a7ccfc33968ed366d
Date: Sat, 10 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791661233
