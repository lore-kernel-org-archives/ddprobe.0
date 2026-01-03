Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C4C20299B
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767475434; cv=none; b=GINXyCZynFuCyUkbg8Zeu9rrsu4bRj7hWbrLObpT38p699V7wBMNnaW14IBvaP5Pm4frt2FGaaahAo3TxxHUqd21JSJkCt4aeaf9qAyGhWwzXRUsjmBb3Eg6w1Asb+XAJVeavyViGGAhFJjeZXkfq7MPTYHPdpxc4TFCMDjdDx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767475434; c=relaxed/simple;
	bh=5CZ/DldmBophqcqniJ+js+V1gcn5pgAgEOUpbeYGUiQ=;
	h=To:Subject:From:Message-Id:Date; b=Dke8NiWlrPiRHnv+YD1jElWmUWkpscm/CXiJc5qvHyF4+CcrYaoDxAPPQrW0mhJ6wcO8FYdgBXYQ4fSlVf30P6G7on2qU/AdLNujRp773tOEe4HvLuAemX2O2TzEFDlGqK8C8qAutZBrbi8ue9WScP7yVez0bxUnHg4ZtgRS9s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wz5BmixX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wz5BmixX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CBC113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767475433;
	bh=5CZ/DldmBophqcqniJ+js+V1gcn5pgAgEOUpbeYGUiQ=;
	h=To:Subject:From:Date:From;
	b=Wz5BmixX+/25EuNNpnDFCtzEHkLSeavbWj9o766FsWzncL13h/3BHEseIYwAV33s8
	 EkfvYxR70P7X7hmKviZxTmwxLnzG6sv7e+t6E/65l8gp2eiQqZinMWjMIYezQVQdJa
	 sQTch3HqBJ6Os1FI4AkA8Aedhf3nfPNZwkNG/nAgHH7X8V13PzT9kLGCvq6RxD0DNf
	 Mbz62dJDl/YxtMpISUfItGU6SRXUhmJzuI+O5PGcIUoCOQYmxpYVNalUtby98ODl68
	 sJ3mDChaGz4AWtPkNMcyp1W/jHP1LLNeosf41RkW4w3xfckEL0/gW/XXFuQC4Tu9b+
	 HXNq5vCz1/tHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024AFC619A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176747543358.32674.17497365905599301826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dd9c266764de3cf0bfb820365c6feed4f798538c2823825661c7350cf01e65
Date: Sat, 03 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767475433
