Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCBE1B28D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720808963; cv=none; b=X97+NqvS8ewGy1KaGsTlZmFnrsqerlV/CZwcc3Jl0ZPbnKrsOkdMtVipRh30b6r8WnkIfapHHuhbvROJWBaQBoIVerIOPqMoff2uZIH0J2ayhqH3o5/0rQ/vC+EDFwZkkmxvvKQJkBohT9024FXR00cf+Ta1i1i2DqzSc10kwH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720808963; c=relaxed/simple;
	bh=J2s4lJoMEfTMFSav/eln4PyN4r1dzQp5ZLGVCjzHTu4=;
	h=To:Subject:From:Message-Id:Date; b=RjndXXHWBYwQER85WO3Gnb08AgsmhXQQpd1mDj9jjlbk1F6+SpiujGp1ybkJjF+FzKEUu8eQFfAxqCuG9tlE0qacA+l5AsdNpZc9+H5eNwewXgc7UUQ6eX6yIFT6fVdMU3NBgTHPZ2F0FMcO9lwZGsVkTtrzHCOha+SaHeQSlD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSBtIhcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSBtIhcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B69C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720808962;
	bh=J2s4lJoMEfTMFSav/eln4PyN4r1dzQp5ZLGVCjzHTu4=;
	h=To:Subject:From:Date:From;
	b=uSBtIhcpXsWGowRLh3pon4OmV0tyH77FhEqYLlAvsUDYkBXLyM0GTH8ZljmKrylYF
	 PFir5TxfJfxZ8U51u8Kq/BY0xUIQXsRg+aV7eXiNMyyWrvFLkHm3sq0V0nHUAg3JQo
	 l/+xLaSWlHTc/6Lz3gyu3855kg36w4DBAjNAQyZKXQ8ryZnWAQaYyj6qokCQRPpE9m
	 UIgUaxzRL0J+AwyINNEGMY9PFpJ9ASYLrhmlAidt00ENPkb7niIm4v3zQM513oDDVR
	 OBayd68Ses0+HpCKU2yiEVX/g+Ew/ndKdP87W1dYGOYFmwYLyL9MOT3/bMqa5W0PH4
	 d/woZn70QrOBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF21C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 18:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080896277.19135.359906184351826307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94c0bda514d0fea6d86583fc6e9739d6f2fd4e8aeb5c85baf0193b77bca244c7
Date: Fri, 12 Jul 2024 18:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720808962
