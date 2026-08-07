Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A84395AE9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786111235; cv=none; b=u/9HJ4ku58g5VllFBiue7eZZyyMw5BKyRLjsMCGRJ7wPCwlp/T7nQTYx+LYpIkvnTJtChCsa9w6dTK2ApE6wrmYK+6IoiBYGomoX4aPM0hz7lgnoEVePt2lyhzm7ZatrV23O+PYC7zyAKOvONQe8JwQcfQCA5ddbgeog5WtvSDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786111235; c=relaxed/simple;
	bh=Jd8cNrpqAy86azsxwvIx5U+pg7AjZu1d4hoPPxfx6/Y=;
	h=To:Subject:From:Message-Id:Date; b=OHk14R66biFuMaBa3LQx1wLY/beShhgQXsMRylzGOarQeAVNv9QJNN4hi3GqaCHor5ixRykSBH7YW/s8bTt6Vb3w29P+zDwwt50OmPX7C7M7X9Sv7oeO1uyqPTq2TA//P62fiEJUZ33vZKLKHsGc58EirfD0tqo4bnJiEBSYiIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNKxuskl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNKxuskl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4911C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786111233;
	bh=Jd8cNrpqAy86azsxwvIx5U+pg7AjZu1d4hoPPxfx6/Y=;
	h=To:Subject:From:Date:From;
	b=YNKxuskl4ahpNkt/nLXRHgL3mpL3XvOXTYVprF1HBtyck3KfS56gL+omjrCthDjzQ
	 j6PAZsMjh8UfFgwTOobhMmqmaUkiXBar/lJnel1kHE0z2tPCfC6L6KXknS7oxt5P52
	 aoD1k/vl4O/uXY+wDT46rjSfgoDQwnZlbxzHgXEwhuyl7tLQGeGLxbP1ZkA1cfKLMo
	 l4NxRLEfjRe7GAI/H+epCp3HAvfGpqtoV0rHWJ29uboHFfvyuDITOWN2pnOMl4VVc8
	 CIKkS5qRUg/0uTSJGvQxqXgX2+fuyxv9UrX/BK2KxoMSCwb2Amdk7URvyPU8tU04DX
	 8EMXJUTSjvoxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE9FC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611123369.29522.12546017552255961435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e045dcb41d08beb8046a8da68324b35c7956f33e051b5cd66507839547828a2e
Date: Fri, 07 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786111233
