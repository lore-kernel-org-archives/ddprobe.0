Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A6B1CCEC9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727912754; cv=none; b=qSuRPIJkxriRS7lDiLdPaXdPvOOmtNljUconKiT9eqwL8EMTM74mwb5fpOgCHDRSU44huV3safPMjX4bBfyvSXp5q0LbU0RxNEDMdGw/LKtD0WYky535YAtEZnqNY2cR/YjRG2TRsuVJY0z5OTn35219aKWPDG6xJQieuEqeMXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727912754; c=relaxed/simple;
	bh=nQiNbhQr/65sJIF1zyMtrOUhkIoyUmr/3UePrmu5m7Y=;
	h=To:Subject:From:Message-Id:Date; b=uHArvXHUxx3MGdw7BGZFVwd1N+eilfXwecJWUulzicMSW+8yIx0Afm7LX+XlcYHqmGqie6y80XzJDFKkx13gVIx6lAduPrz+YTkhGbG5XHMXfzQEGhI26iRnrazTSpCgGPw8g+Ow1prCPrcB4kyfcOo//esdLO6dzY6qY+/vSWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=egRI/C+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="egRI/C+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC788C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727912753;
	bh=nQiNbhQr/65sJIF1zyMtrOUhkIoyUmr/3UePrmu5m7Y=;
	h=To:Subject:From:Date:From;
	b=egRI/C+EQnYtUFMUFtzptVkhDgZA7wMKVYPqvqYUK6vr7CMRuCncLVUV6r08SDF8v
	 xPFv7AWWwQTiRyTPpJLa0qFnn6aQ7suN0Uv02LOpp6S+Ctcbwg1lemh/NtNLGzHRRY
	 QB0GJQfwzNPNLhy1F6APuORoPPqEh6NZOzfDuVueQYH5WoAKKq6kaNFeIkJq9mHUgG
	 eX/JWDP+/7b4AtuWbjFTk6omrstcwqO9eIHMN6jgXXU4wyy3u1sppM4YUS9A5Yy/tV
	 /8w579GhPf0+jVV3ly0ejnkXN8By9s9TZFquKP5PpbIs4ig9imwdSdEQtMoB7mAfQt
	 n5s2VEgO8iWVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB47CF8547
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172791275362.25850.13589429733721365137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddfbefb1afff8669e3a135e0b8ff9a5db3e93e3500b2f5039298b39d386ab5b0
Date: Wed, 02 Oct 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727912753
