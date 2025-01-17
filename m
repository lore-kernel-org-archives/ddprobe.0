Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2610325A659
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737106554; cv=none; b=E16nOnEHTNjRgUGqfifPUOff53tN4BZ8to5vk5W3zmCWXHy07aaXu12si0BDCYiu0+UygMwkGNHGcQVkT00RfAIVbN3SRqgYuUwyxmhc5jwCC/xibtAHyuemgjcuEntdpO24TRydKKDh2sV9LMTnz+x8OFgpxbirg18OELyWBPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737106554; c=relaxed/simple;
	bh=TR+iyiEp0BdhEjmAD7mmM2/0TghjbPNuAizuB2SD17M=;
	h=To:Subject:From:Message-Id:Date; b=D2Sld5i6Ub9QGzJZTTzxdDVLF7eUsEfDS/cEl25M4zbEz2bfJMWwlko3Y9rIKYfKycZVQ2XzCB2u9PNGvRMy3LZkbTd7CZOFT5ybWaVQFTQyGvXNlGyerd++jm8KCDG49IuJF6eBo+dGAJ56ZTOhr2LanfBAaLtwYYT/CvPkEug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2AkYgXd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2AkYgXd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8E0C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737106553;
	bh=TR+iyiEp0BdhEjmAD7mmM2/0TghjbPNuAizuB2SD17M=;
	h=To:Subject:From:Date:From;
	b=m2AkYgXdS9EGb+VVIFmwBYS5DTRm1+zOMAQIcq0h9NymXJVIqwse9TrYe9c1N8GKZ
	 ujOynn+DrqEneSIulHtfxDddVMxiaqqN9K1uEhJv1wHcCr63PpEoy6yyFMGGBIcuts
	 gfB3LMnz+YmzVfFehQdX249AbJhY+UjHkdo7RxtlfVZqwSenL7HtrcMKyPadH8Dy6B
	 xQEgtGc5mAUneTMwq4fc+awe3PYGyz6Ymw/FCUBDF2Qn3T7YXcmCDmDn3owWUKPJY/
	 C+WfzcrHvjFJhqfH+Ifd0PPiaE2cVAPNbSb5G+UmGyBEkvHOhMDkC1nAep7nTOV0bE
	 X/TQwAItiSbxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E59AC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710655357.3004.18132432541833823285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d26cca64de0919af802693443b4c2827444e08b3d63dfe353356335702ca5d1
Date: Fri, 17 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737106553
