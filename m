Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A784182D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761451194; cv=none; b=kZ2YH1595J89ql2iywAaw7G4STynZpyHy1zLFfXFqNAbT8NLZ9tQydRjX08etJHOYaTIHZMtf2epOGyg+N1RBGBy3rB++I3GaPGG0CwWCtPrFxPG2GCOgmrRnLVg+3PgC1gEbOfe2L6StP3IP99uadUJu7QcLkEUmK4ys6KtVv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761451194; c=relaxed/simple;
	bh=qcgXL/BGzE7i1tglxYnfFrrVVWEj1KSEu4G3XZyt3XY=;
	h=To:Subject:From:Message-Id:Date; b=FsJYQE+oElyTA0zoAjzerzJMuPDAkHf2t+p5lRcjUPzZsItCIeFplJV39aP4/bBdMfw/5i5OffWaN+MbzJW7aUPe/UCYz8HCVcwdjVxgfUdR0TjGcKr8YuhF2rBjXWdYUxd47ZNhQ7L/f9EMnbrvQuZJNRVuqU3x+gxiPLJqAM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4atw9j1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4atw9j1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A251DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761451193;
	bh=qcgXL/BGzE7i1tglxYnfFrrVVWEj1KSEu4G3XZyt3XY=;
	h=To:Subject:From:Date:From;
	b=r4atw9j1Vd9j5Opd5PRKprkuxh+JE3a0bNiXLPGSNhPWKpyy+5Cdc9FmQv+aXrmFm
	 94RmXKcwkkm5gg6Q/UeOop6wgd2PP0SiKJeW0rocTXpolzIOpODthyOzZaBlw3BPJO
	 R99JDJswSDeNwIwzsHJhri3dvXuBOZ7uyPxSD7iUK57syQvgKZ0r31fzvXD9JZdtjT
	 hZjAfL1QBJa5wED6Uw5ZDz2qgG95LtQEwws9JUw2ozePl1a4gOdPjSaVlD2AaCf6qD
	 zx0xJKHkO3ScxIUq4Z5L3BKRHBYODwoXmW8+m9nZlKxCCTWee3c1lmZfM5mAT8oy8E
	 wvbXT4gk1/H5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FECCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145119357.6740.3277786511806869215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae04340f2a1209b2317fbb8e2f636baad299a270c3645f7d33e09ef93903896
Date: Sun, 26 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761451193
