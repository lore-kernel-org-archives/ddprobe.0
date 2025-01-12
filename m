Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5251C36
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736644554; cv=none; b=JdmSghs+EwdSiPs68mAkWI2xPrMcw0/CCertpQ/KqpZMiKcGLO7FR6Qm1CepfmHSJu9QFBjLDLTqN0u1X5fmJDN63U0VTxjl0xMmlKl1GHs1EGqmvHgDxajneyqLgNukilzSIUc7v3gwMs1XFc2KDIF9y9kBf7T1+CMQVThu6q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736644554; c=relaxed/simple;
	bh=k0U3dxQ/VLOGBX8BVoN5FR3IS9KVSUMFrlSQBvdVunE=;
	h=To:Subject:From:Message-Id:Date; b=LZqjvCu0bVOeg/KGoBpXCTLn60U/+wAlF8KZKKiX8G2bhhhcnEHFuJUQEkIjgkWn9d5FgCiJbHIFOgoCc6CIE18+Wu8u8b9WlvnV3GkvxfPob9619ttKKJjzLOKHjdseMkg8Y2I6Abi94HyFSqv1NGJtIsAa1oIOIdHAxuStEFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLzq1MuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLzq1MuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF90DC4CED2
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736644553;
	bh=k0U3dxQ/VLOGBX8BVoN5FR3IS9KVSUMFrlSQBvdVunE=;
	h=To:Subject:From:Date:From;
	b=OLzq1MuJIQyU+T/1hI8nrjq+hSkLicJ5nStWoGz2jkiGhhNlPZQJ2/VId+FyEj1f1
	 UeBkiVj0pDYC07MCjbKeXqlcs7GgGAgdEjNgiyF2nQ5Qyq+uTa4OLEDpD8wYqsuTLh
	 qLNziTuqgNoEbUnJ3rYsIp/RVWajygNEjCmJjomVwuGA7UIizOYqwJd+G98OKVhHj3
	 W5wDKVoj9UsoLLkpMDFK9FcuyZn6+0kCzqe5yllSniNFmCoLJhISuT4FZ/BywsyX9J
	 S8gTCDdm2cFMArE7OehKuLxpn9V4e8ntpea7qN5gg5uGOANfgfQzafDJAW4KkZug5F
	 Ovh5MTb9tSDcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9840BE7719A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173664455359.27264.3561640792192027362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4697f4d0620361199a436c7edf86cc98f58e044878b98d46d92b61e8c7584d
Date: Sun, 12 Jan 2025 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736644553
