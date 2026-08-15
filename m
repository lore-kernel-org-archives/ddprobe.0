Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579BF17BA2
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786831234; cv=none; b=gl0h+FMdozqA52iOqACLBas8o3xIUgVBzY+WsgKm3Ep5MJIOCY9a3RckcsJ0eXOoubSRq3rY52aHHK91jozMTUZXkQYW8XSFKtIcR5+BhdWBtrRc6KrP79CxQU2cwnuw+6PTAE+BaXRqnomaGpeT5mJc2mdANdbGt0gZXAZQWg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786831234; c=relaxed/simple;
	bh=TlbL+n4o4CZg8gcWwCZX7H6+xd5Cmby0AgcLjs6rQ9Y=;
	h=To:Subject:From:Message-Id:Date; b=cYg+KSqVG0Br9kzrWgzyuGCWIM3hrDWvPbiwhjuAM2IUSytUH5nuD45+HHKOxZ7o1404HeNvjc1tgvPvM8vu9/4sy0Z4C7eQ23elm5Vj+RYNl/9OWPNkFIyrHfXY5RqI33w2bQm913qpeAbafjdNuYUA3dw9Ymk8miGmrycROR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DK/HVrMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DK/HVrMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0762C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786831233;
	bh=TlbL+n4o4CZg8gcWwCZX7H6+xd5Cmby0AgcLjs6rQ9Y=;
	h=To:Subject:From:Date:From;
	b=DK/HVrMvQ1+/xr9RwCp768uYyXZYl7/2UqWQf5AddtGEXJOCQn5v9tJUP3/oIPKJi
	 AZF+Rqq5oecZPljJ+rkclBrxM7aSvU3Om5LQHFh1NwJ9a7V/9fwxA5mKockrcaodCS
	 vNtKBuF9z+DgP1RFLkb1vSjMT7HhX4640RXhnpG3WhLRtVUq0mP6pTlc4S5clEKThP
	 RjnJy+5MamOufxQ2srPT9PY+l3T6NLVbuEuBPfBKVQ324ACPb1WQ12/safVucQekDg
	 AFv7KBRabQzSrYEa80FPjJx+MOHYwQ2/EDhQCrHmnrbzTMegNNo0OIkHG1JgE/cOSa
	 Amee90hgl+/Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACA9C5DF6D
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178683123368.9163.10178820050201077957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2977a58841d87266097d36fcc4d8bfe897ba356fb48b86cec6264edce2fe14
Date: Sat, 15 Aug 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786831233
