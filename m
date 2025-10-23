Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FF922459F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761194394; cv=none; b=OZ4c4lHfHR+QxUyia7L/JEYwM15EMgwP9IhfiNFLNYmoclHMjSvU3vspnC6hb271ieo8BpGPlOPsXjlqnZQmIZ3SXbwWGDx33lwJA7KxaITEBOrXz2w1T6C65ewkRA/0nMI2/Lt1i4Ayov7GMceR9GFE3s/rY8gAqBKccj8GpxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761194394; c=relaxed/simple;
	bh=C9hJTua36WZ/8wgvFjSpBSfeqDlfV0bguq6EaUOQsME=;
	h=To:Subject:From:Message-Id:Date; b=Lsc7gFwnjW1eZxSBlHNS9Drh8Teh45WTQiMADbyKG+PNDHEFxV9TEt0CUB+Gy+tjDGEi2vYl1GOSoAol2PAaXYFsF7i/3LFib91A+EARC9X5Y4xcv8sdI5IT94N2EokqpRh/dVlhr3rLXu8KdLlyrj5m05J/CGWuV8lKL0JYa+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRwzHzQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRwzHzQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A528CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761194393;
	bh=C9hJTua36WZ/8wgvFjSpBSfeqDlfV0bguq6EaUOQsME=;
	h=To:Subject:From:Date:From;
	b=JRwzHzQ5dmVOyjGjznHxzjnH1M3orziQ+FJ7TAQKebIgh9/k0rld7PtgZGLo19h4i
	 dpOJUQEiW9s6IQRZaa0A8P7ksUGN7DNmTk2f2FqXTvd+cvHTPFhlTePlW0/PFz4JI3
	 9rUJvjH5LKAeLO5OxiXOPf/zOxhprwoeSN4+Zv8GY9S6e4cxGSvF3Ei6mT6DoiHyXy
	 tzPgY/0a0cZIL3/2mUlUYPim3+xBKjbgacoxYFPtaslvtS5+6dVvGM0vO5XqgQmMDL
	 iS1jLPYTlkX617nT0WQB5YRJRWT3SFB9CNdXKaiBvwLAfeE+UAfEkM5R7ttXSru51I
	 oU2o61QsOlCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CCCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176119439358.26372.12091678328926867446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c4fbba4d68b559c7c00a5d6a53166d7e3cdcdccfa437d5904949c067f98857
Date: Thu, 23 Oct 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761194393
