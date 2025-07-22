Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352254C92
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753216794; cv=none; b=OgXCHB5AwJYAcSvr8dzIRs4Snis8RJjT8hGulluw47rjXKmWHmmdMMYycQhaqlhMmoUjRlMilF3z7XYrwhHbdh6+NCv/c7VOnSNfE8z3LgmbxJwdSIaMKGIdfFApSx0BhqZqh39vQQ//eKVXgdfLGNQGzTxdtCMlpuIfzESH2X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753216794; c=relaxed/simple;
	bh=xlbuLRm71XQxURU2tXEs5JZrbYpSOPH4/IL5WzRzyaM=;
	h=To:Subject:From:Message-Id:Date; b=GxKoKOLX3mQN3/1CtMB47cgu8J9bySwZpzdsln5H24aC4i0Lp2fHz8qX/e/ujCmFFgqAIvriOscVSyqJztOSEgq1gvGbwCW8dE4vrTOOv5YdDJGgG0w0SwDxLPxXy/GdUCcZTwz2pRVRYAar59VeNEtQjzdlMaCKPYpDTs5nn1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LICIOiOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LICIOiOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58A6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753216793;
	bh=xlbuLRm71XQxURU2tXEs5JZrbYpSOPH4/IL5WzRzyaM=;
	h=To:Subject:From:Date:From;
	b=LICIOiOpieb3M3L/472qu+22Z1MF7gh0HSL3ndE1Cny2gk2icm0m5+iE+NukyLGGT
	 PUs65uo5nGizY9dDBFhZcasAN1P1wk4HQ64yEXIU4ple8sCaKDeEMdQmE9Lzd+zYOX
	 rfrTITuQ93hfA4sk0LguWYiEKQwpt17KK8sDCPrRDS9zZfW9IYXp9EDpaTIzDamLT7
	 twpak6SjbibdCt+jWrr40xaWWpoQJ7jhdA9STGizvJiTs09zYET8EXsTY5dgSjwslZ
	 Y+CyKxKgBJY1E3eGRY79eCA9EXIHWceBZ5hhsmjUyzwoPP3jEAmy/5wtT7gBTZCdUy
	 6wt9/e9hEf8gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FDC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321679358.12528.10688529355040704127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a996b577ec4dfe0102ed24eb9798c547f55601804601526a025b52e97c027f
Date: Tue, 22 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753216793
