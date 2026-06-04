Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACD91A23A4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780536874; cv=none; b=oNVXXQiFZnVWsiqyG+vlnTFZrKxgO7jaS7k2xnfxJl4AwYDxYfxXT0F0od4sTWjRPUaznZc55IWLBbsux+U1DNbFcLYkt663NFcmZSstHEW99iqhPGIX7KTfjQK904asJWrVNhcNHog8QnusoVEFMwivskfsoM3iikV7YjPWr7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780536874; c=relaxed/simple;
	bh=p9+kboev2UruMppV+VnfoyaXttjbYUUEMGAZQPU29KI=;
	h=To:Subject:From:Message-Id:Date; b=JADaqX0CKgUITsrYR01TYiPsk0Wv56gs6B9sXSgw9EFG87Aj1+gDEgSIuyItd5ErJDtPIKaU/OQHWeOrI9OQ54jaR9VZOk1CuRolyYOQoUcpVnJt4B3r+NO+beNKZux/M+UCRMOgM34cCE2JNGpZBkbDx1fZpv7/5qAhEDJv4VI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2nmnBUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2nmnBUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D3CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780536873;
	bh=p9+kboev2UruMppV+VnfoyaXttjbYUUEMGAZQPU29KI=;
	h=To:Subject:From:Date:From;
	b=p2nmnBUEz/OT0eDRo70XzryuDq2YFblJtKJ318wOCx3TCIHCJypkIuQ/Zy1kfaRD3
	 LHObx6LhZxLrxhb6xiYgc6aLOSIKsei5+eV+G21jZKxdJXi+2QsGQK3aNm3IMDFMQe
	 pGotClbIaY6cgctqYBXVAGKqjulJm72UnNqPkp32ND1BAydJYytpWqE7Y/AMPSV3G9
	 zDb3gO80P7TK3nqpOGL4HjhMZcV45qpfzrH3p4IWVtlsFZD0OnBdt2i4e91kMIv+Ns
	 GxBqyJ0GrSpKKhkDubpHkXUsDUNfJIXjLG+rcgMU/E+m4foQC2eDeAUJCv+JtBQ3pF
	 VN3lf944kvhdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE341CD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053687370.1359.12540041608177822333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20aac4b2fb748c604f988f0727198faa64b6470aeac3851f21a6a18c5a72788f
Date: Thu, 04 Jun 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780536873
