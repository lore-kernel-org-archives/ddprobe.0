Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3608872612
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760272794; cv=none; b=nrOsRXPw/cLWJlbvtIRQ/ROhCYm0WeDisOnM4vs50muRauavI6vTxE/w8IGuXxJEsc/FuqLTishHDYq3etoBR5c3P0ETSOv7uUtcnb9h1IsIbyshxmx/75rBXGosPsH5UFXh2BQzkTHblv8vwNSPa5Lbrla3pzVNX/PaYDoUEi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760272794; c=relaxed/simple;
	bh=1RWqULL12OgebD8nX+MzLtcAZng+zniKvt4kRxNZnpE=;
	h=To:Subject:From:Message-Id:Date; b=nV/I90Kv8G+iqrlg+VX2ewXYROz8PQIWhSpLwrTVLVmoeIvmBZSkQ3BwOCKuKQc963OEMZ0W6lLfPPkmakyAR/L8sZ103nYxyh9aw9OhMg/TbfuCBL2f/9mDUuiGfAQ1pVClP8kNFi6Jb0OzqWZo3GJ5p5rUdQw0w9/4fxG5B7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvKBVy5D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvKBVy5D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C4CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760272793;
	bh=1RWqULL12OgebD8nX+MzLtcAZng+zniKvt4kRxNZnpE=;
	h=To:Subject:From:Date:From;
	b=LvKBVy5Dy4DTu0plvaitMYe7BrDyLVU3buGOHhsZq71aDyjW6RvheSsq4FqA+RJJr
	 es+M7mP550CiAoR4nh1kDMNZzjPOojSuzCctWXhXVQ/HgOUEh1y9ZkhcW8UciGsVLQ
	 4SF/TV3tb0XT3SX7f/mG702IhYuDN0pXpwXcnMb+3ay+55PFtB2Gou4PAYgTE8AHyk
	 yDbuzxsXEuKhelXEatGmKJuK2wupbmh2wxt7hkL0njTIBaJEr3d9BDbsBCYCe3Rx5j
	 pZWgViwZ98UjMaxOga7CysvOGv/FXLsocinfv/2NfBZi2Z0Z/AkRkzJaNbs9yBBg86
	 DzR/Tr++nPE4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C1CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027279357.21070.415992164153836073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91fd9bb75eb9e0b00aee5e86dcfb98027890a92889797ccfeca97b52cb6c35bb
Date: Sun, 12 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760272793
