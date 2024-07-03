Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432DA1DA319
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720022723; cv=none; b=ns51s9qV5Q1lQoP3XfjIjeLSnFNBDP5dhdy2NUl9vIB9IoT6rLSkOp5OghbrhwtEO10xzw8adp/hOCmpGJuDaxMSknjwpS/0OvIO5IdXUqOBSFmB5wYbrRKTIJwrDDyECowCGFPj3v6IyO/VnBN74L7xv5YLKq0nEkpubAShQTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720022723; c=relaxed/simple;
	bh=dYBoI+Wrj5sitoZgMinXlctps24q/xe9dc5wcIPHDuA=;
	h=To:Subject:From:Message-Id:Date; b=n+DfF2AqW3yLiZjyJ4K8HjRT23lD5ScPRj+v24tcIMTfPnO539DoIB/W8LVCg4A0Ie2GJjf8mHLE2UcuvLKJlutssHthBeiLrCl0P9UYmq7ErTWoj1Jl11z3QX7/AGh3UKH31bGn6uS98zxfx4OhHQe0DCVLqj6TcQr07GUZJVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBTEDC/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBTEDC/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1967C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720022722;
	bh=dYBoI+Wrj5sitoZgMinXlctps24q/xe9dc5wcIPHDuA=;
	h=To:Subject:From:Date:From;
	b=dBTEDC/r0T8WqZlf6xoO49AbJrKb1OpEI72JqRieK9bj3fgw90/bBYmsITv9uffWx
	 z1UPo9oTdWLLjRr60dKmdxgmf4zMrZdtmnjHwnT6NavlQl5Br+Be9Pqcqj5K0cOhkZ
	 WtyECAFRpnRdiwkuDDjbKfd9epSVd7aU4o5BSwNpQRgUNTjBmds/se20+UCqHZZQbb
	 mIohpq22/x3qTx5bugONnMgrxzrPxaKkzjVp64vvMdMhkKV0dGNOEMv6uXkz5Slmfl
	 dN9VurMaqooU2OnxG+Pypazpld1BTPv0WmCtO8+zpf/ddEVTZ3UM2Xv+webBO0UKKY
	 6ltzWRk5nLsxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE79C30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002272276.14491.12561929616799036379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbbf193bb07205647f5e74966aaa28cf7eb9d214a4ddc4952e8e4482cc19da8
Date: Wed, 03 Jul 2024 16:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720022722
