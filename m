Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1F82459DC
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756508394; cv=none; b=T4URSJKlzerOa0OxRCqmKZ7SjTKESq1qIIUiGDx5E0Yu+4/WrbtSlfRU0h//nuO0aIwrtFapdNFUZhf3sf+w3ANbFiQaqe9EZItHkFwSLv+CSUuyAsVuht1qCwGUP8PblMPRnJOSTQP2+Qn4xX0HKbwdNDpE6cSowgiZ88+5xNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756508394; c=relaxed/simple;
	bh=k6lO/Sp8I0F/qKjvBB4W4ThrCRvffQLUX9FiLput8kg=;
	h=To:Subject:From:Message-Id:Date; b=mUAo1p/UG5V02qggJhpXhrLFUjpVKnW3G3tIFXU5lQY2hr9v58ySnFiCqvwdq4FHFbtLugrvR8vnDcZ6UfOqsWlIk/CsT7viqzsim0hinMMXfwF8kR2yUmCdxjC4IRLXkopFEmTMDOVTn8tdwEOH9aDy/iTxf24gfMVep0rfDC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlqTxuoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlqTxuoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5495C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756508393;
	bh=k6lO/Sp8I0F/qKjvBB4W4ThrCRvffQLUX9FiLput8kg=;
	h=To:Subject:From:Date:From;
	b=rlqTxuoe3N8UF/mJISIE/yV5iDZFkR52muQNBbpoWzjyxycq1GPgWW01tiFEod4Ve
	 yLxPnV2qeVM3AUQ4KSRUEGqJJFzfAH+4k2BQglXw5gKQalxf9ExW7/TniQ1lbNZv9H
	 kj+tHd0sNvQdn9Wu7sSP5Wrt9sWkTQA5gQE39x3fMyjU1KarpTDtZSUCNmvhFlYy11
	 Mw1zTQjjv0HXSI74gvpJxOKJwNV31ko3oCx49rm6Cy2gK1PeisDJYA99exQCWmMt3B
	 6dNMhZdiAhN8tt8lSipc7DDavLIQbh52/InYbwXlH+nxff86rBEGlSz+KDQ7379e73
	 DoH99xN0mRX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91861CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650839357.16934.13177426320558828417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd70f07f797d8b8c9d30ebcff8750b81593c162c9543b7d1ed47685f909d545b
Date: Fri, 29 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756508393
