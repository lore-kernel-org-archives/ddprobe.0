Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC202119
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722235554; cv=none; b=Eiw343kaXLKSSSGBePZVsnkeDXcCDCs192UDLnpMm+voRGg1WcDJIcj4u2gDvyYghytJnarPkbabxWSEZkvO5Czw85KRYLWB6oKIl1eLjLirzcZjT4chXgnromc10G1kpqOOBpfSIfMc6a+LuN1Oy0PSZ/4HpktPBweTQNuvX4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722235554; c=relaxed/simple;
	bh=YbVf6ScA2swxlrAS70J4Gu/LBXeBFfaAVaYhPEiWNUw=;
	h=To:Subject:From:Message-Id:Date; b=dR7ipfm0ltnak8aSAM4wKhd5Nd9uFZPOan9G0Y19/DJc1tNi9H6drFT3T+sEYQL1N0FzQNEj26V+/3owoOGNhE0OmMpTlFQuxBehDg9IgC2a2+HDx4+Yb7yf1o6bl4JVUy+9aapBcXop3XHeul7pl9SUCBDAwi42VXDmmOVstnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSlO2Az2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSlO2Az2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB59C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722235553;
	bh=YbVf6ScA2swxlrAS70J4Gu/LBXeBFfaAVaYhPEiWNUw=;
	h=To:Subject:From:Date:From;
	b=RSlO2Az2zrZ/ZQgRFLpW8QRi/0j5j92MKX+NvZAkBi+PX9OBEDBqKVzotC+u9MdLA
	 NnbvqNLz8rbXECVVgaBN36x//tffOq2aHQw+T/HZIcwmNAvbRhU3wWyaY1MkIn5E4a
	 bsytr8lQ/wiiuVfXd6cMQ5T+CqoKj4Yzip+do00/5BcP6lIADLmRmjgK5PRKJuLQWm
	 1ah6IwRYHsrxggSQmcVjWuix4eD9VHqWLmup4uEbPEOpQBGBDvh7gLNIIZkfMA7+3r
	 b34O8pLGxYnCg55RceifrrohaoGhHEuOaV5Nc3ddpCuu+11Y+Xz7ZZM0/Zblt7ZodG
	 AJneuUEJTocjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A085C3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172223555359.607.5166337081332859946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c599be6ef079d20331787bcef86dffee6d43955eb0feb2bc58c2e1d7e7ddc6a
Date: Mon, 29 Jul 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722235553
