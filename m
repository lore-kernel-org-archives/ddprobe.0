Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FCC19E7D1
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 15:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722351954; cv=none; b=gUKNiiTyCLLQBMpOyV3h66YcQg25lukcLFH33iEWxyajh1BS+nsE/ggqaqz2vI1ZcBhq8VoqzaPr8pa2UsNrAyZD9N71EA7qksgbx32gXyn0Dhl1CBxhM5DMTSDDjj0ZkIb692txs3yg0bONgnbMGbH66P7kFqasND1+m+LIclU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722351954; c=relaxed/simple;
	bh=4Xt8VuqPUfWtPmdtqUzrpuXHIcJaL9FdtcubwavB82g=;
	h=To:Subject:From:Message-Id:Date; b=VTGhX0pJdZgFTeZMdHKZcSHKqU1MLjMsMomycN/vWfWMYy71vcdCLoVN7RBvY0uXk42O/26rNy3xV8ElWAuv1ffKbnxUi6VOQ4sZfOXqCvPBEL5vo/MF7lePB594CvJ4N1OeGtcNzxTCNHZjTXcBP+5cDCw1A884MILDiGXxTCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/hE7Xo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/hE7Xo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F57C4AF0E
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722351953;
	bh=4Xt8VuqPUfWtPmdtqUzrpuXHIcJaL9FdtcubwavB82g=;
	h=To:Subject:From:Date:From;
	b=Q/hE7Xo18piCWxHzShl2hW6EHSpYS3nmnsM3WldstXSCQEqL82fqN7KfBR0uEergS
	 87Li07YhdXVenyyDLTbNLJ8SEkQPiPLskka37UNjg2HD/3DJfO+JoGT33Ps5qlGLtP
	 yeKGcBf0aEJjz5zXT1Psdss3QL+WzwB+YCtKMeggDMGqgPsLGAJK/nHmDxTA4ZhnZJ
	 Yu8ah4r8vMrnvNkfA9VucS2qduc0Uh4Py0dHtGqDZbMNkHspsHu6AsrN/HnjjxTF/A
	 Bze557VmVp+PWz/rpkEJy9w4Fg4N6Z5p8aMTcmgMMKgp1lZlG4rZV/9125CIGWSlcg
	 q1LO+nxMi05yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988F5C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172235195360.10391.7149407463996728010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4148fea6bff64425724469b2e1b63dafb93e0903934f0d73a75cc39a2042093
Date: Tue, 30 Jul 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722351953
