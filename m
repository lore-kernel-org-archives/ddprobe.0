Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A31FA4FD782
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791973234; cv=none; b=fDJFcHi5++Yd4rwNoIAaOZXOz/yK1AvRWPEPTaeqrz2XyzV2icQF+XzZn6NWwHyWPpIIm/BxcMLm1gQa/gjSVn6ldiPTP0f8KYql1zdATy2pVxjubE502ijyt/+e5+Od5XFqZyeBNsz+8LgVOzT/LdlTY+iKVTwNK3/fIkNdgVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791973234; c=relaxed/simple;
	bh=R6as/qXLZZ2ga227Q4FI35RUmFeKraAYdPQHGWitt9w=;
	h=To:Subject:From:Message-Id:Date; b=qOU6cZrZUd4EhAzsQf0uiiMAGBgiJQQi+dibNeIuft2unQSAH6XtWc5pToyW40B9SJBUJET1kqRyjDsGLHN6KcGTcx6mx2kiIoN6Uo7QqvAnfCwE+U1JbxxLgE5LxkNH82g1SOJkjHwXafvYoywWe23K52gfi6yceCVhXVD4vA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsVIlZu7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsVIlZu7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F38C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791973233;
	bh=R6as/qXLZZ2ga227Q4FI35RUmFeKraAYdPQHGWitt9w=;
	h=To:Subject:From:Date:From;
	b=UsVIlZu7a+lHGHjT0y+IUf6Nq2LynTffpKv6FI62ClwQBxEBiEsmbziB2JKk0aTU4
	 pOGJKTtecsDui82bUggaKy6Pv2S3zxUpEKyQ0qO6YcRfqzANTf2+DV36YKMe1gSmA3
	 q0AYDC7+liE81UGEdWxN2RVhciXUYIP7c5hD8KlUEZsit6J2+YPf51nE1zzYuFWzeE
	 p4IUAhLp02qRTRiK7GBtJZiNTs0CjA7m2WHuwMTaBhwRjyHfj5yqHqdDkQg4OyLIbT
	 7cpeGVNNhKIEoaoufS0Bvx4dIBLCn69yDU6C9xJDlat8Wxx66vqVjSVd+8Mo6gX+0Q
	 BalFbSWhMGhJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23C1CC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197323372.23776.15781867512601876390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb6de3cc6b7d6282cb1f18a5d9f166a1597eee7f1230bbf7fa467421cece753
Date: Wed, 14 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791973233
