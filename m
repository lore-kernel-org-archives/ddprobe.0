Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D44553AD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720922423; cv=none; b=LVd5xlVDq0yeioeMd5KmzQWPciRNqVjk9Ht0WENi7RYLO9lUOGbN7x8OWtU11cxfs4msxyMmm9m0xPBHaqf7yydSI+v+Dq/Nj63sIOmGo3mFh3LqMwoK73h9adDZysf/4hgYdk8H1HEjS3AntQ5V4otJoaWkyMpLXigs5ssMwh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720922423; c=relaxed/simple;
	bh=u0NTLar6wPOHxOi6yO2fSgUqIFYBQA4d9kvB9nFKC2Y=;
	h=To:Subject:From:Message-Id:Date; b=BNVGtDs6Tlociv60fI6FcdfQPasjR+73wr7/hAeX9sz/CPS0gxNPOdyJcEq4f0Wk0OZFkM7NA0XrRP7s7OcWhVDLXrRBsDghzgvCFOquHDJXOFia8Dq/huOzEjqVYPZDQGJH9aCKKZo6vmrNiRQ+KkYcdfUG+lJzlHdX2xmpvZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPuzdh5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPuzdh5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F11C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720922422;
	bh=u0NTLar6wPOHxOi6yO2fSgUqIFYBQA4d9kvB9nFKC2Y=;
	h=To:Subject:From:Date:From;
	b=WPuzdh5Pedb/3Jukml83Cqap9bWYUZHOxa2kSjQXFOlUKW7E0LVNMyMCwHHBBb/Zt
	 p3sfDhtqLXzgqoxcQVpsBTzqzWKmgYTFCTx0rygnnjVjejqu8dkMxpYPSsN0r4IcSC
	 Y78+SmnXubaXdK5k8jO4aLlBf33vnle8auvvzOd7wERG4AQ35lnaICiayzxRg51e5Q
	 LtmA8Z3PSua9N9mvpoZV7Olcooxjmr5er8Z3bgvT46A22j091WOUl+nYHZXf1PoTMU
	 sppkD31XZKUItmuDgu0oHA8Y32VvfYD6dDgrpksotVslOKC5Lq5/Tl2i5nzvvKQT4J
	 b+4sXxCRM8BWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C57E4C3DA45
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 02:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092242278.24866.2554740792191857452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73a049c5fd60ac41deee02af27418ba11dcedb47b631c5dab57fbf0398474e1
Date: Sun, 14 Jul 2024 02:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720922422
