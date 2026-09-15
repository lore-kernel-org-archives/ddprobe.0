Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302DE39BFF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789504834; cv=none; b=sBilfVW/NjibaszHoOHp/vVq7Jh/UkCqE09t57ZkIkb0FkiVCWBWDHSk3V7oRX1dSbdKn+Rx3GV1+aWaQFk79VMGtfQKSBzgTw02HrtyG7Fbr3EoFplEw9ZTBqQcM5ophxmgpraK9u/Z7ZGl2+C9D7czHGKqCD7kfS/Fx56I44w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789504834; c=relaxed/simple;
	bh=99+QdZIOW+Q0r+rCpYZ+YLVXT+gtXeL8GzEX+D+uEDc=;
	h=To:Subject:From:Message-Id:Date; b=CkBigA/OaiQggBD7DL8cMADdTdEF7ntFcZWRLXPC04w3ug6rJALosGN5RwlpEBFIXThpcwB+/z7DESHBs7NgU7a3bVddjtxtgJrwvkEufSw9TP48FHnNiAomdpTUM7Z5UNd1Krz7eG2b4WsKTkow37HASrlaNQSi1pqQonbZmow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBT+9CYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBT+9CYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7F9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789504833;
	bh=99+QdZIOW+Q0r+rCpYZ+YLVXT+gtXeL8GzEX+D+uEDc=;
	h=To:Subject:From:Date:From;
	b=rBT+9CYhF+QF9W51i11FB+8DiYsxTM5l1bKBAeWdteCW2ZBT449kh0lqR7iFl3zpx
	 aKcCOy+HFi1Kqde0wC0rCdHVXIbM9pp6TFMI0uDv10pSVC6/N0Gd0qdVHrVdMnM9dX
	 /U9BN1rkXcMh1dNXXgnhEtg5Ay7XDuv+Zct40uKS0+sk+drwUMj/uvOLB1ohdSFjF8
	 z5W6Ch0z6IiXGgHWA+a68/Dnkh8O+0ESUO0QDdz/O7nDTN9nd+hqvfVGJk+yEIFlYa
	 +AD1js+xNTW1SeW4EYyyL37viQoGlutYEbbA3PqAmhteO9C0ivcXckW9HOY2M6GamH
	 mX99UktykDj1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4438C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950483372.12688.6750618929004971072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466635e1f4e61e7cd3c5f92d6af610c2a1ede9317adf03f8d3719ad1b4f5fe6b
Date: Tue, 15 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789504833
