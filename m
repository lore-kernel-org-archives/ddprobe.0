Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09B6148830
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756658993; cv=none; b=uo8hCl7Jc6lOjBeK+2txyudprFszy3IF3uFb9z7b7kVBultvC0pIxftphOc7SKVqHbXgMC4XlAWLBRaHausvKfdXEc4PsudtYITmrsB3RzeJ1JItwhEHDqKdsYQRn9XioHHzgcyYf8+U1K8s8QcJyakF8VshjB9SqbqP7bDsPHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756658993; c=relaxed/simple;
	bh=46s6G68/aYfVLroQizrhVNhaW/yxj/rrmThDpy16n0I=;
	h=To:Subject:From:Message-Id:Date; b=Zfi0H9qha6QjFhNDYZwqkryLjNVDWNPOCIrwbuky+GYLB/uzF5yxVWSsaymB6SyEglZ5+DmLNeeLJa6yGM9wOfjFxRoQlF4vO10z71ctuSc6qYi/Yzm6xsHyGb0A3ammBXjfjEXJrD5RJ3pgZM73/0cmpvsFdxazbsLc6N4HFK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUnlXTEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUnlXTEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A260AC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756658993;
	bh=46s6G68/aYfVLroQizrhVNhaW/yxj/rrmThDpy16n0I=;
	h=To:Subject:From:Date:From;
	b=fUnlXTEj03/6WYc/rN6/hyZxC/awPekTLSrFrOg/86ebFCSEC1SXuMJ5aTYDNyhvp
	 IT7gvEV2SF5quv7BXMPtd6eo4LIJJVAudb/h6Iarez4dXzR1CRRCoQarIXrnfeL92x
	 xV4VZotODOKo4HY5fIIM9cdibUgezIm3WSC7O1RM1aEQhW0/lFkmgV+nsqqawzmgyo
	 KnZhGxT6No4hlIBPrzfIegTNQHW66jNFfYxFmjTa9oEVDYDwJnz+RaPcz3bYu1/qaQ
	 ot2KVsjPUUqPlyujUFWQQVbs/Jez6/KSWZIbVZ71/R8bJ3Fp+C8sCBfO00nUyQZx7u
	 34qHiCnQ/4UEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D4ECA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665899357.5949.12633409303715184984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664c523e91439c3163423025b5e0dc165a66a51883982a855a4c68a314d03155
Date: Sun, 31 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756658993
