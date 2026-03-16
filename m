Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0174231D74B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773629694; cv=none; b=VATkMqo1OezOkETzkCK+CfGwpzrc+kME0EoNBFypW6X+l2eAvuz1lAsf4DqoXbaT0HHdw1TKfDev0Ob7MtmPtYpbGSaBRS3/C5H2E35DUe6ed11SAO/vvWvIDLuj7Ciaz0neLHEMhP4XwR0LdBCB/USA9FM055jbSPSAsN0bY5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773629694; c=relaxed/simple;
	bh=pBTX7K5CVG7LRWzWehFXD3868xbqvP0btVixrpvsZJg=;
	h=To:Subject:From:Message-Id:Date; b=efQBIGJK5Fo9B+QlmWohfDq4tYZH91zR7Urep4d8+Ly/ZMc8JR1SX88Za2LGZTSzmVc98Sy84b5hSp/kAkgKcXGoB6ydlTRuwFd8ylfhZZJol/NE2k71/nTrQ3hcOEa/EMLqHZl5rvtoDb7mZwp0+TWVGe8HiAE2jlPuQ8QVfSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnRJtt4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnRJtt4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F65FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773629693;
	bh=pBTX7K5CVG7LRWzWehFXD3868xbqvP0btVixrpvsZJg=;
	h=To:Subject:From:Date:From;
	b=cnRJtt4QjbStJwN8L+6QiNpvpfVD87DdGbgr0ZWc50QG1sYjofvx+uyvhU5Ds1FSe
	 lH9ANJ51hhanIyF6IZntqe+pIgdZK+fGaTrclCqTE6GOszNeNBLV/ieZTZMex9eWaZ
	 7TIqUlRUvB9rOIvvlLoYQr7WwlDhfkXmHvzjECALSoRx6uwFvtS9BPSYZtnjweMD7k
	 2ObMt6aYs0gECElJ/l6jN3VeBX6l1ooSNYkmYFj7fb6BDTH4n7baLJd9WJEQY5RJcF
	 FqV1HC+1WPePZ0eE394mq3y9Wz2b6jr9vAF26J8vjVwbSILRNx4h1a0EaExlLneVAH
	 S12PNA1Lq8Y3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1A6F30298
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362969357.8117.3287889335432275628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f83074aa7ab57799a352de5def4e981117bff357c956a15946871399db89595d
Date: Mon, 16 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773629693
