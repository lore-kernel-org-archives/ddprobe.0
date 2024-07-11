Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEA54963F
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720684643; cv=none; b=gSrhb7tu4JV+ZRND0b8vezD+DXpqi86T8HQxUYOnQAy6vOp+75rtQi88kMYUsmyO5ayIE/rMhmPnCYDAWGPDYE3H4iQl1IL+AdnSy51D3XcxjdDxPI5Y3h+7MClqLF9MRlZzTVwsnTXbJv3DsIACcDDRZWk1bMb3P+0UJN5l+bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720684643; c=relaxed/simple;
	bh=BvF9hPYZDhMbnAIFFA2GUHNq3Ah0Iauu1al5AOwSpuI=;
	h=To:Subject:From:Message-Id:Date; b=cqowFA6SfZPSNf6BVWQmphmALi+JLvd+iXlu+ZDmnPFDf/MtzcpBkIVcx8OnKH8p6fTEkjlOFosdmBUd9BVewzZogmtFRsqUg5XzhHC0XFosr+CpIlG1sgytGp9P8cWvjFO0BV4kHbc7vqXi7zMhU/vJrlDQvTttwu4O59kcdL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giPyFHrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giPyFHrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EC4C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720684642;
	bh=BvF9hPYZDhMbnAIFFA2GUHNq3Ah0Iauu1al5AOwSpuI=;
	h=To:Subject:From:Date:From;
	b=giPyFHrQ4/f4M3W3Neepht8lzAoqTFuXI++d9AVYF28VhQr8rE7ZxFCwnNvg9NJTI
	 KCEIMOUc3br8RLFjnDqBu5gtrEgACiRt2BVdD64fCCWgPFHwfcv+j82s14GZHCqLmJ
	 aIgYVd443kKY4+B+fD2vyLZ9iv9+ovw0BH1bOZ9lwqGwi/DUToHAeFXJtSIcQiWTSp
	 8wkfdTqcEgWjB2q/3xoYh0M4sP5cUBs83ZxLTicdJt+eghKQv0ZLgZXrj+0dSU1xk2
	 OpihGjajZSfMfelahigH/7CzeTHMvjemDw/pZFojTIVYUs1lXz8Y5fPBkJi0sn9CHk
	 cWZESDbwZamGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC80C3DA47
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 07:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172068464276.8691.16146007569499590017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de1d419ff5608f87aedb9506f9d76ecaa0efae6274b999adaa1863001d5c3220
Date: Thu, 11 Jul 2024 07:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720684642
