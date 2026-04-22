Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240863C7E16
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776860854; cv=none; b=XmUvgYr0g5l8VYk5VqaD/bQqBvwg8IgUabh1qCIjcP3xKBrUo2EMw4XM6dJgauptpjJoydJ7dHgZOiO5WOfSE7v1rWcXJ8cX+OMXkCqLnKXxm240ZP2RovE+BUBqexTrvi+biegl7x3+OyYrv9xBTrT+78zmsQtzskAdIv+Pqj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776860854; c=relaxed/simple;
	bh=CLkT6dluQDLBu6SakeevTMer+CmFhqeRypr/3nidV28=;
	h=To:Subject:From:Message-Id:Date; b=FdmkPG9hoXL6ttbnLc4mMsuvpDgqJugaI8hpUtdjsIbtsD5J0dCZ3lEke1n24Eq6dtZLQTHvDn5dYa6ciKGRGMUUU/+MccMZmmfsF8EtBs3DlCVSCn08rU/VqMpp4loAO2QXSFccnGJapjF+zB1UcuErzm75pFk6/ieE8BhUku8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0N2esx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0N2esx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC428C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776860853;
	bh=CLkT6dluQDLBu6SakeevTMer+CmFhqeRypr/3nidV28=;
	h=To:Subject:From:Date:From;
	b=l0N2esx0BSG56DVMpi7WgP2zZN5PR6yafcgY6tb5sp0aVtDyouDIFtLe/yEG/Cris
	 XfHdfS3fSMAYKp5Cd/MzsKPpj/5X4h5HR1vOF8QYT1kXKFeUpyShGbwD8O5IIbdP1+
	 8uTxIru6Zni40l0s6Zw7VbfvcFEydT0DvqET0NznEzhj/Q3S2EQ6j9CW8w9mwssIGS
	 ipmTZqoofjl9qwEmYSh64QqmIw1afWS0m19CsZPoeSuvTDXB31giVauIofZFAVA4SI
	 J81MdYZxVAHNQ6K55i9e2J3nDIlldTCy2Vhz0gSfOIu3CXpugue0oT+Bs0nBULAQpp
	 S3Gz5Wqh+tuJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D36F9EDC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 12:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177686085368.972.9233270964314725210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734283bace8486ca18bc5342e482f8db7172597b49a74c73fc4561e7be30395e
Date: Wed, 22 Apr 2026 12:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776860853
