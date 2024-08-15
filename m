Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D2117A59D
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723707954; cv=none; b=UEyYXzUYFIpZKxAqYzzhBEmzxeoekGe0Dw0eZolz9p+OGxX0+9Sh4ltCQfP/2IY/ZSp9EV/PX5jcIlHIdUk6iRli4Sv6crY0jy+usZYKYe+5BnCi00C9SEyApxN+qCmSGfC7fj/+bRea509n7c+M1Gj7dQhGgRZ0bvGy8L1tskQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723707954; c=relaxed/simple;
	bh=c71lwMx1ib3Fo50YTcPFJ/tk1yEx/WmfCr4dp+F+VFw=;
	h=To:Subject:From:Message-Id:Date; b=MgDonw0Fff8/j7zeqXK1G6M11PRJgkBXKA/Gc0wCXQnJuUKtPiTVMJjl6NOqgzG7zDvF0gKsHYLkabl/CtXsQ22MWjc0C+z6QCKwBB69ssO8Xm8XvUhCllDgeJgyGxBTGkzHTpzYxN8zjNG9CNNDUHcJpTptj+PiEbp1nKq0388=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXp4UTBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXp4UTBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDC7C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723707953;
	bh=c71lwMx1ib3Fo50YTcPFJ/tk1yEx/WmfCr4dp+F+VFw=;
	h=To:Subject:From:Date:From;
	b=mXp4UTBjmE1JCMUvXUsw1sAdXpuUiwPbzk1N21kYmSJaANaZR7essn61NJuMmLM1u
	 kM13KuMwEGXPGeT6L/W93sKLZe8Th94nosl3MLGnOl4hHDQZxx8HWy3hwiu0jH8jkq
	 BtgtDqMytUTjOE6mXtQTuFsIWGPdK0QGXOb7pYvT8/Q9eUUxJ+4HEC2ZMeeTVzVN5m
	 7XUyd763gM1qRUPclMPe/LKXWu8b0YAaCUUevM2l7/EErruJ9M327D0noS1NOf4c8G
	 yskiiUhjhH3NJ9xmTONZ6E1LdGU4i3ATY3DeNzixChVhnd60z+k+Hv1iG42BT0iiRT
	 6oU+gEr/zSZ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12F7C52D7D
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172370795365.32244.3723814077247100962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1e67cf679872df827ddcae7ee7e3d8d21ecd95ef91ab1e98bab5812fa5e36b6
Date: Thu, 15 Aug 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723707953
