Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0B9316189
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762261794; cv=none; b=frJXnLIvKC7MuDl3I6TcyKyu9mRpIPnzFVhaQUvbmwcAs9m8uiMj9g1sg40RdbySvENDivVEIDk23tVwRlhgzaAJ8yZ141cd+6+Jq/H/ikcQx/DWYi2EqjCqOQDKjMQREoe148gXXpAlAK1O7nxlh3rMFFtyQOz1ChDN6he0gvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762261794; c=relaxed/simple;
	bh=vu+AeLKnjsCo7pNbdM+9IIfzU72Gk1NdwihV1QHGdtk=;
	h=To:Subject:From:Message-Id:Date; b=ZbwO5FKJoUdWOlhpqO72sZ5Jh13bG0jLQoSVGv49Q8BRpwv/M0hStGKmEE38ifiArSydYcxNqkeudZ0xSSLPOYUDb7LbraH7CilvQbBEg427l3MPuDDtv1XKAY68m6mrSIpiuM5Xx+v2tUWCBlvW1ZDkM73zwNoky5+kY6tavLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BM+1paY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BM+1paY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DC6C2BCB2
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762261794;
	bh=vu+AeLKnjsCo7pNbdM+9IIfzU72Gk1NdwihV1QHGdtk=;
	h=To:Subject:From:Date:From;
	b=BM+1paY+1KGprGonaoatuwGfqp8Et9kdD62hlhODbtnxs32emzcQuQjRsEuxKYCZn
	 FkbBigcLH4LVSoFgXUkvfnlkx+vqzOhL2QNJIdM0AWEL5UqeQAzKGrXQiKZXODhnJw
	 zKy4GPjM5HhpQwIrTc8UyoXyBqn6zSTd9XUdl5TUVVHeeTtMZKuWfOosm3WFv9AUdR
	 Yo+QX3pc8smeegBz/Wfi34xtcON/KkmO6+kBeB2OeXgkHYsMnb/T+6tz6DHeN1Q4Go
	 zyEsOCmVyLPQQVUCkGl2mjMiGtiW6Gl8PGWj1p55lC2pq7UBtST2Y1/Kiv+eb9JPcA
	 Xbra2z3EzlToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C145CCFA06
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226179362.25958.10998185828285842188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af622d50ff7a0489b9404782ec7354cf5c1f45ee879fb2412fbe9b10f084176
Date: Tue, 04 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762261793
