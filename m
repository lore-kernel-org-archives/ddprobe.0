Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ADD132464
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726636554; cv=none; b=YVbgfzwS/D4YAHc5Stji+LsIo6aTS3zt0FlzoIUIDuHEbf6IEHCAsm3s0ixhRKg+h5VatUQXL7o9jER4VEoCrz7kW07SCFkoSIc7n0IovDE3/f+6iq8Jdoxn+65ZdfkKNxkfgBEQQubxeS0U+XApTHJ+TYaN/NfrlzEocwGoUOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726636554; c=relaxed/simple;
	bh=r2BeHKUj3i6FoeqJGe6lp0mZu8FItRUPZQbTncQy0xw=;
	h=To:Subject:From:Message-Id:Date; b=rycTltidLNtkqgWA+CiN8IlbmNbbF4mTHIAQcZKXrhYYbxlexDNIQrTaeQpx8UAX9/dteyTIt0Tqj4k1v7YkIzBx9IlTaIdJqWOzVGp+QThZQG80KrhDFthSIdgAkjA1h2eB6Q1XFp1rzPVMYj99SOeNaQCdJEVRXLKlhBGk9jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/Og3ZZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/Og3ZZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF3EC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726636553;
	bh=r2BeHKUj3i6FoeqJGe6lp0mZu8FItRUPZQbTncQy0xw=;
	h=To:Subject:From:Date:From;
	b=c/Og3ZZTNflOaGb3FcNelg2yOTdwUzNhbNMQohRakKc+KZL+VPWpsWuHlTanHOZ5J
	 FxPXYfGsa+uNmPp4MNT6M/m3q7ATtwtvC1ut1zEQrJxHRTb0iUY15OqAaytf59aXqV
	 oOh5iGgiof4IXMUWGYOBNS0YcT8D6hwl5oyQ/3vR579b0Vd+vTwd9ge7EvV7jeujYR
	 ZwVH4eUeF5mIjjzcesP/S8ZY8EfTjUMDc6PtV04M3p8By9zpgldYFuEFZXriNz5AT/
	 jswZBnV1iL/Qee/SlKumwg92TcO/wmDAFUa5dFCrLpJayM4rB3ZjGikGGuYfFTbi+p
	 X8UgItI7EREpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED86CAC5B8
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172663655360.14640.2973231249309648243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd448fa3e9cc081b1049b28d5da48e7b71814e744e0a71d64fed757a1bd47fb6
Date: Wed, 18 Sep 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726636553
