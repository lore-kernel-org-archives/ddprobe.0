Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DC929C35A
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783100914; cv=none; b=FbZ7QEt3ksPFhDWd8jHQedEZT0MpJt/39Y4Uad2jKX5n6TvWHkWMBBs40FH+HCf2wtNMTxv1WLLoQk7wtmIdSZGwQcnmn3TyiffGkFgHygy0G7+rlLaWkk1ynDiEXIpwG/YieGae+tctMmCAONzOQtMI8zWwteojnfsjNYLK1cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783100914; c=relaxed/simple;
	bh=Taot/D7D2Y213U+hc+RMZRUMD+9NLqjd6pSZdW4S2PY=;
	h=To:Subject:From:Message-Id:Date; b=tdEdWgReVSYBw01xTCK2c4ybYeKmyAUT/cnmLFyM4KF8DQtvS7iZE4ZVymx3TWTCOygbQQFlKlzXJesGGn88YmhjYCHZggLvnj6HLX1RkSd/VHlpIpvpzGJbt/EB7rPlEr6BTQvQCudJ8r6Ov2F3uWMtSUjEfVGustiUeQZDsrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1BKeHoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1BKeHoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC6BC2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783100913;
	bh=Taot/D7D2Y213U+hc+RMZRUMD+9NLqjd6pSZdW4S2PY=;
	h=To:Subject:From:Date:From;
	b=O1BKeHoM7FL7/omA0veSf7nPg1rbMun7nCvXgz6yzhuszcYwlTupGAX0fxd0bpegl
	 wN+PoMPg1acVSmOYD6WoZX2MiqC3kNJtlj5fn6tA6jo3HrOZ1NXEHFKMwwewrAp9U8
	 Dvp4Tzsy9+MX5gvM9R7UAO3Ptd+xCcJANOvulmCRLrpvPl6EOdrK3x7hRSX0DJvVQc
	 jndwoaidpt+poCZpKdOwIWySzK6qRENG4JyTpJGjl4l77H/b+gnVx3/9nYGsSfZNO1
	 KFUSgl0QU7vGpijnjuMp1AOJ1YnOSjzSF6oFNdxUqU6gasnzYnTZ5BTHoU6usCrF5m
	 OIkKzn7SjWvWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9123C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310091368.24332.4546119997431380068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8affb186d1ea4bb4c01133895ca0042fea90fbd14892f6968e67a1165469d3
Date: Fri, 03 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783100913
