Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1F835836E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786257634; cv=none; b=tBrJPQNJoGEycLy/VsftTaMYSDkjaGj9qwwYBt2vVWJNEQeyKQrMYGBZpoY9AEi7yZaWK9cJXebhr7BUHhdCA/2kLq/NxEYqSjWRHG9MdgAQ3cehanSwTZfupGgYGZcmgYFnri/lxW1APXMQyRNtUbYsC+gp9VFLw4mtHbsqhrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786257634; c=relaxed/simple;
	bh=xj5GA3b1QjfyMKXguT4e+afukojfOfS1EinJknb3Fww=;
	h=To:Subject:From:Message-Id:Date; b=vERgbiB43rx5VZh84eoYB7+mcMw197hgW/ExFKBwBmpN+ErOWmBuEqNponJ2yd0vOh9nSv/kuhrClQ6oEU/yiXWH6otvFqCb3UsCtJZP4ZoKLvKBoQE6dw5Zay7klB7xHb90UN8CRsYz5T+rYpu+HmCuLTSOwTKZdZU0mFHZujQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeIBMp3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeIBMp3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1FCCC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786257633;
	bh=xj5GA3b1QjfyMKXguT4e+afukojfOfS1EinJknb3Fww=;
	h=To:Subject:From:Date:From;
	b=TeIBMp3lrR22+JXSMgig+FrtF+HrMAkOGETEsaaBm7hQCvxEHwDk5NKdXYIuhYNu3
	 5SDVPXAnKzi3wA55YOdFcsIOcFKaHdKg8yaCkemJRrd+cgYCaGjE5cSiU0/hdAecyz
	 aTZmL9ZrnYs6NoI3YQdxvXgHWkbDC2wL4r5F/aq7zQ7ekpULjrOuMpumCLjlBYcY7B
	 niiCCD5ybX/L1Cnd35/Fmm5pso9bPb67mj2h03omn0eQb6nZCaxfZkxgWt9yMKLm7s
	 WBQd3x9GGaAL7mtf9R67XwKqoeu2eVTtz1osevhrJFiSEoWfFjnCxt2S9227LRmdo3
	 0C9uSLrV0b9pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1ADC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625763374.31703.9052207051226218841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f989bee287691fc235821193d57c7604aab0601b1ff3b078d85ae22776a86de
Date: Sun, 09 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786257633
