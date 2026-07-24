Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482994908CE
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784925034; cv=none; b=XLO+yefPvvteFHVCUUnHGzZTZszZAi0x/XZq4IZbYjt26uLw0CFWYEH4AB7Y93s0ThVfmdTH7/lsBHOKxv9/dcxJLJnAPPZ3ZOp3GrXCne2+NNP5PGzA9HRq7vUTE1DyNcxuwtMWBnsbicHrQHkTopY6etaZEqIVTaS/FzZkijs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784925034; c=relaxed/simple;
	bh=UnWDGQHpp5bcIWluw9kPiuR6JkY+/ncQFaGAFiHi5aM=;
	h=To:Subject:From:Message-Id:Date; b=eaK3wLagNLaXZz1WQ3lmV5uRqBlDIqA+mGDjMNDIyOnpbfE0hTzSsnN5GHyTn+hkTSPQ1dYF10C6r2EK5eIsx9h2RfWLATj0ySRdpCzaZNj71+487JN8LjOmj7zeCHu7Z7FG/87MFGiUQol2MZo7vVp+a737y2gcybCUxBDqVY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QffG8sPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QffG8sPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BE2C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784925033;
	bh=UnWDGQHpp5bcIWluw9kPiuR6JkY+/ncQFaGAFiHi5aM=;
	h=To:Subject:From:Date:From;
	b=QffG8sPGVwtIQt2ZOk395T+QUa2DoLfHjpu9m0ely8kn/uQnqcmM7Wy5iuuQ7seTy
	 7haTQRdM6jbgHJ02QWofbiRzGgEkyQi0OEdHilyIUwnh7Ys0Dy3tQ6MoQ0FnYcUqab
	 +y/lYuE8BipMETsphJFCPYxJdd87H+XZIj/8n1eYt4sjn25rB8L7rgrRuulAcWswLg
	 wqVpVtCv3G7PA98IopT3v6hxnbRgGmI7j8m8cEYyXN78MwTgPUQo0FqIY6bhtnggBz
	 cMlKjzuo/KdcwexZywr/WV446bkjWX+s/pkYzNdGkI0UCHxJxylqhmdjx1QmvUEDsn
	 Hu2Fj40wKiXtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE33FC531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492503368.28868.3623796237793442598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc09402ed47149a8af2631aa28c5b88cf864248d1813022e0e739922079103d4
Date: Fri, 24 Jul 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784925033
