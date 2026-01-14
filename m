Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D17329E6A
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768418634; cv=none; b=m3xFAPJCWdXdVfGayvzUxwYHJNTIbEEgO6kdKzntjsKr0CP2jtyWqa7r9wmFSH0F0tY34eWw4q72ie0d9KSgGRKJxD5Bvyzg3q2KTA3OaVtb9cwvc30M7Mtr/9gjX6GbmYb05XNrZUgBgNBRvapLWGP0mQgflrQ+23NtBdBDN7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768418634; c=relaxed/simple;
	bh=kWLdxERQUBid8IirJ0DH5zeB70mGMxp489Lx6a/VMEg=;
	h=To:Subject:From:Message-Id:Date; b=SHGOjNN7KPOIdNWL6NtZ9oH5Gz5dKV4RdCylonHVLU30AEj61bEHPEX+eE3+Yc1i9v6z40nmCUpx/PJfuazImDvh8+YCiiZ/aCcxN2yMVsRr5Cybo4xnLMcrktA3X9Oh3DWRc+fbqR7xdt1jfc/SKAsiBB9ASOTlC9yul38GqP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJ6qEuwW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJ6qEuwW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A049FC19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768418633;
	bh=kWLdxERQUBid8IirJ0DH5zeB70mGMxp489Lx6a/VMEg=;
	h=To:Subject:From:Date:From;
	b=VJ6qEuwWvaUwF4RBzit/rcOfSdFV9CtK6dYad54ZrkfHSwLZixJ3WE7egA37VRRFK
	 sAxL37gRxaJFNCck5IpGBVjMbX1XvjTUp1iuBgLrMcyOj2NFHvG5Tqyy0r9vEkNR03
	 2P9i4xL1vDWDHz6BQAtZwutzJiLj1h9xHT/OOcYim4fTfABnTzIw27jQcuVOkc/6pI
	 S8X+C4bxbEkpUWgLPUiLk42Sw2ariA171EjdhffZDh0l+RhWryqAzoKkosmDbvPEtJ
	 i6lwHUjuoWkOK9o2BvqxUynHzMlIIFJQiheAH3yKGg+ZH9CgcPBAlJWosY8hOWE/aC
	 mFhbjhMK/tV1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153ED39008
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841863358.19459.8788593937004720217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39c0c388baccd9bc132d527d98ca6131a63a6d43d627177729fedb358d8d9ec0
Date: Wed, 14 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768418633
