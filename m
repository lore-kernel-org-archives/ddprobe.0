Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FF51DA3D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737293154; cv=none; b=uofzhyngXltVl0Mhc9CvmbZaxQBHRvlXncJRGviYn6diCTQ35kafJF1mr4TtR0n4Y1Z/tdPH/FIQBI6iRwvg24NZzT4V2dPDKY2AE1LSvQGjhstD/z/OOtDcQ0wjQ0oxt+VFZD8GE84nlef7FfA0uj6gMe6FJ890QAl8bBtC5wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737293154; c=relaxed/simple;
	bh=t0LM9RpmzI6v1pFjjmZ8OpoJ0/ZdC+G0PS+Rj9dxxPo=;
	h=To:Subject:From:Message-Id:Date; b=BKQCXpheFEF1V2PiiNof4N5HwVAxYI8JrQHKwa2Zhpp8P2UIW8ce+Goz8jrKam9VAgA1NlMOSJ4J9JwjdnvSlxlfsJ4g+92h7XN7Irtx8E3pM3Tm+pUt/XGezWaNKKmPjy7NNBP5EMOrtIpwn5moCW8XKhm7NzQNjZe5k0CGgPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIuWAw47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIuWAw47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DDDC4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737293153;
	bh=t0LM9RpmzI6v1pFjjmZ8OpoJ0/ZdC+G0PS+Rj9dxxPo=;
	h=To:Subject:From:Date:From;
	b=tIuWAw47Um/dUl7Ts3Og6Nt5AWQgm1z9D3cpMCnDbQsu3IUmKQwJPBW6shKDw0EM2
	 z3j+Ijm51ZLjYpcs7umdB9t0Ag70HiZkI5ga/g89zJ2wzR+y4igGB/n9nYxdWnTeEe
	 hyzyOpomKIG5G7BKZo777EXgj0oDBCt6G3V4AiTJHwGfbrefoApr098r9L/NGT1yJR
	 0z268L4I8VGmvqhYC/cfkv2+vsk2B6fMg5nA1EX6NHwkk/unuIm/dguIbaKzNQbN3S
	 F8LRTk+q0HcqPKZfDYcCuHf5yiwOtI0QIbja0nOMcPDPxJorDBU2v+QLs0fvUEUCoW
	 GlhleClhZoodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92788C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173729315358.28650.11290846413558392631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b318f75aeb0e9407cb3cc51a823bd138f15fef27faa6b5551c5518213c7987b
Date: Sun, 19 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737293153
