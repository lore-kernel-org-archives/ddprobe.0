Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EF1339A1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753103394; cv=none; b=gnU/mGlVvhPBNqh+5SmtsDcM2J73cGzKavjOvyELjAq97iucxLpvYe7MhEo4NkiltAaJc2XWP8FecRVL3ZQzrgXja4Lw+uUBxYdk7KI5stdMk8zj1b47BGy/NHbq8x2xAZnKlU6OnOCnaftnMhS+roIyV0JPtRXZj6CGl7I9wNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753103394; c=relaxed/simple;
	bh=nKH8W7pHuEOt6AL6vCNmyOx3Zyj2awWTAASqzufSBHY=;
	h=To:Subject:From:Message-Id:Date; b=N6aj2w0pY9GsvJ+xAg9uh6OY2oiKu59sR6CVseW7LVeKRvukqrPW/HrjLszlQ2A5ywCt6aCH749uUy7BkjlDpDore+qdO8/iCodC6ZWtrQxoQXERy6tuqKCOGDgUIDrZ6TZjAAkIJmub4BqITOQLxY2nQIEXnps9CUvEp05/tI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZrlbdFC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZrlbdFC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8BDC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753103393;
	bh=nKH8W7pHuEOt6AL6vCNmyOx3Zyj2awWTAASqzufSBHY=;
	h=To:Subject:From:Date:From;
	b=FZrlbdFCWHL9EqcANzVg+kiKnP3368+70PZ2Fj99BOulATtrNyMNszZUDeliE7dYQ
	 Wdf7I/p8p8UGfozeuWp3xbV4obHZAgvcXwD4uN6tNuxjXBUY0TXg62y67jDyh7G3fh
	 R4RTjI/yn4GbKjF6aqeoxAnOqq0E7dpQ1wY2Mcs9UNaP8sGog7y7zYkSSrgnwgMZzH
	 mKIvGn1J9FJM1H9l6G1v/zjpGhFYMv2emvZcVnb/xJMtxC0LLraRR4XfQmBBjzCYp3
	 TXedFq3EfaShThxcOpAB7QCNpla2bii5ysGhzImjAJ9MpZI1i3VDMbStX89ty535MC
	 RbKtjumuCoa+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F42CC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310339357.27601.13155435718857722194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8d9737206b304ba8c2c6411bdb67cebabefd49ea33e970aee45c518aa567bd
Date: Mon, 21 Jul 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753103393
