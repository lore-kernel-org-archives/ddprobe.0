Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498BA3D9DCA
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785253234; cv=none; b=L1RIFaNhodUJj7yM0d25zZrCzerCvvvuESD6VSc4gWb1aoeDRccQeR07FWG+DKzzu6kCBJphWS1NkaoQJu6Jo2NrsesXh8wTMktc+MmkMePUOKn6NP/XJNTCLYcZUdYjkjz6nJbZ9Sn01RLdNmWbPLdN0LvgZcQOJfSp2jR1g5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785253234; c=relaxed/simple;
	bh=gXM5WDD4YXAOHu6cifYdS2Gzq/Ars4GHisrufD0kiks=;
	h=To:Subject:From:Message-Id:Date; b=fz8fflgn2/HLhxdziFYpIGD4i6vRGzY1p9iRN2yQl/AbCOrbtifPXf/C9FOJPcGYY2NTPBwgToERz9DvheMZSoTXQFhHUM97pZd5Vk1hj2BpNMkDDT4j/QwXna4XsuJV3noGbUneOUoX8LqmwLOMkk2XJlZb/DIrS+r5m8xun2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFAlWw+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFAlWw+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDED5C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785253233;
	bh=gXM5WDD4YXAOHu6cifYdS2Gzq/Ars4GHisrufD0kiks=;
	h=To:Subject:From:Date:From;
	b=GFAlWw+qwqho93OVYhVTStyy6e6ZipLywfN+aSq+jrygvWTYDCQaTh3pxhKAIv5zr
	 N0d6aZpoDmUUEiiFdtEj62GpGxQCl/Pe97ngUy9sa6O5da5uAdclepprzBWqvWm7KT
	 erjl+bwMVEiZwKagGPtJl2xL6MUD96VIur6+BdjJWrEsu5LqBS3YH2dSty/O2Uipup
	 BLwBJlO/XvjohRQGKbs016+jIMjmKrfY9yMUMM/CXtVpkuKf/0Nz+KOgbn8pEzsznI
	 xcYnuP9gJuH7KPnbsyfuh0Go/D2esWAuBF1QP8uBNWxk5EudCTLHC4wNHFEJZpjs01
	 0WPqIPzygu3aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB15EC53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525323369.314.5918133912975544879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdee37e68b41281b54ffaf79958126fb2945323f7a16933a5c8dbc51f27cd7d
Date: Tue, 28 Jul 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785253233
