Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340012C9D
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726981554; cv=none; b=r9K5QKsTXCJWntBtqzLeYKMEZPacKqB6irwVI3MbZiPLHAnP1kAc/1zeh1zp4Kw4n62HqbXTDnIFBhn1O9vlpsfhLqPc+Qst6hL+JaQDRAA+Q4u62brjgCANZnlQtcUCk9yH90xY5yvn5MzPVtuxFPBITCnZqEKrC1F06B3oKao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726981554; c=relaxed/simple;
	bh=exD8JDRZAGf6L8qbStCDd7dCeRO04PzOd8MwmQ3+nW0=;
	h=To:Subject:From:Message-Id:Date; b=mGQM/WuRghXd6eO8dS/BvijhqG7aC/Q/buE/R4jKDlWQqGyVlhAdG9qnnTRAMSRWP4RRdTzg1KnJ1PYoscRxPtc486YEb87zpKXb1BjIL4/g12lMbIKmRk9LDUMyUYQ54eJRGv5uXS3ynIAmXEBYzDzG3WRCRT1PwWz12x2q/pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baMs6qU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baMs6qU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9627C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726981553;
	bh=exD8JDRZAGf6L8qbStCDd7dCeRO04PzOd8MwmQ3+nW0=;
	h=To:Subject:From:Date:From;
	b=baMs6qU3qkwTLk1RKgL+9nzVLdX+tZrwbF2bQuK2DCYqmmrfuky4Nek6maLo5DTeo
	 Q+oBaTkFc0YWf4Cw+JEEFvHb7wdpLxC4qmfOz8y1myRwBB9E5Hp8GFDSuWEFcSCsDf
	 TtIfAtdML7CzrK1b32btOSTqIQhmkicoZqPXv8QnJf4POJ35M09X5ozR4eK2kHYcD4
	 bC12T00ASodbtAcbBbnmR9QxJxxHVGxKDAzdr+B+AFHzGQclB/XP1wgi2zfKa9t6H2
	 +SL4OXE05GvhzftOo/xknM8GS1it13YSVmmAmTc8lo4bjDdEUpoeULVtXomGnVADXN
	 Zc2mOG74t878w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B23ACF9C6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172698155359.22443.12029658445426938599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696033c598afaa0aebf042107b7f56b8714cf8a6e25b6033abf8e4407594254a
Date: Sun, 22 Sep 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726981553
