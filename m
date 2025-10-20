Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF14302169
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760960394; cv=none; b=BgnXQaqnduZl1RQksoiFI2FrSoN4BLBRArfLAOkBuaPKXRd90te7NrD1Dsp2eg//sXslWpq/ggEvp/k1dxTz6fPODbRnnQF1xf0cqwQ3Bij4RmiUb+mQ3beIbHXSB3l4GqZOn3Ti39kKkBOuFwhDTI994nLZQBnuE+A1JRSHJ6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760960394; c=relaxed/simple;
	bh=E6J+DmksUtaq1YMHmTq0RnoQj4PscefRD803S4Uzrp0=;
	h=To:Subject:From:Message-Id:Date; b=snve8TwOuE+ByI9l4V3GZVCsVUEc7hD+mMcGgRKDiBiWFNzizFCZbDHoFK82mVCh2vfG8FDXVguBW7zUBmv5pnONGA0H6wkBA7/WkwmThdNqQVzRNH5G1BCwvp3glliXt66coY/4UgZaLchty4GLHu4saAdBkxNMfdwBn0lCTPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Twg1ZlV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Twg1ZlV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBB6C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760960393;
	bh=E6J+DmksUtaq1YMHmTq0RnoQj4PscefRD803S4Uzrp0=;
	h=To:Subject:From:Date:From;
	b=Twg1ZlV2sEDt0+J6RDwAw43iAYHjyax/zcfPpCb3d+5GSXaa2YQiUpaSRLPvjT31h
	 u2Qix+HRUIsxEz68A9WLukBJFvxyeezQCqXW0NDSe0c+JORHERtOUgk65MnuAwYnFm
	 ip5yn1zgcHvr9xsOQB1pBFip0KhqHdSN4DQCkktfnndjTViACjWv2z7uC76xmHeQFE
	 KnJYQp13BXCxZRlfTVugMdyEU4jpBEWz52x98UVl546R4dC+Y7UWv4U44yvypKTfXs
	 4l626C4GBOzLwi8Bo6fy+o/1SAdtLWT3KlmHbwla/5/ZdsCgIvWs1EftMbFJm+hTEF
	 PUi8vtrtQs5pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9139ACCD1A5
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096039358.10021.12171523540108723139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 864cd3f6cbc52baa31a27a48d67430970eab278621bf1caec2f53a369f311ad1
Date: Mon, 20 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760960393
