Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DA22FA622
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751633995; cv=none; b=tjDLECbZRXJ5xA4airGNBR54pbOniwsuLv5ftvEwW+ZWXtieEOfdYdEmiEXKWZAzDFB78Buyr2SAyzmfdu2Ga646HoiFk/phiS05zHmPRy00H3EL9BEuuNDGjuF3iC8s/xTgkD9OKRgzvwxlDnzyiBQ+Dt0uu6+yr29vnt/8FOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751633995; c=relaxed/simple;
	bh=hMfaPlzS5994GHxDLjJqM7PiyY1nDzz+bXICdisUQIQ=;
	h=To:Subject:From:Message-Id:Date; b=dSA+BZHBgsmTJE17orPFfhsjdHH8cPweDOzzdXs3r0YDcwlelGM7cvIGKM8h/CpY/XyAzHHv4Jc89+WNMND6QJlWxBFaTzvw8AD8y3F/bquXt2C6GlsCv2O8yGELejdhWeX1sMoAc/HirZGf3vyp7HQbLqaOfOg/fdOyJurwjgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klupNX72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klupNX72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D80CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751633993;
	bh=hMfaPlzS5994GHxDLjJqM7PiyY1nDzz+bXICdisUQIQ=;
	h=To:Subject:From:Date:From;
	b=klupNX72YxScXN7Z9Znv1QJtQiAl0YDsPWnYCLP9Q3mBqHpPYwd1Xw9PbfgnvTKnt
	 vYBIapYcWLZSUkv9xu02ghDFlsVj7B/J1eEnMB0/ThmlKrH+IaOZ5XyD5L+StO9uIX
	 RO4fg389FSwSeuuBPLvzqm3co1NMnmqWkaM+60wZW31XRisV2dtZhZGM6UtrTqZRK+
	 XF9vUYJbmQh59BpN/qEcp+RgYTenWOgsnAASl505BCVXwtAh+O7/JVduhHJ68qMLz2
	 rMI204tx55kG+vq7mF66ydx2Zx066xH/GK1mLQQ+7aZkfrniKWGq6brhQT9ocuFVoV
	 g/n9XuXAL/FRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E5C83F03
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163399357.14896.9762790440654870627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e98bdb59adcfd54649c66bbea821272b16b9368042317cf996846138a1a947c
Date: Fri, 04 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751633993
