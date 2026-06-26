Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C65A3DB62F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782459454; cv=none; b=VYN5KgR6NQL8Hgc765vr1zKE3+UAVOf6TemOPOJsk0Rsf+/ah627BGaJyKTYDepP4jBFajewoIM69DvNcJKvmENIANVvtKPFvntxZmdp54Gl1a7T6f7QNMgTJVzoxAXGTrfQPW+PSSbUeK5TZCMghMZ6yjAwCs7g+3kaEgxR5uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782459454; c=relaxed/simple;
	bh=Jdn4vyxOv7qJBIik2BEzygFUqKNoNpSl2p2/qDSsbFY=;
	h=To:Subject:From:Message-Id:Date; b=isNPv1UUGqbJ5EycL97doMGfoOFCiAsetrgl8qBtnxRGhNz4fvev3ATGFqjt4PIoRMEGQuSe8n5wS1RNHW6XDjLLHc8rA+Ye5agdQClCSCFZ4ZgHUS8+QDh4EAA/YVIBKxFlTfEp0oD6j1CSqmLM3l4nh4Ys/sazSpAf6kLgt+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9ZeFIOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9ZeFIOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9B2C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782459453;
	bh=Jdn4vyxOv7qJBIik2BEzygFUqKNoNpSl2p2/qDSsbFY=;
	h=To:Subject:From:Date:From;
	b=s9ZeFIOStlEmhChzG+/hIntHEh6Yzp18BtfX/FcFY0nMKwgQxd/9HXt/O+mqFC0RX
	 IK33pSVKULk+5gRQqLBADIo/p9HoGCMy/PMNcEq62w0hiy82cs3Vgjbw+9szA2W+/T
	 FwB0RL6tes1fFPJyICOSmvrTAKVJNHdhcmhZ+93qyUpDSMZa/zJDZCLMiOJposfgIS
	 I69OrEndIK3MKRZT/hhZGIfbRql+KFUBkCzYZMN2MUKFvRNReG6FZfdwxk+KQO8muG
	 oVb0CA/8g36LJlDnzNNqmvt4++nHAcb05NAEB6/9Xkh+NYbQ0cNNHMpRsFTD5qBlUo
	 qC89qF/OSZLhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4168CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245945370.20550.12137048150352532465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd41ed716aaef4d09e59aefd95e313e27cb3f193f9dfb2170376c450945881ee
Date: Fri, 26 Jun 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782459453
