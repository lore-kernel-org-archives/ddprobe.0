Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551A4364EB6
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786231234; cv=none; b=dE84h5JS4HTmvjKTrJcqYVBSoIsCqOLmhqVHPAx3x313xWy+NCGGQwLtDPT3sRgWRK2F1QNBdQXl8Lywf3isQBN23L3/x57b0oCjiC0pnBWENyGssPcolh9wrz+tz02pc/u0l+FsEmgw50uMmMtia00eWP8CT+ghJSuOfC36G+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786231234; c=relaxed/simple;
	bh=SgoDhan9Bes9qjIEWBySdHLGTudxVU15gu2KN9FujO4=;
	h=To:Subject:From:Message-Id:Date; b=kIq81O5hEAAwWmASqdBAWhuaXyBpF1wCzdFv+pno6IxoPI+OS3bzXtyFHcZcZhUksQ5ajfyO5b5MZsBT+/NAFBrJNqTXtlivztEFCYKiEbui6wExNKdkxCNtLIfuOG7TUAG9v3mbIvQJoDU2FOkVx+JPyE/rhIeSoHONDBEV7e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsR6/zr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsR6/zr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00FCC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786231233;
	bh=SgoDhan9Bes9qjIEWBySdHLGTudxVU15gu2KN9FujO4=;
	h=To:Subject:From:Date:From;
	b=HsR6/zr9b6Kf9HiduJlD42SlqkaH238R4U6c9xLzrw3eej6JtB3NWIppTCZJ3JRY8
	 8DpUp948/nf2BA7HX9EjeB/AbLWQ4E3QYOjRCWU1LHl81pF8/7b2sy/3gNlCEMfphG
	 LGFnXt4+tQiDKtGMsTlgL0sPOo945JRQh9YvWabgAl+aNR5wDSKjXkE+bFwUykFVtD
	 vOFmrRsfJOTflPCiDPobVRjsTJhbyviGHH8rLihmqPLnIA5i/yeM+mwozsljaCzpXe
	 9GWhMzPGynjCj97lyKJVSLLc+NNrqpiLFBO3m9nDhYHFjHCSa3P5QBsO4kVv2uyk3j
	 toq7wGD6Y4nXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF9BC5AD48
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623123369.23893.10167635949933205144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f330dde5b1ed2834a1966b9867136ac41edb35e1bb06707c59f75ab4f477511
Date: Sat, 08 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786231233
