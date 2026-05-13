Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B48338F249
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778640034; cv=none; b=mmUcvgp3AhbPR8DFVSWMX2mxjlXJJr/UPusTrKPUmORxi0ReMotDOn9n1M9PjjT7goEOTejdGiM25qZJt2Zn0XjKJZ3q50miR1LY0rbS+iTrsyx02kSMf0v1tFupV+nTQIoXmH7OXSRL70RthoxMTXdGXV0iZwk6+VCB8xKPPlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778640034; c=relaxed/simple;
	bh=oml95Qg/eJOPFRAKOTtti2dAghs2dyI89v2Xv+RzJoQ=;
	h=To:Subject:From:Message-Id:Date; b=rtjaIj8hQ2+awpg5jkBIAd8LO+0hlt1b0i+y1elfQjPcTeMsL5jHR6X7/F8m2LR/9sMUiwDxLczbHyurPBsXSmu8kwHme+3EYLtZcso75KY6/bjOva7lpzflQRoIoqZfE1n+qpsgULTe19B2A04G+KoXFak2vyUlwXniizfrrL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8p15Mzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8p15Mzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB79DC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778640033;
	bh=oml95Qg/eJOPFRAKOTtti2dAghs2dyI89v2Xv+RzJoQ=;
	h=To:Subject:From:Date:From;
	b=m8p15MzmO0UjgyklHOwOTWA23ARBE9adG720ONjKuUGWw2+GLC4ES+GMpeXpL1CH/
	 manP/78zn5fvCyPlTPddMAIN8hLIOhvrV9JiD+hBObMlBFk7QrVGTOXLMR7by0H08h
	 7p/r760/laY0Yr6NbUW9AcMcM4bWPpoxuLdvgDBqK3hsP5F7GfM0pN5fSFEZJKGr8c
	 IO2Ku59Bz2Ya+ohxOQgofLyvo1kgf6Vj0uBNvt6Z0D6rHWUtjJ1xbdaDJ/E272yNTm
	 VWDNTIpsrAda/sIhWREpqaJUB9MAtEiXLFOmxj+BnEJi1gml1Zxj7UdajvW512G4Oi
	 E1Eh3jLvwt6cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F19CD37AC
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177864003374.16605.18148009452509131825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8d3bcf973f44f0d570061ca3753c247b348e6b88782086691f4af03ff333d9
Date: Wed, 13 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778640033
