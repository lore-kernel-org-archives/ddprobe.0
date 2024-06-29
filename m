Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71CA213C3CA
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719689663; cv=none; b=a2uKu4xVCW8o8GHDK1h22nZDoIyVmTm6uoWBSQlPF4uAb83C1Uiecb2ZnvI7TDdBcL9VxSEOIhDogKLOY64xN7mLykeN4eqL/0JXT3aKKwxsJ9KvMWKlA1s9gMp1opR6KC8GtRr3kdQ/sfPw6BpS8pcm8Ghy2Pc+dUGusH7MsgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719689663; c=relaxed/simple;
	bh=2H8+GZ1QOWf8A13WBcxl7L7eSYMpHAcMT2dPFL2a+Qw=;
	h=To:Subject:From:Message-Id:Date; b=RWEShIUDNJb68/V5eY27GH7J9em3HjiDBNmUGpPr4XWmOpOPr2xvEtQhTT+xASr5j3jqiyqcgYabcElO/13XxJ35DJslxLC9p62X2L3MaWPOYxpxzPwjGwHg1Jcax+lcH/Ducyd10IH+fXT1K9JpPRCN3rVlanTJXm5BvBEKL4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6vpGRnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6vpGRnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBABC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719689662;
	bh=2H8+GZ1QOWf8A13WBcxl7L7eSYMpHAcMT2dPFL2a+Qw=;
	h=To:Subject:From:Date:From;
	b=F6vpGRnOv27AIBtjYdVb5JcmwFV1fAgvnBZ5euzQo20WQJn5jHYVmkxYrs/n6+wse
	 g0b+/MBUEQah7fWSf3y+Tq55dMFUboyloBx6h6wJXGWw0137ofwOoWhJjxpxwlTQUH
	 ebsfXWXp7TmFpezY8YgfC78Gpv8Zq+NbbVn7I/RG2zvWqLX35csOE6t6VKKmM9OhAd
	 2cnwyViHAnCavQwF1oEV7xr1Y+osIo9hYc6IqYBUO9vLcR2sNIV9T5wwEBUaVFL9oA
	 D2yTzYyKzKiza4xuN3yMb+YXmH/eN1cK8RoQ9xFwFMShul55gv8fJUMBxHASkMJ7z4
	 yqd19+VcYOObQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C415CC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 19:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171968966277.10606.16304225618158376744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee6005e080c9beff145b69b80729a8677a82bf5d754b63b8a62a1bb8c50e56c
Date: Sat, 29 Jun 2024 19:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719689662
