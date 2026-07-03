Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B7F3126D6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783051114; cv=none; b=a27WORe6DK93WjNowH9y6PXdmsRRH+ghDsMdi7I6q7eWmKgRsEKOJyKDToYFsKKH1zt6hLgpHVlIipZPutKBS1JnBzE8/GspBOD5CCfmI6G6MUJZafPTo7pE75SlytVDmbknqlrPNp3+3EO7Rwq3UB55IhwBsZXD4NYRPGOLUH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783051114; c=relaxed/simple;
	bh=MrWIX6VxJkmG7fA4qUvU1aHmQGDR2nwWGQWJoP8AGlw=;
	h=To:Subject:From:Message-Id:Date; b=IG24KJPiiGlSckT5Sa7J9BWIK55iWEol1TU1rQwZFogf3orocZ0s4RMF5rPUtgIdSQnDbgfMKWt4b6jpqxuHIaDal/BHLS/8/Vc3MZuAdkb39Qd0b7SX8pmwsFgyN/y97m5YGeDOcTw5UszVPO2Km+DQXW/PCno8Nus24evooMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMKELPsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMKELPsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FDCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783051113;
	bh=MrWIX6VxJkmG7fA4qUvU1aHmQGDR2nwWGQWJoP8AGlw=;
	h=To:Subject:From:Date:From;
	b=lMKELPsrf+wV7TiOIp++cAtmNWP5CnuvGWfSubEwF4HH6z5n1pLv6DZdbkJQ6F/uO
	 2a/zvLHGnEdrEi4m7BzClTjtx/UgLRbFwdKn8d9BZoHYjZvDdRtY5LqVz4bObBxyf7
	 3Bw2MmAcfXnfr/LXObXrO5WODze/2cFzGPrLAuQa5E4Ry/fE1f9txeL6eXQe0ge8d4
	 GWcxjMTs7V2FHWxyMJUQvRrWRVUexh+xYlSm/C14E+zXJMykk6KAf8XEu78dRD9tIg
	 sY9SYIr0hS9BEv2Blsda4xv+EZhwMZMV5NMr8uRsY3lLvhqtU5ecf2nSZp8jHiOwDE
	 SRIPCEGCPu4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3BFC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178305111368.13225.11275276454109359823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d423dae161c28832db02b8502836ee68e8380721496708b9d142cfcffb35b6b
Date: Fri, 03 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783051113
