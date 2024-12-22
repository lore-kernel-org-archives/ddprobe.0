Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CC3156960
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734904554; cv=none; b=m2t7bNgCTSWd4n3929ZV9EFF3uYORm3ax+smFdyRgMzTLFMCquKs+9uAaUYsdeI6s2+7sN/x3l2XbitxUXzzbytJNPK/sI5V/DXJFNZmCsJm/KJ1T9qKy5UCrTr9xMy/tpuMVBFVOWhjQQcJwfteOhAYhjuZid8BVQFI6zdmKxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734904554; c=relaxed/simple;
	bh=wJeGGDGuRlxqdP7T7ZYrCM/UE5ZW4sg63oXm7bbbrlE=;
	h=To:Subject:From:Message-Id:Date; b=XrItHP9GHGH0FNHpKUDydHua0Mm9/88KJ/ydqsAAZYDwdAeu7I2Glc8ytvSAQkVUDoeY2FyW6lyuNj0tVBk8HhQIj0tV5BzTTVBXpbJukCTVb8b6IS0gBidSln8ADmDrhvapChv3MF2VBXGmxJ/X9/LqDaFVX03axZGGn2tncXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAs0t+3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAs0t+3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A6DC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734904553;
	bh=wJeGGDGuRlxqdP7T7ZYrCM/UE5ZW4sg63oXm7bbbrlE=;
	h=To:Subject:From:Date:From;
	b=WAs0t+3SVWLPg0iEyXtjRZwmhK9cvpQawJuApGGV2VwhcFXXViXM0rRnL7YqfavuX
	 asEFx1w4sQOhCc6apKloiIPyyWsZ9ReW2yJ1ds7j7YBr3JQBUPrxIXXnKKbab5LQdu
	 Tck3iz52WYWR/W0debu1VHO+3LYjUXNiXWC4t8INtgUSS6Gueav0gJK5+Y1tT1OXau
	 u5zr3XxB0qMZDnpIP3elDJdCevtJwkRpbV9x2k4iVxLuNXQb1ax3bIm4Ln3QPlg8Fh
	 MlDjFjYz5O+IISWhIBicfsDHmrM7raxWHCBKboFUJ42huLm+TsRKsbWpKHymCKQbi2
	 pwQHIQtkyWlJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925B9E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490455357.9090.6716776806333632372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c73f5517fa29fa2f364eee4245e18af6e5165b1c07cfe7ab0438f9cfdba715
Date: Sun, 22 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734904553
