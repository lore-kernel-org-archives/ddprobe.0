Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC2120C033
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 09:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740560934; cv=none; b=qwtTU7YJI2UyAW3Izg82KUaDknfc1zHLrR+T+KKeMmI6j3ddPJhhnTk0n0a639OEF0+xYOz2b0uJ8XpRhkkOImwhyxYfpORqmL2kiftgLiwfyEGNkGRD0YUze+kDu4B8ynGqsmOuBRNatxgnEYM1fqmcumiD4PDgMjjpzvcENgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740560934; c=relaxed/simple;
	bh=G1cR4DBlBYMyIbz49ZvacdiKnWXnN4qbzUXSd2aL6J0=;
	h=To:Subject:From:Message-Id:Date; b=o5ORNMlAILw6aU0rxU6Grm4LUJeg3NhvQ5K7pccm+mM9BG7JxoVFlRVg6pD6RQOWnuogAJv+ZLkthIc07r4ljLLoyLT2XIm/nXtkA5kvvLBK+b6CXRjioBfHOj8PB97oPVguKoJJre5Tyxh1RLi60yN1uKr78c43yHg2PFaFFCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBRkrUCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBRkrUCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E27C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 09:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740560933;
	bh=G1cR4DBlBYMyIbz49ZvacdiKnWXnN4qbzUXSd2aL6J0=;
	h=To:Subject:From:Date:From;
	b=bBRkrUCLbGsIoSwvOR22vODEUMGITqinLoHm/3nIXgoPJ/YVIWjjKRb2GkuGk5rN6
	 AVPE937r3G9YPygDLuQ82xyo3xbQHy1bOKcKp37BlaPL9UEnDyMhVHr5sjXeuiTUmT
	 jGRQ+klcOlRJbHwcj1r3x4y95KmhQX2tbZikhcX/RRscyUsX6Jvugu/bup+7uyXK/0
	 4pUVJqIC1dv+3wph7XU3tlEp9ZPXMu1x4nYMppiuXMr1Xfw+Y0eZAj67NnEtFpCLYK
	 aI1IMKbmPCJIMGKGkOFR1t8jjz6FSKDssl56M5RXgoP9tNLJLusba5aEv0l7eUfro1
	 Fox6ba9JpdWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EF1C021B8
	for <ddprobe@lists.linux.dev>; Wed, 26 Feb 2025 09:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174056093365.15128.4423708808147625791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267d901e79db54a3b72d18c8140491328bd1ed7efa25cd02d7cbbb601ec2b665
Date: Wed, 26 Feb 2025 09:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740560933
