Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEAD3C2E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771119294; cv=none; b=izbf8K2dR/h4YzSOYB7rE4L6HoD8lTCXgNZTnXbc6l6yK0FhrmSwOblXUkAu9vv5x7euimaUxc0iGOkAVhSSDusxDzZ5hUB/kg/ziaJbsCOP/DXGDyA6ArPSaoj+b530qpvWrxWinSpKo0NZN1oCkpRdU+2Xef21YbwwGhA8gXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771119294; c=relaxed/simple;
	bh=kyOFr+W51ZbIkYcatx/zdxp1QTtUdRCe8xF6PuXkFAY=;
	h=To:Subject:From:Message-Id:Date; b=nu8ynHetgXTT08ZXi6+EljflemQfjhPqymOo1AdLe7Xi/GStRIqeL0bB7Qe/BjwBSK0BfAOrQ0b+7dkwSPnhBCo7GoeiSkjhHQM8QKFwGeEgGyNzh+90FiUmKBcAEate9wuBTNundu4L7abqJ7E9d236zvHQECJGgCnm1JAxkH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpAPJufZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpAPJufZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64E4C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771119293;
	bh=kyOFr+W51ZbIkYcatx/zdxp1QTtUdRCe8xF6PuXkFAY=;
	h=To:Subject:From:Date:From;
	b=UpAPJufZSlFVgEsBZ25EFa3TNL8RNIrM6NGsv0kR/fSo3cAZJgZ/daVzWopshUE2I
	 UI4a9tmvGj1qkH8mIo9Q+mzsro+hs1ualpkAWGPW/Dh2x7wHJ1TqayVf0NERxb6B1G
	 T+TXihGuXK7dEB95Sjk3QzUxF3Xw9fGolS+pr1RBhk7sf9e3RtYbTj7kgRtatgdQMv
	 B3v8XMw4pnI63Qm47ePDG4Oq7rq5v4TaZzw8prwPrJuUfj59Uv5zdlk+N9cQifvLK+
	 S5gqVf5tl4cm9/gT9tJ1fAuFNYFfqirMc3cikKadgveMTdoPotALUY+XCIpLE8KSr+
	 lXXCl4VrlgvnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E188EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111929363.23189.9599326206110002280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7487fc014f4e85cd8cb4398b38ca383a81ceef665e342b86e1d721aacd5e4d0b
Date: Sun, 15 Feb 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771119293
