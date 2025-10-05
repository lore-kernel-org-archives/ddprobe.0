Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291281805E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759623594; cv=none; b=V+TBYaojBJFnGIp6nfORi2hOMKA4AcqGrkg7XuElbMUvQAijZ4pOjsM+ChW/3m1pl9w7f1DIHci1lefJ8yQr0eHtJnwdGybwsWlz/+gklXhlmCEz6TEmJPGfioDq7Ba81TFT0NT3DONP3XkcZV/cbGCu07PmiCyMSYfm3T9C9VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759623594; c=relaxed/simple;
	bh=oQby7R3EaKsEPvYRRWpaiNsUl1TcTU1CZpdArgfYKPw=;
	h=To:Subject:From:Message-Id:Date; b=qOzy/HiXBmfIJ/Joa71HmiTs2T9w2jWgd3kPAw5wLid/2GFKfzZ+BC1slmph66ZIG+cDVzOmw0VdgzQEoTz/eaMDhXfY1b7rgn5ZEUnUNA3yX7AY7y7jTWQu52daJxgn9xR0h8fYl80yzVzCJQjepNegPC/m4JYbW7mNNI0+RK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfPhj1op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfPhj1op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759623593;
	bh=oQby7R3EaKsEPvYRRWpaiNsUl1TcTU1CZpdArgfYKPw=;
	h=To:Subject:From:Date:From;
	b=KfPhj1opMnSzAGBBQfr030V4XM9iYKf2+MK7kS17JIkM6/6MjloWB7PXaTerFHlTv
	 ocleRCbUIffWmiw7Q7oIX9mSpXPqkql3LHDHkiyNcOCO4uEsqm2hT0m3kSsVCxTOa6
	 OY5hGCmqMBxHx3FV0paRoW0NMEj5BtlJjYwPMsfcQvManKAtD04HO6UsTLi+0kUxkR
	 vqerCWJhLkJD2rwgD7ztHslFpNmk+zapJCIxnB034qTCBXeN/VUsOG+rSnlxb1FyhC
	 EHUcbi0KH7vVXChUjJPkGeYJ1CvYHHfrIP16Ah452XXrs37MV5wLLx7swlL66WHf0j
	 yrnmbQysCc9Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBEDCAC5B0
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962359357.29961.6109520935929234519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59e2a62d6e2be2a4a3699913fc3239fd428e9af8589671b187987ee6b07bec9d
Date: Sun, 05 Oct 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759623593
