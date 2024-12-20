Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239D619C56D
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734692754; cv=none; b=usIGnGjdp0WITqCmOKfR5o760wYG0N9rtsn1x0PnAodlBCMTPeBtKiKF4upJVPbkuZ0AH8fCPtU7eNmQXTqQ+Y/EyZbGpmfHi6p1zoc1eKGx66DlUXJYFeZ98q8EmdhPrDB09kHyEScPRaRgG9Epq2K1Oe8W53teCzsJCsgF/b8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734692754; c=relaxed/simple;
	bh=FwwX7hCpsRnV1Bm4Xg2HXwmAzQqL0efFEqSVEeSx9NM=;
	h=To:Subject:From:Message-Id:Date; b=XdcllvfMjH6zc+VCXcKcr/Fl+hRhhWZN3wWMpOng+oxs6bCBHnqODJ1egpTyhEmMUQ2NOG0Uv8S15xlLI2M3oTPv08MiyRpLl1lq8JahgaN9P1dD/gwTDzlleqPIM0inH1IaD5ZR6TxQJ+rWD956lRFCYXUEZ1M3Iao7jzohO4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJuo98TO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJuo98TO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1794C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734692753;
	bh=FwwX7hCpsRnV1Bm4Xg2HXwmAzQqL0efFEqSVEeSx9NM=;
	h=To:Subject:From:Date:From;
	b=TJuo98TOydIIy81PZxWEZnDsRGYaHP35W4o0i3cGhFVHQHvlFk84CHbsN3P5tacr5
	 GuGMzq11sbcR1pooh4kWVmCLz5DBpuG54ld0h2hToB/OWabYTMDqdZowFWllB5h5Ds
	 523lpIb8DKIJCBKv//pKhxeWnv3UbNLaYUtBkiNxKXiBBBNPmwBT9E5OjCubislMY6
	 Vy7lkpFZ7304hUI8rrtlAR4go5kubQvVYZ9eMHk387m9MC3IDJN43bhYrhhmydsyRv
	 AF2n/r0gtcD6+ssTyi7fpQ0PQ07VkXRXo9h0Jt4gcLMfhgS0kgPCBEtuPdpFEJNmLA
	 CO4V4oEn+Yi4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB39E7718A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173469275363.883.8266743894948049470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca402306cbb0c39dce134fb402a056f634cbba0bab6e505c8354d9d396c82595
Date: Fri, 20 Dec 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734692753
