Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A393546CB
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783223914; cv=none; b=ifyxuhuOnxFB/x7Eqin08IGQxgmq1PbvsMxwB1jNTIyxua9VLJn3oLEzcTXIZRsVSiDJw9cjBmi1IPGzu0vWJjz1yY+VB9V6yxqGYQnyzbtijYxnQeP1V7VjO+sfzwvFaLgcd15PnTyCcf2a2HhgrlwgZDC6yaRCCBAzsGwuFKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783223914; c=relaxed/simple;
	bh=THSYTlvUyoK+8s6QYyw+xxKVgqnt5Jf9KzsQ+NzF3zY=;
	h=To:Subject:From:Message-Id:Date; b=OmxBknko22KljXu58aZLBps2AdD5PZnlvasNnLxW+WCC8WZAbay+IeQtIO8bXSSBKOGXjBzQH5cIOqSlOksd+anTHq82gL6syrYKV9lJlXiCnQhrmGgrOlE8fFCpk/hoKIpBeH7pQnMwwFN5Iykmi3anIM2npLOBlfAoE2Ouhv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WH6QP5Pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WH6QP5Pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D446EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783223913;
	bh=THSYTlvUyoK+8s6QYyw+xxKVgqnt5Jf9KzsQ+NzF3zY=;
	h=To:Subject:From:Date:From;
	b=WH6QP5PmrsCL3LGfrzHa4db6P5DICrKKCI9iPuOanrqiIGGBzRNFNJFj4T6D2KlPp
	 cXVccycrk6W+W79RAhDO2P2/bebmLP6gIMKJ6WvAHEbNPr9gV+SF6PUdTjN9F3D+zh
	 NNIt4MGs1TS88s6VNXITTINCMuiozxEy4XJcoIm7YB3Fj6T2ifhY8CJpJ7gO5cOGEi
	 IWbhzuizDBZNl+Y+k3L5HG35LnpnxSXtom6LC3Ek57YWlrDIAmSMF8cBUtpf5DgM5N
	 Xsh0P0ggQvAZ5GLJ1VKQcZmssdwj6tLeYnRrWi+CZC/z4qcuvubhXimEyaSIyEMMac
	 FJSqecgz/7kPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC24C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322391368.20554.5121990136764163019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1262b5346eac31ec07063a4e2cf95016bd6d54865911e0aa7748949479afe42d
Date: Sun, 05 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783223913
