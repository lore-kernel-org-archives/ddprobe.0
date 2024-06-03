Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F9A4EB5E
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717445723; cv=none; b=Xvd7Pcx2F/oOFVpCONE/JhlX6osFOC/VjFZoAe+Lnm9jVoEBk9iti+5AeaP1bcu9nnw5aFNh9Soh4OHcrOj88MbrGglnIZt/chyyJStF16MSaLXafyAMdtNeg44eyWO1RSoZMsIkQPGhPbFUrNH//q6+t64s8Bm3Tgp7PnM2IbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717445723; c=relaxed/simple;
	bh=TbnHc0u/d2hsck+wHigKP3FYHqpt8zvek41phbDnGQ8=;
	h=To:Subject:From:Message-Id:Date; b=lZuUSfWzixeSX9or8eBJhuDtaai+1tacVSt1Ml52DxW0RhwKDZAHpapcCFu88B3xPKFcpQQ9d3dcc+/ralgicMlsazJkUmmt0jboFU+QLXJULO74KG3PLzCu+lxVd0sGtN3d3g1PzTuvLHQqCwaifSx7edq1E5VrVjM082LoaC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqyntbWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqyntbWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B6B0C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717445723;
	bh=TbnHc0u/d2hsck+wHigKP3FYHqpt8zvek41phbDnGQ8=;
	h=To:Subject:From:Date:From;
	b=uqyntbWDgKUQ215Sx64TKG1oncOAm6qJzrqnXTiXGEC15P9Gl8sOas29mUxrk3mX3
	 229cYv0jO9XMgT+EjIaIHwpM225MbvHTVGuwPl8TuTkKoDN9eaGhhVxbKo2y/jvYh3
	 UIzD1dSyCUOKuDRoixIBzD5wxrIo6RBSSw1PMRQhacUz5sjTwrP+k4rPVKTxNN5jj/
	 baYHCjeylM04AYCfydKbaxKztn2S3fMFC+sQtG5jqOpg7dMT4a7tQCrXAxsWp+46Ny
	 R1/jSmcx+WUdqoD6EmXZ0mg1XtJ5mG8+/gNpRw5C0OtSt9dll8hSZonsJDZ910otn5
	 SisqEX1DhcZIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7F28C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 20:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744572287.14474.5024950556901942184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88f4d649b83164c1909e85834b5f73f8c1262662042bd04c0f618df277639f5
Date: Mon, 03 Jun 2024 20:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717445722
