Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4A572601
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751412594; cv=none; b=HD3AweQDvFvqcjzEQghVITvGdmibVtrwoZTR5OFPV10SkfPLBAnXRK2LBm38JHQ4QQ8Q0QofqDif7VdzRPKD2PSEKltMVUwYER2Xd1RkOIzMCRJn9RVQcQXIxYj/xY9Tx/7RyVKbUBJfk/RGAWk5Rr3BYrp0/CAU+YzZpdnjIzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751412594; c=relaxed/simple;
	bh=QToybN6bpnlJZ0D9/8T8pRTGrbvvk7qemb1Mfql56yY=;
	h=To:Subject:From:Message-Id:Date; b=Lhnf4cbZTbtlIoLCH+YMaOxhFW/kk9nT5uybnZnze2ZC8a3eTbPVe/CtQiROeVdZk1rFTCb7WqildvSQSYohIJjdg8ggjHOnqFOWFHyppo+Ll1zy+h314M4BqheUpr2giGRi2Qj9WX5FHxW/ql4fm+UHFa9lIVvyUC/+er01fBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UaVRxB9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UaVRxB9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A535FC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751412593;
	bh=QToybN6bpnlJZ0D9/8T8pRTGrbvvk7qemb1Mfql56yY=;
	h=To:Subject:From:Date:From;
	b=UaVRxB9tXdkvokL9B3cidr5PmY6L6Ek4azsYAwZT84cFHU4rGASa4VYI4Yo+KeJ/e
	 djrTgUJBzCbAx5hqSUrx1n5kPjM8fj5f5zJXqQrutKAklOi98eRTOdN2E5eDy0KfU8
	 vHHbwg2cACegQOUOziSZyS8Kz92V/llwQjz4rYCktxgu3CrnYo4O6pVhAqP3ldKkVw
	 gkC9sB1PZKcCveW/iIKdc12nkrEAwzI95Zg/USpl8AY1KEf/wHOxZaeZ7/zO/0vhqm
	 xcI/UAAHywVy+1bv6fXsFYv4O/Q//7le0BuU3ruZOIW/CRX/6+tVM9fSW+7ajS8cBC
	 q0QHZPLJBtmww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942DFC83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141259357.27840.9884955948084850255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4a897c24c1069f607aa480ef60292561551dbf81daeb03e3ffbec7b5d75bac
Date: Tue, 01 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751412593
