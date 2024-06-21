Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8C138FB9
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719007343; cv=none; b=Rgaqzpq5rb86+Z2f5UBhDAP2MwgD6bgjiK2WUBxARdGRmLkniYTxYm3XNc5DJL4FixbNnX+wgc35v1M+S68JHQqgloA18tetHkYqeJVNngtI2gse+erU7iV60nF1JUnbaTF74AAp1xNxdFj3g3/1GgTJ59Zih54XBlHUCTDbp8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719007343; c=relaxed/simple;
	bh=JArXMP6wQFwfQbsq9nuYMKcEMPZ1UkTL1jx7BgBKQro=;
	h=To:Subject:From:Message-Id:Date; b=OTVwjhurPOy+pWPiBkYihyI80Ik4X0iNkeaVbnLiDlB2GMq4RvRYWDaPmvhVUENpBM0Z1xnp5FOrFjN382LXG7hwsKo3lY/lr+cdmhGU/s3ZNcPuEVomV2L1PzDz2Jz/DH4k4uBf8ABWg9yvOeICg++Yxb6Z3S/mINLlBAWJ3J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeSShOHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeSShOHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0271C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719007342;
	bh=JArXMP6wQFwfQbsq9nuYMKcEMPZ1UkTL1jx7BgBKQro=;
	h=To:Subject:From:Date:From;
	b=KeSShOHhcllNFcYpUK5PwE42YS1i1TDSon7E8VkX4OkjfsZEOvY2l6hiXNeGDjpDq
	 EhmXNVidMCNz4mXLJzvu43CMeb3bHt0faHEuu4E7Tgx3S505zcYgmzwNyHBar8DQe6
	 MrkBVhTAR1Ices6GQSSdvwB7CIdVxKUpbDZGQGyitD6+bQXZ/3wXA8OxKBpiFUuqKy
	 hHdV9HwzjWUqo76l2rRghMuUGlaoIqwxGRYpTYMe5HajtCicj7OTPi5QKp1PLDPGpE
	 qy0IJ7SXXR1CiAbCipuNCXQx5/aE6TDswsB4FdP9KfsiqF2vKDWvtZpiVVADjc3AK3
	 pBbVSJUKYIFBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B67C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900734276.22986.9721126525798048516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e004d820cf5ed097c05f68d34f9e96de7fd573c40e14a308db4687695de6b718
Date: Fri, 21 Jun 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719007342
