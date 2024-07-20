Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8B9B67D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721473554; cv=none; b=c2EfMXpzL+IK1yn9lXKpjC+HgL6ExngDVVHTlunoYwSbcnS7L335nxQd2uE7EMV1dG3GIBv3YDK4FhQqEytEzlP7avw3ijZjwLDpwd5oe5yPT6FVwV47DZebV1oqPk0ut/6HfDYFJs3FtCJrMF/x5SIohRsgGVuOageZIEVNrTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721473554; c=relaxed/simple;
	bh=AmNAYd3/+XhHZ/HZ8zKTu9cpeuXoHJQVkGumtlhc7Gg=;
	h=To:Subject:From:Message-Id:Date; b=pg9lgTONQMDcn+DI0G7pc1YI4GYZjJGQybKoQ+pZkiiWYGhpp4KU+/NW6TpU966NkXfV0jVXDyvGzl0bZ8IiUcuEKDlj0n7btgjj1zRxhj29JSL+xcUewkIX/nWllXORHCjXx7YPKTFBbMRrgugW7BoaQ/W++cRZtRUpEuRKJ/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjKWUE3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjKWUE3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA2BC4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721473553;
	bh=AmNAYd3/+XhHZ/HZ8zKTu9cpeuXoHJQVkGumtlhc7Gg=;
	h=To:Subject:From:Date:From;
	b=IjKWUE3QmwAGVBH4kJ6rmxsFDjv/mjTXYLsWP8+D4lTPVSG0611wt2ZD0Fxi+h7PL
	 vvqmH8u3PTPfRmQ/XOloBnN0N+KFco/ovs1e6b71cZorHrhodVPhM+7wG+vm5zJ93e
	 ZO2wOlVTljXgRFr/J4nEQQ1mSVe/ESgcgeIdR25/AabOf2/AyNWyoHlfhE/P80wiEC
	 rg2ut1nCpY53IyPcWekPey3ARL718ov44wDNCOXwz9zFrKOLORu1N3Oi5KA5ey4WLs
	 Oc8Ll6j1lRlIKZHo+UwLr9ff8hPSmgtqKaFfhQ10dB1K1AVO2TcbLJaS3VOfNx+ur7
	 cub6n18e4iF1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BABD3C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147355374.23703.517746461608450098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c0d5734bba531149266cabdfa24f9a6afcfe6e87ff6d27653c7f51c73ad3174
Date: Sat, 20 Jul 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721473553
