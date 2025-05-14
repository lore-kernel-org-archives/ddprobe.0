Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D296270ED7
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747238994; cv=none; b=cXiLv0g+1CUOIAe0V1nD73drpvJwalIzw3MP2602HHK48X5XdR93nvFE68sTJsdhSaRDz1+w12B71kfGmhZe14gQVBVowZwmSEGRZFQdn2fSxqMcZ35nRzOc8M3mKnKxPy0Zw92RusTYgs/UqpTPUcYBm0kB2y76QKiDNuHwFkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747238994; c=relaxed/simple;
	bh=kVjo5lksLZT0lATunPNarbfeD4UWr8oVbTuPTJQ+7lY=;
	h=To:Subject:From:Message-Id:Date; b=BKGCklW5ynjP9lm7ZO/ZwK/jOGdoBNAUDH8dAXAaFclI/K3r1O0y9Puj3jHSqc+ucYl3uhgOfVP5smIVrQJvEZgI5oy1EkkP3ZfX1rJXSZ6WYnwz8EPgqRLeoEul7Fko6AQ95SCy0ftilRe2IuBil+RxwLpB/KN5ydAOIMTNi7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPSH+4D3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPSH+4D3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9D9C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747238993;
	bh=kVjo5lksLZT0lATunPNarbfeD4UWr8oVbTuPTJQ+7lY=;
	h=To:Subject:From:Date:From;
	b=UPSH+4D37GDKq5lY8Ij4iGeQsfpjiLXGSaPqL36xLv31YrW7vzg5v3st8VJbfK9JV
	 LYMNq2mPOnrST3oN6A3r6g11o30o7M6mMbC+5e5bOhJAcX600X19JmjqBXFBRriBVv
	 CBlwz/zvzakPiLEOFAUaIGgOcMVLEbxurhiJ8x6ovyzkNFVeDgepD6A9T0F1+J6ZGB
	 /FsXL6a8pv2meKz5BwzKmDuD3Qu0ftkDy1vmSCeUBEQBN5516jiaYIEPbeD3/QdN5f
	 64oEl5AInzXlxUmECNjZPbMAPhEla8MZDoKov7ytORH0tZiA/NY+ahHeU5XoAg2FM5
	 h1a33mt/xcPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9028FC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174723899358.21014.15129185223158967606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9afe03bd97ac41c144389ea09f4af7bd632225d45289c944fc732e2ea400cb8
Date: Wed, 14 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747238993
