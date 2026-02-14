Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DD812D21B
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771067694; cv=none; b=g/LPJcFneo/4qLEIowIGWrFceUuz1eVmynlAiSz2B9Cbi2twB+zWVBgyhSWe0iVzy4ctzockzHsaydJlq+lXB+ng/qqhZKgil2JWoNNrtiEqnEFwAJCmrN9Z6WYxLcjq65jOJCaMJwzH0vR3AZs/CZ4PoDXt9ttFZX0f8RpduxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771067694; c=relaxed/simple;
	bh=hKpai4ztHwqeRbdQpeOgXav5NmYYfhsN17sKCQ1frRg=;
	h=To:Subject:From:Message-Id:Date; b=LnSWs4AJRX3InTKl2Qv99zb9SGK6G3TUEUyUC5SEzHgMjq0enPZFugTQ13BLb7dgtB6vnDOlfLr6O/TbujGahplkto4bYoNGyTinsLujz6jqK9jZUO8sJapDlPmvqnB9q10hfz1uzn5kS3wHD6QD4hxYwWYbi5Vzx7cbZBU95F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEpTlvGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEpTlvGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC55DC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771067693;
	bh=hKpai4ztHwqeRbdQpeOgXav5NmYYfhsN17sKCQ1frRg=;
	h=To:Subject:From:Date:From;
	b=BEpTlvGhz7M2tnbREIRXKz8YYwCSWO3g6BMJXqLsKf/YdSUG92pKDl9T/IKs9Yd2a
	 1UHPZUPVd2LFNgWr3idgiNAO6VP/kW2byZpe8W8nSqnBArm9N9jQan9CROxNMEBuYQ
	 qR1OYdHwbzX4lm4udAfQu8lUIvOGbB3QAi9mlOxwhnphEXNMmjnyhyb3UHkmTwRYsP
	 p+BApwBorlIbGtQYcHSIdUo2ZWtfK27/oFAVBgE7R7bU7/lQyL2jwlJlywWtqpePK5
	 TUHY5GhquoENUkQ43rKwW/qgkNULLnPk2DDPtp3abB5WD0XZkTDAd6Ft6QjEZcnUeL
	 3Mev8KAqnSa5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A28E0EF48C4
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177106769361.2608.1337883209402627525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda3a6c2be92aa0e9c4b2e751b93e20f55cbf943a6b2cdf600a675daf260b52f
Date: Sat, 14 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771067693
