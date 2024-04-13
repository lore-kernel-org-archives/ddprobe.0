Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6147845941
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 19:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713037763; cv=none; b=EJX7ELTE1bCM58pZxy3+YFFyuOm+USU44AcoeNqdNKAu4F/uT9Z2kY+/KitAPv+OcwbPIP3vh0pT8BOcv6SnP+/1llra2TQ7isJNZX05mWIUgayWjYKH5aXs075a45UQPJMGI1TxlwaRyK4DO3GPUY8Ih5F7Wb5F8B0lJ5SAX8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713037763; c=relaxed/simple;
	bh=rVDMvsccPPO4z6j0BFBkwxtEhek0PrXVyhyDVDnA3UA=;
	h=To:Subject:From:Message-Id:Date; b=W6Mw+ul0RnYKLNqLxJqbxrN46Cm/VTKxSNkq9A/rl0FPSXXpOLQKN9J1lg8lMPM0MhYZmzkP+Xg7qDPEsNxVqDHniK4amnM0ZTj8LEYn7N2NB/H0Uz88K7sfXXhTFr5BHmWcjVszKWIVaVfeX0smu0Oc0kjBQui+L2kZQEoDNgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEaK43JY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEaK43JY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47F2C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 19:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713037762;
	bh=rVDMvsccPPO4z6j0BFBkwxtEhek0PrXVyhyDVDnA3UA=;
	h=To:Subject:From:Date:From;
	b=sEaK43JYL/0Ag5Kv/RQ9CFi/iMMhSaROXYdd2DIZkBqyoj/q4tiRNNoKcMsKoamTR
	 onNnhomJMn1j5lKBh1Pu0csAv+m9BkatSdFn4DXFhIKOfo1UkYCpKctwlLgrBv4zfJ
	 zfLLut93ugkXbURsfui7RPWAiPbc+jswKnTpxj6/8rVfp/kKpii3CBO4gAg0ewxdnc
	 SnkAp4cc/zD/O/IIjKYc/OqbzwanHORxlH1Q7kwa/Zo5SO448P6HqoSGety3ubd44C
	 3K68EDySG8eBUcHu6C7/IqaTimH/o33RMHcbITSatpdnpUwKUiQqBmaHRM1JErUvpx
	 nuMwNEbM2zirw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF9ADC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 19:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171303776275.21354.11734344148149185084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77430e544f9bbd27dff9e00fe14c50717d8a83759555595b8aeb7fa0689fc48f
Date: Sat, 13 Apr 2024 19:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713037762
