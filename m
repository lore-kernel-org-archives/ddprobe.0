Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 713B8313292
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765201374; cv=none; b=EcY7MBsRKSEnVnD6bXdY5uMBjHp08FoqDmL6R0f/2g2pE9IB09rUjMhqNtKYZyfqy1d0ktaoTTXnEwlvmMY/0nfWAxsmZX927ehgOhyt5xoklXiRwMHH0TqnuWJYO1pbocjKAjyjD9+IXrautC1YjzC8TF+oMJVJr/+76VBjnAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765201374; c=relaxed/simple;
	bh=7L1i+3+T4/q3zRQrFQPbN6jEvBT0lOyz1/Kp2f4pS/k=;
	h=To:Subject:From:Message-Id:Date; b=RmdkhwORbY7T3mqiSsNDck9cN3NeaB5zu/gL6In7eVRsVoODrCQardRvx4O/hJ2pSbXJ6s2HPgFmya0VbZvcotfPQ9LJvI7iW2pqA+E0L+DBJ+o3m9jI6GRjuP0FqmDr1NVzHdu809kSOXskO/hdBrkfdqb6Ny8pM37cdeeprcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkool8s0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkool8s0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F891C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765201373;
	bh=7L1i+3+T4/q3zRQrFQPbN6jEvBT0lOyz1/Kp2f4pS/k=;
	h=To:Subject:From:Date:From;
	b=fkool8s0N2hqRiubbkCWG+QFIiXGfNvdXWdd2fqOVi1Aje53W1awp95eY1KeP3Mkw
	 Muc0URaFYUvxMwAxlkGawHs+i8Ps47kK1DB0xZX21dho4z2yVAiv422Awo/dYZrO8x
	 cw9dhU82DxViJvzSy/64ANlXAs6zIvzx3ozPEPLrDUkTTxdXITia017O1bQig5oiXP
	 u0B088pyyCC5TGqh3yHX8U1+uaChGBBFCSWVRkWoJRjssMXAA7O+U997AplkJLge+a
	 4DErrj+exCJK2W9FRCHASIODbCEbFpVi0EOa8PUSm77wloohwi9gtL/UfrzObNA/oi
	 Obl4lZfwKM2XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9402CD3B7E7
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176520137359.4375.17557198283086582511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2be638161069f9cab7b0a8e9d0915367cea3106f3d5cbed1a2a3f7f21cd7d01
Date: Mon, 08 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765201373
