Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505C213ACC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724422554; cv=none; b=ri8pmqFSzS/KggXHl019bB7/QEUfOCFLy5k4MFQJLskchTIETJBBQ9plhhLoiU+dmnAjsH0B7WboSl6cGFIYQ/WczdGWkuTbxqgXnXyvQ6xbCkHPQUhnSqS8p4S3pcHYxUWT7i2oLBf6Rd/l8HuL7KnY/VywfzJoU3nRitm5FdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724422554; c=relaxed/simple;
	bh=OXezlBGkWmWQbgy2EeFWX3HGaPJ9xKYAHleMwilA42o=;
	h=To:Subject:From:Message-Id:Date; b=k698pytvrOmzGgXU8gOP3WayI9uMlX8SMGfZbn6y0aMQv6qPDA1OUpBf8UxwE5D8Oi+ruZwUHthd4Xguiy1Lz4Pu6Zr2tl6ijWphKrYDSfOeh4JndFKpUrhcY9LASq+GZbrvST+0r9pbdA1ifKjYBZT8OgaFS0+MG3uyGB1LYg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOWAKc//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOWAKc//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82F4C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724422553;
	bh=OXezlBGkWmWQbgy2EeFWX3HGaPJ9xKYAHleMwilA42o=;
	h=To:Subject:From:Date:From;
	b=KOWAKc//2nUjHSscwwyzQnNweBplM8xqXZt/mBNC0rpD1O21KwajptXImNyHIACuj
	 mP7CTgrA03k9M+g1v/kQd6VBRef2dHpS9QZMZQD6Oh7kX0914qdFDzW+YqKdmJgy5p
	 xRoDyK7/OlSAunOsNrEFk2h+r1xLvW+GFnny94AYaXO1GxzP8O3eU2PsBkP72W9wOW
	 HCm66XXts6VC/fPZU7EREn3ka83pzCvyitb6xzMqOT8oTe5z+y7Gs8N6469ir8ylnv
	 hXxZvbvSqoMNSSbpDnYmBBTXEVORaVjhC8VCJV2P8fABs43ciGzqm1jYlZIhE6u82S
	 oJPsDE7EjiTHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3E5C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442255363.21858.13988873738689577801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56cf17a604bcfaad1894d5bff09d0c3d87d1f6443d43b4c7c640046b6f4a90ab
Date: Fri, 23 Aug 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724422553
