Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F454409
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726664154; cv=none; b=G6I/i11qA5m4b5EFssw6IBuYcBcSywcB+YpC0g5OXduqSaeg+cncTQVdMC51LfwKUYGraxVWIU+YLlhL66kPFNTOoEauxeHY1tvF47osOMXlZhPVVzJLUiyh3NNyxful2g4GaquxhBge8FHCQXhILv31WqsIsgOpxFy1KOw3iuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726664154; c=relaxed/simple;
	bh=EC8LrZjdVxxWPUOptOa13A7r3uu3VVJd7VQFUv5Y0TA=;
	h=To:Subject:From:Message-Id:Date; b=pcx3WtEvoN+aMwpLeXhHk80vbMJiXJNRbfpG7a0I0lwghaoLxcyGGUMPBVyNewUALcWOPMFLwyTXSsdZYX29aD03hhmfd8eYGJ5bEYtCUtwubKVhK2SptRlXm8BB+dgYZaSdyzXfm1Fq5EVOdTHaePBtcdczPLxXlP53QQvyTEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UF2TqjXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UF2TqjXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443FC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726664153;
	bh=EC8LrZjdVxxWPUOptOa13A7r3uu3VVJd7VQFUv5Y0TA=;
	h=To:Subject:From:Date:From;
	b=UF2TqjXCxZUOtAhJpCtl3K1UX1KkEriX7vACya7Lbuxme8cLwdgaUinhIxQvnQRp4
	 fMFoknPoBrmfQfSQrASdOKH0brf+f6oJs+RiehXdHHC/bEmrOK1dUplleXzabLI5k/
	 sMW3C5iQ3pdtBDkntHuI6ZkBix+eHLtmCwPpySaxh7TrK4hU6iyVIL8BZsx7MYCDU3
	 i8Oe1jOdC3tdq1HpyMxr3AkJ2wBRNsJwOzwEOYKlBzbkx6t+R7ujVpfQ6sOfAOnUiO
	 m4Cm82VxMe7EMuJfmBGv5W1jMGljXSFDLvrFjUGgIfWtSmCPPuLJ2aX/mL/1KnEOnB
	 0UmdS81FUV9Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96906CCD1A0
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172666415360.16270.9707547946427294674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dec9650a039ece9ad2f8bb3de71a04c24aecea407e41a1e94fde9ada9ba2514a
Date: Wed, 18 Sep 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726664153
