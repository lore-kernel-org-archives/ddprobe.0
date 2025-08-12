Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8062D47EE
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755032395; cv=none; b=n8fmE7UlC3CRNMv2jUGmHo9pBWhs8cXyYqsVI3mNx1b4Vwl/cIo3ipPAPVMbzsMEoRJKcT8H6wgVf5kzK5QLkbkooG+/4rZFLKWfjAodAzmJWdUNNjEs5Pld7dn2bUq3U8mihrfIwxj+mbQc9rXFPc0JpMhYyes1DvT6ZD6m/wA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755032395; c=relaxed/simple;
	bh=cv2puU7OUBI0ZAbnLDwktlNwBbD4eb6hZXlexXcSz38=;
	h=To:Subject:From:Message-Id:Date; b=GA8w/iPYIgTaH+nWFhaJaknihAA+hiM0BwU23g7Seiofw0LQcoNkUG1KS8FvxHX4kc5mHD6Dm4tP08cPjEmCtxWicbsLWSbeg2gY2d6ICq3qzqiFr+F0etnNPsSwXlVWsXvBhmdWOPJJuqePMhahK1A6+zC4PN2TGZu7leONHc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoylYH0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoylYH0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C47EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755032393;
	bh=cv2puU7OUBI0ZAbnLDwktlNwBbD4eb6hZXlexXcSz38=;
	h=To:Subject:From:Date:From;
	b=QoylYH0mAI634d7es4lPX4imXsP7Mf3eFJjgRYoPLN9txUwQ4W554uI1eT3nV3r8N
	 G7+5zngjWM2hsaufrZOppfD8Bv5pyCL8/ZV1gFUaKCJuXn6dlNnaHJr5Ij2CMPLsWq
	 sfblRu6/j2Vm4QdWTmU+7H69xTV6AfKIDqOHjh0n+Klk4Wp7jWHJc/8N/K+ONe7bqk
	 JaG9ZZ1HHa9d5X/PRRRodCW7cPF2h0onXc/3BdHL/ZrIj3GqXZNTQ/+8QqhGVUXy1o
	 DG4KGlBnR4T+QoH7eT68SDdvwrlIXRdn82hI1x+jonaM8HbxWST8ob5ZJourMNBuf3
	 0Z1tkUWtBZ1fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E125CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175503239357.15313.12772269521541776701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4a2d594a16a32d9e9de06bf8346a362e3c6c2fcc9e3b3a20a5bbc0397f51a4
Date: Tue, 12 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755032393
