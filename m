Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201FA1C69D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770122034; cv=none; b=jNOYMQ+rdzn3sQo/AqZXpgvn9U4hyAwhsNAuQY7saT//16JwId3MNlqEsUZKniC+nKLtb/AJ5d0Cqhmz0KhpMOMdHEaDkcIIF27X7MqBZBoMoC2niFMODSbpZyIkrmwVh6nun5iGvsx5M2pPl8xy8wmgTpoX35GfX7M6hmHh1zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770122034; c=relaxed/simple;
	bh=wC2FWiKE4wZ9PvArRMHdXWAV4IrtxCDcQ/hUrgIOrTk=;
	h=To:Subject:From:Message-Id:Date; b=NUjThFaYtTjTSd0bqXeQx7gjmzK5aCGPqttNv4x2uThkt7v74MF/SRGHtlT4HQDtBjsjEOiqcWZjJ6Dl3Lyh1iaedWqYKC6os9KZzahs7F9xzWRAw0phOraJCRomADnjOQPw5d+DhErk4bjIjM7/41sYJpgIpI2j0qsJ5rVVcfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsgKVwhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsgKVwhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B62C19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770122033;
	bh=wC2FWiKE4wZ9PvArRMHdXWAV4IrtxCDcQ/hUrgIOrTk=;
	h=To:Subject:From:Date:From;
	b=PsgKVwhULlqVHn6huR72Bb+mbJgxIQdpAQi4a/woFS1uaH/ADGQIN3Ltmqyt90mYb
	 c1tG12pjpwnYgiHVnWRWlyR7y2lKcR00VLz46hoftM7NDlkZsKb7zgImnc97nmHuZH
	 ulJR51KSSvdLw6w1Orw/Rtxhu/Vgc0rmZCVKD3Wrxpu374RQGHkbJmQGxuvKruDDUL
	 k4JQMLbZ/GQSmOV5L5m+6pS5yng4xQgybL7aXPLPIs9OBoWJsPZ9S7Gpnmi34ci3uS
	 I3XbhfXbXV+N9pOt+ccFpEUvCn8gSKs/H/ElcP3f7plXSDiw4pB9XGtDW+FdTpTCXw
	 AX/LtrfVhEIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DDFE87822
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012203360.2019.10404400958632012250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38be78e1fd6548bb0be44b384bd9c469f14317ad7be164cae772bd3bd838191f
Date: Tue, 03 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770122033
