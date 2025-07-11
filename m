Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20790111BF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752210594; cv=none; b=TPw6+XW0ptbppTL52tRJJL+Vbt5P0fz7d1I8vIsUtjJu7vO61rv378nhef/ZjkyJ/V/PHO/LiEkbL/hwuIMXpRb0J3oaB3p9T2yjjL79TYdIJGaU40bvZMlN/ZOzQU7hq3SOcoTPWN5emgWzIOQXd2iK9D3/mNLchDcvVNrCCZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752210594; c=relaxed/simple;
	bh=7zx7rlUtCYuc6H54RALJ9T0KTK1PEbUmB0HlCSnmSaY=;
	h=To:Subject:From:Message-Id:Date; b=OFNo6FMUuDif5Y5Obopr7aiP121DZ9eZoj6DuUqXs8H+d6KJROdEffdl8K+jyDW2BUb5hLy8a6sjKzhXqMY0JX6e0p/PiOpWhNYf90EQZ82N9Cajm9EPqw/xMuY00Zyo5Ruu3wFSbauGFWWLnsQBdRZYN7ww3n5UEO81LTZOpVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mebYuBlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mebYuBlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ACBC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752210593;
	bh=7zx7rlUtCYuc6H54RALJ9T0KTK1PEbUmB0HlCSnmSaY=;
	h=To:Subject:From:Date:From;
	b=mebYuBloJ2YFccg9arXRrb62P3x8W3SxC9xpREEHI4A+kUY0VMrRSji7raRspV6c7
	 3fAeojmMzaAfpkBBo24mCH3+yQ9/10DeS2vEo0GfKFTu8v8qRcq0glG/aggF+b9NJp
	 2yC4NOmMZzlZucBN81NxbRutt6XTvty7CcD1MQr+CQl9YpKxAaL/CEtulynQU1j7Gl
	 SqVmL0ZtnFN30e8bSmFcybUfE6fpsmkvXQ7d40zZhopI6CP5N9ENbx7iOqwPFIYmgl
	 XHdRmwtusuVJZ9IgAeTCEOmgGGiXcaHfe3RZXH72ogHHzq77mxkUK3NIlCJ0mvJfyI
	 QlYInMhq4yoRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92594C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221059359.24755.18110147173247791979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43a902182573630e94cf31455e89e94e0ade803cb997a30740e07238caaace1
Date: Fri, 11 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752210593
