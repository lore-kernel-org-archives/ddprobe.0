Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAB1165EFC
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736787954; cv=none; b=f4vH+ACbu+Mq/699arPFZYacGBR89U8C9krIqHATGf5gHldgPYhgPV42qMQXU6vcN2xjigaFHd7ugZrsf8OFZs0pGz4ACT/lmIMwEwgp3Gxd4+EOtS5syiOGSmmd+fZzYwhZbn2ZFPCczICl1nnAFNsk5kY2inNlyUJeK6Md+QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736787954; c=relaxed/simple;
	bh=Gd6wJcXO1xaXfvoIVgX7g6pyHj2SxpS3GdRtRDEGM6Q=;
	h=To:Subject:From:Message-Id:Date; b=VuiTnvAtob/5O995E1E4LqyrL5BW4jPwCjZLZwl/A2SGRMH0aM8qMaVHM6hP1caf8si6v83FrS0Mjkx3nc4rwbLahZJ0ZLKYSoYGnfj5tp2N4x3D+lsaEf7I9sJJqq6w1UJg6YwVgw0yhLLTQOng/9eqpA8gNvKZkoif+8DhMuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1CN2z1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1CN2z1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FD2C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736787953;
	bh=Gd6wJcXO1xaXfvoIVgX7g6pyHj2SxpS3GdRtRDEGM6Q=;
	h=To:Subject:From:Date:From;
	b=Q1CN2z1J5faokhXTvupxiQznAFC2TWaZmeVFgWlsu/4PVixmSnRurjj9JAYCRXqn6
	 k+n2QnQShEEvALQ21qGcHEuy9AT9etLlrUbOY0dmomja1AfKU0iP/L1kL9AjVSZfh+
	 O4VbEmCM9GvtqNUkiAdyTxNWnTHO7E6A6cgfh3ptc0WEAE6PtQjMHX+m8iKfEqYJ1s
	 m7AYaGJTGlfk27Y6LKjYUBs8B/lgArUZW/ec3iXJfGhCJ2lnxua1PTla1T38QL9pVU
	 xqDN2sAGLfib0A4y7Q6+/sZNp/NGLFrNwp6zFirE58Y2+XxRbkKL2Fx4GCbtAiPPHZ
	 ajrZYhThLPcfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EA1C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678795358.19521.16174846726172236276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f220233bab373e35b87a91bf6d75c8c83559f21b248e0a1240e392f9477af4
Date: Mon, 13 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736787953
