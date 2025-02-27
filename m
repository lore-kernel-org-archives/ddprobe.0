Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4CD21ABB4
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740652734; cv=none; b=b2tJpsAGIpPSPaTEdZ6kTtjQYZZ3idhPwpe0/h5I1wOa0wImNuwtS1P2yoKjP2NdeNNDqm76KnUc4oqiAkzbndoJbmdV5YdR5E0CN5PQnL0xKmBWgMGAqzfQpVUsQUAu03YeHEOgOegZSjdDc+pgkI/8u8K40g8RlDAjkz4Xc1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740652734; c=relaxed/simple;
	bh=PaKXNj2DY8TkNR+s92WGz9SYj1L74+PN4xaVHklv1VA=;
	h=To:Subject:From:Message-Id:Date; b=TS6eETexEinmxPv5Z1XJt9ETiUWj+2B15E7MDx/nT1CTNpLG7YqZ/+ilJN/tMmnU7q1vciyBBHOm84p4vGydKdolKbTMwUnfSRxfEnbhl/tGga7Cxog/LDkvvMA6LpomU9Qhgkl4Xd7lg9AZ5GDRNRBDYZWZhMjjA/rCs9dkHqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0FgjtrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0FgjtrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4597C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740652733;
	bh=PaKXNj2DY8TkNR+s92WGz9SYj1L74+PN4xaVHklv1VA=;
	h=To:Subject:From:Date:From;
	b=c0FgjtrQv10wAAPhbZOJlgsl/Rd5VGzDFYCDpdDECGe0VXGmP5+DsHTVn7Auwf/rB
	 qZ5duM0LHQcZqjfZXk/wqNHQZKB8NsUMInaVgNhEkZmoyc2ryShvx/kSj5D17oZYx9
	 diOnb3l8hJomTMgdShmiqszPvhIGZyGckCPoc0b4g64z+o5zKKPhMzQprPLh6pXfCv
	 6oRyiyeYqAXlYqPg2KytJaZom6Jc1D2hvj0jtRcB8U6WjYEmZArqB4j0xmPcJ4d1JV
	 FSJLwJEB7fkz/sVxMoMu7gosqRLwqAtkWbrP+x1uNav/fmWGXGfFC+OejbZcL6RHTs
	 UfYBykhFru/LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2BCC021BE
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174065273363.26417.12070116362443784562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e950215034803b2577b5d78e7f865fca3d5ca61aaa0bd6c64da04988ccc5472f
Date: Thu, 27 Feb 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740652733
