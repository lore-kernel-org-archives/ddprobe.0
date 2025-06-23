Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B3F2D876B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750705794; cv=none; b=crpPHooyXhiLP1C290OK8HDtUdKGmymnZkzWYJf47efzRKxgkpyrM5oWREAED4KUZxud7Q8Yu33YEXqS4Y4fnPSTl2KZqIiHK4LX+isHIi6op6lOwKBaMZ3+unvVYJQNIy/MgUMC2jRi5nz/gl+kL6QqiaU2HjJ4sYDv5t3es/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750705794; c=relaxed/simple;
	bh=o5psJJUmC2mWPzWniNF7cmie/1ZJ+8vFtzKr2QcVE+M=;
	h=To:Subject:From:Message-Id:Date; b=a9NKFWicGWLzVR40J8hai1iVtz9Ekrh/VgrKIfLX3WmUYf7DhCB7mAvGkl6bdnOiIlKrLlxj1QFeMauByZHW7z0ySyAlkS2x0Jd9oM68/m/svBRfPbBY+VemqM6Pj1FztQJSExjZGs9MB5nAcHwi8t2WbLErZlMGTtjloAuTrWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsG7mC2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsG7mC2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2CCC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750705793;
	bh=o5psJJUmC2mWPzWniNF7cmie/1ZJ+8vFtzKr2QcVE+M=;
	h=To:Subject:From:Date:From;
	b=CsG7mC2wB7eO/nA4+mtkxtrAcPQVUgaLVlUg0ZTLFxq6+4Ttx7EdGScGGmPH9C7iG
	 j6RayDa/O8cqmfX5DBaQK+0/Jb8UfTGEAzVCCgs4msppnWOAYgITx9Xu5Ll5Uu0B/A
	 V6Rz9GBdKd9Jn5rizJZqyH2kRkgqJb83lOXQB1t0vh3E1Ay6CB4bKIc+9joAJvc5ZZ
	 TUhJvT34WL2bn2AGw68YRXfTLUQPFOL3zbNsK7TPQ4idG8btMpDQRd4UAHfWfi4i6S
	 okadX9+YlvzVddjbc/qysQ+5DtMWe/h7jKQYPBl0FBHKJeco3ViosqReXC1lqY8GBi
	 MIt/qSZhGDMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7FC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070579357.8247.6854988261055970539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad2bccff4547947a0e9647b0b190ccaba11c509a9cda5e7428321bb2914ac7b3
Date: Mon, 23 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750705793
