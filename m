Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269892E1F10
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756843794; cv=none; b=maR+ng/bbEn1lw3UwmbrFQpMtU5IpS9MFiNPBuJETO/oK1xhKtXTI0kp9zCcIW27lsRJbIKhkNufELGM+geyZQtv9QhCLLRIP/HsOVd1tkidI0SyBsN6KAz6h523QXlObTbpHOje51Nbgv5mkGoLiQNEwIHV7Fd1aSUkZow5Dvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756843794; c=relaxed/simple;
	bh=08Hpa2pCUxkmdj1LXDYZrBAA3GuLDfnn8ccAvfwc1Ig=;
	h=To:Subject:From:Message-Id:Date; b=E7mdg7asuVHCEkhhlqY2YhDB3jVq3mC9hUPnmQ6KvkLQSXtn8P5WAIL4U2feq+VZlJ9jLr++PkTTB3Zy74mIQu/7x6JQsjHAi9RSakT0RE98NDQvFvBihkCfsxyxgZQj8Y9APNDiMIP/HTZlg9OKJFQ3vGqywGexfSGSLiN9Lew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qurJWvLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qurJWvLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21C5C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756843793;
	bh=08Hpa2pCUxkmdj1LXDYZrBAA3GuLDfnn8ccAvfwc1Ig=;
	h=To:Subject:From:Date:From;
	b=qurJWvLnCkzeKMot8t9RqGQ+Z+21bI9gKLzCG3o3+SoaFhjIPsD5cjc4vGA0aA69d
	 zP3LxwKgIHwsUGxZPgp0/iamZ0o3Pcl2qKSc1PoKuz3rrTLDno+cOJC/8W+i3gryBX
	 dH8i4YuzjbNz1GCqbAIc15g7ihMHh9UBf8KgjlL6NxA9RCT8Op3mLj0JWVFc5gP7Y0
	 UmCh/t2U+JIbKFFtLHrtQp3ES93iv5UD7wzbG9A3rDse3SIUzNmK6KOAiUt2H2NafH
	 ToBXztWAdfru6KpP1dZetHGWsDU/Me/xBK+uDtxWI0Tn6/IIrIWUY+OG8mSNx4Qvbe
	 qr3hz15p/rCng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC2CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684379357.13015.6284512460879571965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12d0aed197775e6c1f6b41cafb49e69239e27b917814e32a1007d17e767286d
Date: Tue, 02 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756843793
