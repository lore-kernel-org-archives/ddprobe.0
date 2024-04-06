Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE81E3611E
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712408897; cv=none; b=oBsSRHr6F8gp/N8rEAVdeXYiJNVjfvTCyw3FqCqdTVRsmRaeomhEmNYbHk2dxaWfMMMusGyG37wqVHW0/YbjPhcXYZ6zdp2Byq/GMXScrXlUCNLQ3NuY9dkaabiS+65novXymwND1+WnKi7ANt/mPbjPmojQ0s8apqjY2MZku/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712408897; c=relaxed/simple;
	bh=JmpZGeEh1vI9uA/HCWlnr+X1MI2Llw/kgdcwojARzDU=;
	h=To:Subject:From:Message-Id:Date; b=rMwFXASaz9MFAthkSJlkgY2OuwdjS52kxbV/NzOIVrkSL5oBLRTVDOkyI1s5+wR4Yy1eao17ioV1mrQzshJN5qyCJFW4xPe7phQPzROH/xvuuoXZyASvMBDLisI6fvH9twuSLVV20KMGKe+B2VZxMpGJmR91Me3lTvo0StOYNrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nSmQvKod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSmQvKod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77B1AC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712408896;
	bh=JmpZGeEh1vI9uA/HCWlnr+X1MI2Llw/kgdcwojARzDU=;
	h=To:Subject:From:Date:From;
	b=nSmQvKodj9OHSmYjQR0dOyiwqvOky8Qo1HbQmODJ8wIOGtA2J7nBb3ZBr9wxTYuEc
	 9p0CcBi8iSyOxdNyP63qKMdFwGE/F1qpfCFWfilm7pLy/uWGefoABY7Drc17FUYZXJ
	 rwtZ3OAsfROUjHQKJ8VxzymHjgAJ+Cqk2YAlu6/GJv0B+1/IhFIbspZU8aN89PgS3T
	 VFYzgOGyZIKLHdCP1WlI3wi3Pa2ZsH/6+CemLV4zTI+rJSpYMkFi9pU1+jwHUdEBOZ
	 6gzpjZjnndxf+cPwRcPfBMYDTX/igXUC7VDCF1l3Ye8fyK/YM9uVviNUR51fJuqbiU
	 bpHdUQMZBmOJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FB2C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171240889638.3194.8638249547510192756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb56b1a4a09c1aaa1888bb3286df992c711a3cefa401a66e4d7c7c0c27ed7b2b
Date: Sat, 06 Apr 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712408896
