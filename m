Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3674D632
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734905754; cv=none; b=DvZQKbvxaH+Vq0DRZBWvNZd+JIFp3MT/KHKtCd/7Qk+xDb65QALQFzW8IYR7yqR3vUOxWtR/KZy4upL/oh+ORGxLjp76gJVmqYyBmo3K9mYHz6CjwXX+MoNcgIKzwegrp8vI7BeOsaXRXLjJYyFyNDGSDDGhoBZ7VbLLVxPVNzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734905754; c=relaxed/simple;
	bh=qYiWbYglW5zVwKpdOShIdz0Ln/8+wNSZASMhFpjQjiA=;
	h=To:Subject:From:Message-Id:Date; b=fKqQf837OwBZB8FrpFNEZuryFkQvC3e2z1dkVPQRgLhNLzDIV689gOz+RAj3o9ok53Ik4KCODu3gXY8O8o/9yOWBLqYVASWeDE7SzawKgUpVq2BmmSGkSRVo5m4yz7tG8Bnb82byWRHs5H9abF2XGazGgQwtayKIujwxxSWY1bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jww+oGwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jww+oGwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE229C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734905753;
	bh=qYiWbYglW5zVwKpdOShIdz0Ln/8+wNSZASMhFpjQjiA=;
	h=To:Subject:From:Date:From;
	b=jww+oGwUfBqS/B74+a+LqlqqanOGoJaNnjd5/5qJzPBpPtK/V39ZbdrrvQQUHb1IG
	 WAVV65Yza08wlysaEH2KagZqgvPUw9KfeS+5/posYTiAt+FziXUgLZKz0zXECndFp8
	 ZfXQsnjnDjW2QWl3c9PpsqxNv4Ba751BCArQjP7yzOrFD8HTOmFPt/qR0sBUPFc5Lt
	 ppWaXKtbU5AEDLG+Lc2FXA9cy2jnEqRFB0LPT256BeWKqs82XuKKB6Iqr+KMaSOP2o
	 YzYvsR9OxWB5/M3EHTkGD0wS2ErpBi3ukNO39Aw12F6lm9NEU19zzyvLMfXpKliiEE
	 yB6l3uXGAKPQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994D1E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490575362.15631.12046894799948050270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf13844400f03e72cd2e9a6dad015d38a9fc6767c5af1d1a2301ff8bef640ffc
Date: Sun, 22 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734905753
