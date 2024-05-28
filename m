Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4890317E90E
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716884063; cv=none; b=fkutucMa8aWi8jLiRvVU7+LO/PizXOdpGF2QZvThPgytgtXVRa4p1pEnDibsrDqVxd06OUPfhE4IhErBT5rAWqZFa8llKP/qpm/nUFlqJg8rfNNLSQZ2/upobsFtJ6CuNSQy4BhgEZJ/UIMbPIA7t5z0xZPklJNseYD6xIFxQ7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716884063; c=relaxed/simple;
	bh=10P29b2qwJPSvPe8Dn/PsSofZLamwDKBn088C3FbvCU=;
	h=To:Subject:From:Message-Id:Date; b=hpNmMXJ2GlvqUaSnZxSNcaZRpRveD7aiw08hdZsY7qM/YJUdHj64qcHRmA7SJnHSuvMTexAXas3cI+ly7c4+ultUg9A83/Ccp5c73bUVJMgCZs35/FZgVyGpL/5WN1W58TrxagscXMuCmjvkhXonmNpx5aitZDt4FntKMxzNIsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gipJgypN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gipJgypN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B91C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716884062;
	bh=10P29b2qwJPSvPe8Dn/PsSofZLamwDKBn088C3FbvCU=;
	h=To:Subject:From:Date:From;
	b=gipJgypN0yVyUJQcRMLhlLnYo2yOsSEvQDlPQONu+hgID29JFqAPOpoZ6dKn0kcqP
	 RguNlh9VNnpSaLV+Vg/a8274doHw5Izd+d7OwTx5Vnt9N+VXdOb9MhBbQeB2ebndVP
	 1XIIpGRiuavL+pc2e5F2z0Sy3sppqIBq3a5DqSdmuw5lLTUYd55OPODuMMz7VZtghE
	 xGhyIJXKiiCpJ9wHFnyxCFMs3kcZEEd66QdJ7iZHjBWzf8P3584mRdsVB8xcJQUaW2
	 VdVL5I6OL2322ve+ldiYdgp2htrhkHesFHqpcJR+8AmIww6urRz3rilZU8z0cOVvqK
	 1eEI+bRuP2atw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF53EC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171688406277.18714.15080428274890063122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f774426075a08417a7f8f16dbdbff7ee5f8232a5b24cff82ca88c5e04417826d
Date: Tue, 28 May 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716884062
