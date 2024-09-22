Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1C31531F2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726967154; cv=none; b=Z10G9P2gU7kVK25R0V26/0RXWgQLeGyMXiBK3yPQQZ8ZHN6HigsWHXmOm2qmC4FIbev5mbs/sreRmJknSzeJJ/5AVVymm+8ddSU5NUTVmSMO9ptbmGc6nn3AijlrUtVFwfP5s3B7o8SKC5fKjoV3uJg/WWqn15Jb8C/IUuNCLk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726967154; c=relaxed/simple;
	bh=HcThVJ+A6X8snuxR+GhSnLxGUvRW6vmnilSjFqmsTxU=;
	h=To:Subject:From:Message-Id:Date; b=iC+fwa4Gw9zWsFN9CPFU61doOWa1exMNE9/OrMGwZGfRWoSMqtRMgH38QoalEBDcqkbkwP/DuxIYyYxF/2XpdksRhcXnB5+RqOIgUkpSgdgc+sLybQbJBMd4adQAC1XEWhcT8xKd8c/+wXVwos0SG+rNqxRku/biynXcCeLaIkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbPZdr0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbPZdr0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8483C4CEC2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726967153;
	bh=HcThVJ+A6X8snuxR+GhSnLxGUvRW6vmnilSjFqmsTxU=;
	h=To:Subject:From:Date:From;
	b=sbPZdr0DThsjFn8GiP/X8B3KSleqTJpPQDvgpdTNZfuc3Hr+lv4scu9dHlRqeduAh
	 XYBeEiN1ozdqmmqoV/HaB1twTv1ea8m2PfPUMzlOEehGlM4ueyAMkI8BWw/xkKTuX9
	 pqPVZC29YobnKZG1CA2zfHhUMsiAF8Jo6MFm5M+DuYjqAIa6jxteVa6vH3j9OE/KEd
	 a5RnN4r3t6MDb9N9ixuj6HnHAczhepvNmb+QpTHslemyPeRShI+3rOGhQMLVxqbjIz
	 oEshUAFA8MWLTEQt3nl8lNiHtaqrFLl6TijlPixPvWpMznGgcbviGI+/LhrSQp41F8
	 B6VLvD48Pw+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E4ECF9C5B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172696715360.9992.5380031428788575808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67949b25bae7461367745cfc37f08b6ddeb3919ff5d6eb9e13ab22318601bb04
Date: Sun, 22 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726967153
