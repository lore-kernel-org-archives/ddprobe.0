Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD112E49B1
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752767394; cv=none; b=SiOvWG4WoFI9vhEYKFMBCzOzg6y4psQp4P5V4ke6RARLoo76Bz1/BcESJTNd+Y4CclikbCX6EOvk31eQMKFbTjR+bxm485YwM/lMVh7Vs+3jwTt+mYT/RV8soBMF6uODP0D3CZr92rAJO/Vy6fDLIMx8cGZZOXvpfabgghgZr9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752767394; c=relaxed/simple;
	bh=cFieLx8ZOvMNFEtJFnUDwADs3llj1HvxjiD0xxmU9z0=;
	h=To:Subject:From:Message-Id:Date; b=hRxEDQ3mzyENZipp9XMIOVTTCjrI9KWXO4kWYzV0OfQ6OzqTNFgEOZ9rTCcwHtbZb207vH8txWa4hJwuatDmvzJHRMnDTkgIhbicRcbwM06iq+8Ek9WMYgh/DcAJb5vq+PCwO1iWsmjBw+u9snUZcZGgVVLZN6KvA57fXr8QNWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozjjuSZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozjjuSZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAEEC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752767393;
	bh=cFieLx8ZOvMNFEtJFnUDwADs3llj1HvxjiD0xxmU9z0=;
	h=To:Subject:From:Date:From;
	b=ozjjuSZn+oIRwBWAiyRd1EGyJzLYrHinECbvLrjQRQ2fihnpg/kTBCzc08kw5IZUX
	 8qve3IWu0vk+z3qapMT90YJdq3qDzARCSydmxNTLz+VD6HWy8dbmJwJE0bE87IAciE
	 PJMh2ls0N75DKTzZkY6f6cTREOGnNzzHbHtHktLfN+SrK5uB8QQH1UsmJc1cuUvy/5
	 9430OSimZo6ayIxQazASTyGJIcYwaxZdVu+QxrxpuFUEAJpiVclRXfRnNs/13Fauz1
	 CO20EbRjVyydUiUZ8BlCiCLAa4Z0AQGT8YkXY0WyhQhofnlEClV0Ty5PTkaXAfAq9t
	 xjP2fR9GW8jlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A22AC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175276739362.28529.13558410363143636731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3db0707763367a8b66fb2422e8c063fa4ff2cd65e49d3e9910c44a1cda0670cf
Date: Thu, 17 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752767393
