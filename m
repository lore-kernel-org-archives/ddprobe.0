Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433973A6B85
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789285834; cv=none; b=W0/+rjMNH+RGrZU8Ds9A4dIyw3JJO/ja0/D0TuKNeTiDIjJiwLsoFNTUGBjpDnAG5deUSk3ralMKDdRA3vVkDyLXc3ynAiXojLj+1cH3jdoI+Nol7tPWW6pnZQ/yTBH9glxNvdNwzUKVztbFt+nXn0OtuB+ZdGzN+QsZUSexYxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789285834; c=relaxed/simple;
	bh=91S+0oNwasgzZLvFF6kr53C118UBfkp8RkNxBqdpB0E=;
	h=To:Subject:From:Message-Id:Date; b=O7AZaaeeIshWfXFaF5fOY1fHP05LowpUtUuGvS5hD0c4WIO1c3+CBdE7u/0oqw+FACszlcn2d77Q+piFKScq4v2jHdjCth3odXV6y9qCrFl9AYomvJT/WvXLqJfAHraLWE+l1r0vZsb2K03XXIa72PanrM95TxiP+NKxSTmE1CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCJje23F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCJje23F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB45C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789285833;
	bh=91S+0oNwasgzZLvFF6kr53C118UBfkp8RkNxBqdpB0E=;
	h=To:Subject:From:Date:From;
	b=rCJje23FTVnsoYkhc2LEJCPQLv5Mr8XfXb7Z645aGP+FZqBg/hl7TbpiktAazkS/F
	 MGfA8b6yX4rWkf7VV4EpZk8pQhWxP6x+AyNbjgEIMS6Lr8Pq36i0EFiKhBV4Em5rmJ
	 cZw6Ldgoa91sskSyCbNsun0jAcDjCgiBHnwbNXMzQrNT/92aGygbzjIoMi1cj41+3Z
	 J2MQPZ1LXst4wVUgF19KmquBZ081y3MW/3lXoQSPNteJwCXb3k+t5xRARkkHldctNr
	 x++HEfk+pzW4h0yIg5HNpQ5KJ1mlIyD9YlepNctiky4lNgiVA8pn1RILlPWgkppLrM
	 9gm9W7EY4CBEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1F8C88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178928583369.26832.6017802940724942961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd6fbbc0fea046cd34517883b5cd5041e4728e92f00be143fd71f0af1575477
Date: Sun, 13 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789285833
