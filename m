Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4F6DDC5
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760974794; cv=none; b=ikaOL014Zc6xAwNXwICILMAt/+1yGGJoDPbGiyZIVe5t8ySkWMuZzifAhEf54RnkvW5bIRNW3jcItEw17iVMCAIinrUbOErMVmSry2y+Ti9zZlM2LpyK83Zq7+0xhUD/06xsfgEm7dUZHghNeINhDSenmUfe4UGX4MMtou7eI0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760974794; c=relaxed/simple;
	bh=w2ZgB3mqp/OKVihifRMNgYeq4OtoT7BSYp0RcyGqbu4=;
	h=To:Subject:From:Message-Id:Date; b=khXtDPip/GD8p8576DThbj4yPX8pcTg2bTzjqwctudwSxKxyzP0u0brWg8LrrNH4mNzN3xTMdYlevLMf4rOaQrpkSKS7GBT5iFvRwme0FcgQwq6vFCwAvjVHHlfZoE9TOY1hPiC+DKIQa7/onOlt4pZUTzY4emL7Ux3+ACP+0Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iahmt893; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iahmt893"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3F5C4CEFE
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760974793;
	bh=w2ZgB3mqp/OKVihifRMNgYeq4OtoT7BSYp0RcyGqbu4=;
	h=To:Subject:From:Date:From;
	b=Iahmt893usT2oIagYIIBR8FTCsw5Q9Lo99k59OouGjvUoeCWjbJhCO3UBulxrEfOl
	 yxZcBauRt/ldR/m4ETQxx6Gb7jKQznvjVYEs+VFodc/kfC/Cqc5CAouu+IIRJfEm5Y
	 Xi3o2QGZ/4LxbWHy8kmfqSD2wwkkBnrVlGE/WdNcdm1leSNRL4JY6rhBDRSmrK/Xuh
	 f25+/DKg7D0XE6tWSgnQUQIsuDi7wg84Bbwj1hTzC3sR3Ke95cddiZ7M7d5orKj6nY
	 c3s0CHsKiHpqh/qRvBly3caXCYvcyP34VT8SEvdW1ZA/lJ5+cT2wXs2fMe0VKQOIG1
	 hg/qVDWc35Snw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FCCCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097479357.1506.16965095581141589691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27b7f7ed6b9e373e7b3720536db2ca421e0a00ef3fdeaa262c7bfaae24cbbad
Date: Mon, 20 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760974793
