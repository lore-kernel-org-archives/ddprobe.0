Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82CAE3233
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717807643; cv=none; b=cho2xlb5+JRDQHFdE2CTGMA4W/N+2e92DMq6eMoPyQ6aPHUxMsvEDKTxrbrniblTk7ZOQu4zCDKUF7wL3uHiKLSinEa+4DokCSdmaJt/i8oE5EV59vHIL6/0pSE0eqqHvudIuuPWB/qGy4IKPpxdpXAxqhPdbRnw2zQTeJlk9ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717807643; c=relaxed/simple;
	bh=1PWkiXibmmkECF+P5vKwY3fAoqC1dMLdGC9RiBpEcwA=;
	h=To:Subject:From:Message-Id:Date; b=SJ9CRcGShoMEdlyra7Wisov4qXAf52LgETVN5xmhLE9xajYth+ZO6Zru4eX1Ey4Rya8C3kzwJu27P1Kb7JAKSGnmRgZgZ/jGNS40VEEe4GzunLEpaqnGCLF2jvE/uXkbU9mKtpz+PNCSHDgTWMbR8KUC2T5nGPl4Xzib1vEjynM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzsaCPic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzsaCPic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 027E3C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717807643;
	bh=1PWkiXibmmkECF+P5vKwY3fAoqC1dMLdGC9RiBpEcwA=;
	h=To:Subject:From:Date:From;
	b=NzsaCPicZHMwpcdmBlmlVhE0BYZrwk0K+X/dY2mc/2Lkr0kMU7dL7TIY6f7Dghgvl
	 0FiOEqCIxKaw7jSWCX9mwAXtsQ2iDXaqF5hXFGEMOe9HdjFKBiipzsx6ZCgXABFljk
	 n/Vw43jJBYPdFh8jjLxeKwRVjEPRuMev9Fxh3r7cIDLcphaSZhBC/X7X4gUBZiXqnT
	 Cn/egjXrBSr+ZG/ylBCGIgjBnb2MPRVXa0PQ2uk+Exvkip0Kcn9PuXtHLoLeRg7jfW
	 ZSavlYoIfTz9JEiSNRVQ/QkO8prtIHoNVAxoQuBoO6QDIJG3GcZ7qEAGi/YRGI4YJd
	 I5uzUp3n5wFFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D895DC27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780764287.18938.1805824255595535001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa9e870114b43201ae7bcc860e7ebb2de85185186899845c8c1302e5bbfbe17
Date: Sat, 08 Jun 2024 00:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717807642
