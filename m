Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47720221FDA
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763523114; cv=none; b=iUI2DdguSgRBDT0M48siO2csOOVrxhu/zPJ13+Qpomr6fzTzwUKe6YkZMo8KIl8JduZN8sqThDWaHWwaNaDEBHhAA6i1Lrdf2dOUqG11rEnKd+igBmxx6psMGhaiG3QzzywrXfXebNMxUW9wSDFWla+YXzIDpqZY09mAL3FE4Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763523114; c=relaxed/simple;
	bh=XPl/dhhBXfe+z2pwL8k2Sy6coMOrsdYaaraFfqN78Qk=;
	h=To:Subject:From:Message-Id:Date; b=O7lLM28J+uyupwz0CJQiMpgOuYLnPz8B6X15rv/qLo6cabg4I511bRPN4COuAdMc1iJ8hlR06/qYdx703mHNo7xEEV6mgO4E+Kwx6Rv78tDu7DwLAndueDs3bdW1MeSnc4o7gvlSl/qH2WlXJVv8VA6lXszZk46X5pM2rpnPG0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ps22CeRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ps22CeRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FCEC116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763523113;
	bh=XPl/dhhBXfe+z2pwL8k2Sy6coMOrsdYaaraFfqN78Qk=;
	h=To:Subject:From:Date:From;
	b=ps22CeRBZ8M/ST0D4Ai9pBaobM7VihG3Azs3Xju/tJ5ckBoXJIg2LRYHQyaDU0Mkc
	 MpQ0cUv6nRESfxGfvvifUG52+dQR2s0lYjmELEQvhY5Q6/9Wv/8gMAuEKr4WhyUeiC
	 IKYw/c+Hb9hm4R7uMuWAHo9DRPBMTqLsCkKge+iN/JcRCgKj4T3jXY+bLQ8yEQuq7F
	 SQdPUjNsfaMYSfhRwmAzKvl7l82az9RYbfrScNvGR8C+B6CGNmspUu88p46vHFFwm/
	 YUI3iAvPaeGGdp3ZkBSBqv//fD4BvO1lyvMCKS+3uwgbsXjQFbSYlxkq9cOVf2ak38
	 dsi3tb26xN+ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B0CF256F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 03:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352311358.11972.7509466405827361381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 783038e2cebe140da39278dc977e20bed3de87bc13bcb406fac1af181517c63f
Date: Wed, 19 Nov 2025 03:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763523113
