Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83EDA2C375A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783048714; cv=none; b=tq284Si4/CT0VdHTxIgwRPKvzflwxzGv/TwMpus6BrpmELQVkMxI6//9ygMo0F0so8EY5ZINpQFLdlNfpk31J6FJVLWfAdLlTR9RieyoGgu8y56r/BjOXoAG/FS+GguNf4J43leNpyrdHA4w3V7rmuxQwC5fPNVqLJVSp+EXreE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783048714; c=relaxed/simple;
	bh=F/AqxW2orcWnqP6bXSxmL7nqjDPqmZ/nv1FVJZN7SWA=;
	h=To:Subject:From:Message-Id:Date; b=Hrh05+LVs8wMU4gK+4hnTTfPf94yQYmKEVTmEI8pURXNc8u/mlYe5rnnCtyeD2io8amZJ1wrvwSWv6gV2wynj9Sdck3jyLpR2iuWK5cLtsh7UpXZpxt0zi/phpON1k4R49T2O7p28AHqXF487MtlT9aHXCDrUMK8y54tHrhieu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f49CuEOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f49CuEOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8B1C2BCC9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783048713;
	bh=F/AqxW2orcWnqP6bXSxmL7nqjDPqmZ/nv1FVJZN7SWA=;
	h=To:Subject:From:Date:From;
	b=f49CuEOkSWUFlDpvhd301XiAdRGzdBvrG3bHENjXV5g/OiHpgtYugB4FqbxVf0ho0
	 6nycazV9ImEE+31IJoJChCxI1RN7YcQPVfdq/gd0i08X/SJANZ1tmlKw4OhiwlLhMd
	 KbJucRSyGc56s5zH5nZh+OghLcKEhTJ7TOiDxZOp7D7Qb1U1wWG6vPuoEGtKQ324N/
	 pbv2xIv5fJhd5NF6xblqddZUJJ2r79AttSfWNIu0UkApbg2V+HjZetv4zFxMJJhBm4
	 mZhFgVSV80EyJX87gB4NttnwVq9tp8Qpfjiu5dltGjQBE9lPSZgJOHHDxqhSU00OS2
	 N5Xw0qljTTU4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F70C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304871368.8141.16134498222372855547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037fb1ee71166cb5c38bb4c48b56bb7b789bfdb3fef556e16c31e68776a721d0
Date: Fri, 03 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783048713
