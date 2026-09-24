Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E57B3E2AA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790233834; cv=none; b=Nr95Hc/sFVo0j0ZyPFIz9huakoMQYWZjSJVLcSzFFOdg3XPI9Ly3IfPrWJR7c+iP3B5c/jdP4G9+h84IXQRAVRr7AoyJm+9SfGqbiJcYui8ipEIvFhJVbuMw6L6Mz2sFy3DGc2Eq1Ea4nitqYevmA7bGCyNBPgljWndKzXrlBxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790233834; c=relaxed/simple;
	bh=qexilXPxSUoe/EkhQLMvH4bh5PfM39EKk7x5OEDzZgU=;
	h=To:Subject:From:Message-Id:Date; b=k8uNqDMAZPmHo4S7Ukc0cCktru+fsbKqQuDdAdpZRx+/U4liTRLpznyXBvFj+Scl/Ax7nOAYe9SgBDnhYEn0X9l/hUK8XO9TAfAm52gW4tHS0xgc/NzVtvR4Gb+PtEq9GSvY3eUlm0YKG+1KTJcbxCIg86PeCjFeA/mMjl0on0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5shzEJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5shzEJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7B0C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790233833;
	bh=qexilXPxSUoe/EkhQLMvH4bh5PfM39EKk7x5OEDzZgU=;
	h=To:Subject:From:Date:From;
	b=W5shzEJF2rU6BxifdUU0hF2CS3iWqRUslG4Csq6KLusXFNMh36Vl+6sMpOx6CFB/V
	 4l4hB9PdgS7qwRl6J+lRS2ZfqO2vfnYx6ReBhUFXobhkE71LJP886YxIOcEk4Fgxhp
	 NPXa68I2RnPH69UmWGL17DeMCATgqAy+CLZ1SUu6VPqvUA1Sq8ZWwcqfb5IeVaSKve
	 iKAX8s+64o95NeTH7aEPI2A7NvP8dPTLj4AVgEMnFR1eu+j8iEv+VW4LLyrkENgo+G
	 bV3HM5pQYWxSR+fkBRAgH81qqs/ihmk3uxS3jmPGn0F6LUhwiHKntzXnhFzplvAfiF
	 beixJjv58iIlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA298C98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023383368.3178.4769579072191053279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf3a01b5d6de8ca1ef29ebb2d01af2af6b6b6cbb27b6b95effe430f71a152679
Date: Thu, 24 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790233833
