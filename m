Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151EF149E13
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734263154; cv=none; b=JaI+tBd2ZvMkJeyIXCofQF2EDyHaZhoTlq8+QVkCD5w66TginV8AOdan5GFJYlZ6JkNQjJci+1gPC7v4N1RjUyET3FtshIsdFEteIvhEpQi8ptC535+Sol52hjrTGEjG5Ky0XsUTxReMqbWAqs6KYqVujYDR0X4QqYxPQtcdGc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734263154; c=relaxed/simple;
	bh=PmvydxfUjvPf6GVOjFNFIrGp844CdSoKT5R3D+adsnw=;
	h=To:Subject:From:Message-Id:Date; b=ofWJFNrlg4sWdBNZ0xmg9GwXBVPbkYbEzlg1DVja6nJjUGgg7DcfGNM01k3k9NQ5hBWYMlswpfUvmWT+4bf6oB01FLax02fEIhsRLZ8QqsZRL0Vw6Y9zpH6bKmkm5DdXo/dy/Bof+a8UpdLdxLQiBsyz3zfN/IR70jG3k08atDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdnaqBpS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdnaqBpS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B02FDC4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734263153;
	bh=PmvydxfUjvPf6GVOjFNFIrGp844CdSoKT5R3D+adsnw=;
	h=To:Subject:From:Date:From;
	b=BdnaqBpSydMI0jwwDmMiROhD420PEvQQnpZd3gtWZhWNuVoiJPvxUK6B2EMz59knP
	 w03oHvAAfCh61gYNeq7YhUwQMqT2tLdB4+E+8C1U0sshyJI1pNHSe6FR2CZlJq4l9E
	 ac8Lsdh8OpGGBQ7gLBP9UacQzD12btlCIMA5c93V7tXGcHJbvEMpfFgUG/T2HKGfHE
	 rmLBRp0gp+UnBAgAiu1zbeylnaE294u5qlqIdZfvA7HJ+Tn2a7xjvhkGJ7UMC2yAIF
	 rkXYy+0Gr6LeIFnHJx9mf3nq+vC4cHlX1NOOZ3tlu2/FoEYIeuvKPZ3doG8HUGNcrF
	 1sF/YpQe+CkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6A1E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173426315361.8530.9285783517174376751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf12fdfee3dc12cfecb68703fbadc13356150675a1c899555630965949f2a07e
Date: Sun, 15 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734263153
