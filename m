Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F611A291
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711097897; cv=none; b=pTbrTfwIjHhbRQRykYVu51t8LWBngmuezZW16r6jKd0vR4okEZCx8dR/boRCXCN2QCtvsDCneDLK0UGNqksyg3hQkbHYUyAFmF6HlhpDO4EQo1GiPQga4O78pjyUCEMwfNy+0tZIfFvpX3rjl2R6ma29w0nSrLrXFYZANYpHM6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711097897; c=relaxed/simple;
	bh=fAfmG5+lOQp4J6c0jSEj5mTNghLAmsPXPxJLV1ilhjM=;
	h=To:Subject:From:Message-Id:Date; b=Pzh7S8XdyrpKc8PPe/IyVwq3FOe+/NUvufrolzmxI9bumYEDd0nAeNVshk5v7rY2KHveldRThrGsjyoNKyvayj4+zVVrRjDw0k918LBL28NE+eEN8WnAywZemtuXSfJGWxIrT6HEquYroDVcN0RCuyRG/W2nXWah+XEzyn58ypc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogVd/zy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogVd/zy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C437C433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711097896;
	bh=fAfmG5+lOQp4J6c0jSEj5mTNghLAmsPXPxJLV1ilhjM=;
	h=To:Subject:From:Date:From;
	b=ogVd/zy5lDOUHbaYU2FwHhXSDYHRHJrLEEkwcNhZoes3D563i+Lgt3dIw+y2oXJNn
	 f4epagESVzPZfPry1zUgNVK/klawM7aW95pgFIKzbgCmUIoGViKjlbRYQrgn8kf67K
	 v4nGNpp6Xh4OxIpwOX5ffne5TWS34FJ9/mMaQoAy/2B9bISIzrlQX0LVC0jrbgevDe
	 WWNiR/eKl5J9j2i0yu1cK2UNckInhENslxhXjzuBYxz7VdWJsPKG1bEmrV/5+xcVFq
	 cxSax8Y/HooULDNzTGwYpIzCi0rww3bR9/JPJajCgEtP7dQf7+6JPILrp19yxU5W2E
	 8V2Z4aOrpjkfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E65C47DD9
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171109789641.8571.18218581495186797529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04daaeb11af2fcee7b880a75c622aa9a02830ee7c3ca888f517c1606f413fe17
Date: Fri, 22 Mar 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711097896
