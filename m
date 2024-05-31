Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8867F168DA
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717199663; cv=none; b=NjBEx4CsdhOv6cfSNdtRAF9G8+dYef1/1nFkTvJBCSk9GTYYCu0tPM5g+t5ITsZrZkFYUw//FMiwuL5FOH/Ipn/hdUVCYSI659ZZUGUXMlAxRLldwGyXCL1hXrL8ZL/dH5iGd4DL2nyZbYZAp5Fs0+qF+R7lA1TA5ZjYcL3wz7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717199663; c=relaxed/simple;
	bh=zdioxm2aRSS+ALzgx5a3GnfBzDD+FxVL73Mr1DQ9boU=;
	h=To:Subject:From:Message-Id:Date; b=pYDZ2MfYN5PLUtSO7ylUczQJ/AgmHjvGGMtVq8AhqTnKQIUlHcJegHHsorIrs4FPr7yluUJJ8+N19/aLxL+JvHf+ODDonpXwQRF+MbyXdt+QfVN9BFx8gEzAIy0pWvk4k7+Taoew2ewPGV5jaHyqa31DhKu6u1U6Jp/LlNr5ba4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shalvPKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shalvPKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2737C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717199663;
	bh=zdioxm2aRSS+ALzgx5a3GnfBzDD+FxVL73Mr1DQ9boU=;
	h=To:Subject:From:Date:From;
	b=shalvPKlzICyrKB39qIhmlUs8lTdLoefxvIglmOCZ5x6i+jozoDPhdCdRYyLVqM2l
	 B9/e8dp7h4L1SybpAx7vhX86R9Vg2VOq39hoQIvY8/aIovGpra+NwPRn72cwR25TqF
	 drWI/Sg004w+50QKToXIatcVUlBVBNLMGU5vVESV0m67JRf1uX/VKmHT07Y498A2+4
	 0fdhm3Vb/D8DN1MtA3/VYhDe0Y/Gyg8i4ADnZDokhXcFkG3YmFrJw7lVY3STGAWWwq
	 xK0WskM16YFxqD3KF2vf6xR0UZkYtVURMZbz4iFirkaaoEHIdFbWVo/9pRwYP1Z2l3
	 kkham6h0cpkYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD7C7C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 23:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171719966281.10644.12641659954734080504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989d749a03c856e0d21578a5aeb31030dcec1c4750bcdde6b925c56a9bdf028b
Date: Fri, 31 May 2024 23:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717199662
