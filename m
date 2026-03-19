Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DBC26F29B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773888294; cv=none; b=NH7LYpq8EpN7w1rlh1yuDTSw4wIrugLmkppPhO/oAO1bvw9bwRk5Ezpy3uAgyN8+dylax9Y6Ivevo56Ru+YOBRrwalnAosFLWbGG0i4iWKCbpMEdrqYzBawsiohR7EfaLX+AKV4GGgjqRDxqlN+sWIAbJmZscAWe0B3XGSi2cSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773888294; c=relaxed/simple;
	bh=m9B0LT8vRnNXlRYdsy0OVlyLupJG1jhBnzS2OdT8fDY=;
	h=To:Subject:From:Message-Id:Date; b=MNyLGh9UyHXXZP5iQW0Y6QMNAFq7KQRaUm8dWAXS3U2v9mYJ2l3CHuszW6GOi7hLTe5hYYRevMOTk/JXPbamgGUigktQeMq1KPeFNNpDwaQNImScBpp43a0ud7iESAO10B4XZi9KhEleSGKaDyLifKwC6wT6sbV8BaS1zD80fgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKcxa4ze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKcxa4ze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20E5C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773888293;
	bh=m9B0LT8vRnNXlRYdsy0OVlyLupJG1jhBnzS2OdT8fDY=;
	h=To:Subject:From:Date:From;
	b=DKcxa4zeWdhOQeTUb5yBubdSfZR+csQaGWL+grtZfWRm1PXMzmGhmpwJNg2lK8Egz
	 ipZX1RtchG5hxah7xsr5qEu5S1VvP4RDBVbG/R1329DeIFui1nePVo/IJ2rceT0f6X
	 lXzsiIAEfWpxDlkBSqZ6VwOIa72k0OsHCFIVhF2xtUGIYQxxu/lBoNJJJ73zTbBbXK
	 tcK3i5Gs4ybwoY4U+7Jj5WeWt2xdwdCoHCPmIpWotolVuuUrpXn2u/u2TuxcJ4s2q/
	 9cLM0ssuL4q7Ig6ILb/2SKFecGFKEd2xessO3IhCU8X9ZtVBsEQkyGHxwT1inGMTqT
	 Bh2HAmmmit77A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC5E1088E66
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388829362.25309.8313729178143603160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee65a481bb6e12d4cc7c57bf5d27c32cf018f738a7b6f292598a60e2c19bd73
Date: Thu, 19 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773888293
