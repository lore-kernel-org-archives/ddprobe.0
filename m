Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D2323E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748571594; cv=none; b=NXUD+5Zjs8122bi4dfeg1bdAHjAxnxFNQoeXmn/R61al34KBLZ1XM+U0mBkyGPSCiR39jEfI/1JIPmncaHZnA+dU2y/tfw8I7FDI4wP4p8q/gEbZQtRghfKCAgZhpzkkzdqvntLfe+95RhMDvuxXc73HzoYctWITU2opAmIfCM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748571594; c=relaxed/simple;
	bh=6H02H/FiBN9DR7Jfky9JRlv0tuWIlNZE8kFg+cVgfaY=;
	h=To:Subject:From:Message-Id:Date; b=VEx8dL8siFu2hWyhwogAZ5Va0CSr1/IxqpwyhaBRiknk+j6bJjPtjb3HxYqnzE2gMU+QdLjwJokmJlmxvKV+IFSeDkX5I6Vy5DMXpNc7wcT70R+nZIoiSCbreB+YimUtJxkJqrKDuz2T1aCI8K45Jx5Druyx03quIgnfp9EpI28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBfuXnTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBfuXnTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D75EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748571593;
	bh=6H02H/FiBN9DR7Jfky9JRlv0tuWIlNZE8kFg+cVgfaY=;
	h=To:Subject:From:Date:From;
	b=kBfuXnTN+eOB0TlmuZYodHdFrzwIf7rd07A3Euk+wcIuWuBgLVfrYhI6bi4LcROL4
	 cas1yEEKVo1Tq1rDAvCU1OH1JiA9HSmwPFrcXUkmV5tWJR3vWf7mKxVe0OWr7yd5at
	 FWkDPQ8cBT1MD8s6QP6bRpSacC7XnTgHdccIzPqzBbxjOSelZazIYD3etSN3KEz68M
	 WV4Rd7HqMZEXwN5GsnUTenXB/1/PM/8uSWMDWMYjoKWOkjEa5b6VjVDjfpGhpecg7S
	 9BOTVl5VZ/uXJKgbnTd4rhLsDymBaHvgDLSctuLtDLfs8EvcJTScdWd4023q8SDHw7
	 qdozCLRUFMNKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0F4C54FB3
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857159357.9920.18258508336785005794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 110f94b50c261bc27dc83008e3a8f71156acf5377d60d73e3d5e41e6b47a447e
Date: Fri, 30 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748571593
