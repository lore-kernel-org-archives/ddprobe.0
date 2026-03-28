Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15002344023
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774680294; cv=none; b=UKgyP/cCqV5rmFD27Jq5FIHCTwROc+uUQmsSZSmlk6jPwRQ2V4HoFSYA5Fvr5AlNMSBsLPhuVGmxna+4Sc+MXZKJOwTEByQGi1t8clPnyrJSfiHy0aBQwyjWHURqI0Z4Pe+HQcg4fVejm/8/SOY/i5lMdnsQUQj7H39kZfFkMWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774680294; c=relaxed/simple;
	bh=JVZ53oFZiZDrfl4RlFFML6aOyW4pW01IJ9XxugmX7gM=;
	h=To:Subject:From:Message-Id:Date; b=SDPjn4Zf9uPiyr93LCL+oVvgdShlxE7mdJTxQj2INJFgNMD8Gp2pb2rJ/WhNv0Z4XoH6xcPsFQL2IwjozdMOPYsQEEdT4e4JIdfEIr7M9ZEv06h8Bco+E/vverrTkc7DJ6eqrRZFUhlSeglWXyjfdVykfq2sy+nVv9iCfhGy/k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkfGUdYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkfGUdYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4204C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774680293;
	bh=JVZ53oFZiZDrfl4RlFFML6aOyW4pW01IJ9XxugmX7gM=;
	h=To:Subject:From:Date:From;
	b=kkfGUdYPLDjCc1uo7nzzQ/f+EaVN9dD7YvdhjUdtvuFE41ON30lHRf304xNMJF2Mg
	 AR2QDJqVVnwbqJPxGP9t+7jI0PLt+86G25yLJ+zzG78IVouuzqdc300G4uefr+mq9T
	 3HaSVUz5WE9WqvyFxSam/CYNiGKkACZYREGFPg9fEGfcGJEP+yUt8s/AWxRNd/4LfR
	 dOjaUnwLuNpT9DyFRZrS36RJlXADBJsRwJmBzKJYq5AcyglTSwNgUpGMvW/jJOQSjJ
	 QyCjF4MPnzGL7ha2qFRN6KHdl15/uowUSCff+MVwC/nSW9bPREuc7XnHWB1XavdOc5
	 vdCtkF7sim2Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA910BA424
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468029358.32521.8050065623868195607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43ee9ef4e2229ee091265339b02583752c7a66ac6d6c64e468a512ca3198c91
Date: Sat, 28 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774680293
