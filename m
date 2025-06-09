Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC012580FB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749474594; cv=none; b=LQxbQFPkwb2l+w1/hp1A2mONgxa95d3m7HsB/ppHZBP86bUd1XGUWPE7ikTgd4fAREfsdzF3TCe0or6JvF3rfUKrBm9Vl6omYB1Xv0LERqGhk3p349TDeCdnh+GnmI8gK2086Rac8wBinGM68voLWe5BXBKtLraFxgGod0MFTv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749474594; c=relaxed/simple;
	bh=HeIYkjA5PlBT3HjvXii37YyrroO0l85EdP5i9fkTdow=;
	h=To:Subject:From:Message-Id:Date; b=TI5xsYn9y7zf+ITDH5Hac7G1Hi5UfM75H1iLvwxReKMTjDjbRicOJlRIfd1DNopMte0A6EbYT7ofueKhqQc1Czj/HxCE5z7zQSUwTCHTBtZKvJIBet1d70DJ39+fxh2m1y/nsftr/O3Mf0HZFrRsGczrw4zQHfegnzc+7kxYdzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8KRxuqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8KRxuqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58ACC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749474593;
	bh=HeIYkjA5PlBT3HjvXii37YyrroO0l85EdP5i9fkTdow=;
	h=To:Subject:From:Date:From;
	b=S8KRxuqdy/dTc0lIFQOk/OzrcTJcQNh2ks9FBwTzvntI7tJY7VU5JDaoyiiNZEgRv
	 v4D1pcb1o/uRzJ0RVTp/YAo6B/qgBR7XPeWN+HfzBeBwrvKtnLVyOxvj7A++4sOCcD
	 F00aDQQGOm8GKfZGNACN6MiySBnRflmBqr5dLR79XOi+gUvEQQ8VFibeBTnofCWw8B
	 zLWgRpT5Njl9y/LBLutRjXRfMGxuMLUI7DuL0O+l6ZjNwhesdMgqK0TVjNB5WX++Th
	 zsWvnB4CKFjz+jN+U1ceO1PBcnH9a4m0KQxdRh3RnEEqw8l9qx1JTAGeejid9eja7B
	 vwc79r6wakAwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D7C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947459358.7227.9948368400885696272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893c9f2ada54738616f96be88e9d6f0a6083d5ff56470989bcffb0570c4aabc2
Date: Mon, 09 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749474593
