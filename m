Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4F214A8B
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770523434; cv=none; b=eLJeXfsl2dMfO0/Zj8Rtj+AyuHCFl5AIQ3PORz8O66DNRD6/VBuB8c1xmRUwjuC8w0SXibMueN7r1wqrsuavCTznMhDvgiQubTDCNK3QgP4jMJJLxcTGP2i2IU/BSpHrWzkehW0PTjBVA7OLFGQFNUk6XnlafobaOk88gkreZIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770523434; c=relaxed/simple;
	bh=SzjGs33RDr1GwztqYuhw8ifnDkUD7Pl6UuVX9AcJDik=;
	h=To:Subject:From:Message-Id:Date; b=s0Jpx+aMkm+MyZo8Di4lk4g++OWXXCSPg4CILZHlidAQNkNQ/aLLw9bnux48kiPVT7iJ7FzkDmIp7nGtp9g/2gfTiB5sXPpzxsXwfplsVrWPDXGfPvr5e3PCxfKMp4Aixkf8AjbrxsrpmfSg2df7yr/6oOOsgoPvMM1LA++61aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5Xass9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5Xass9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EB0C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770523433;
	bh=SzjGs33RDr1GwztqYuhw8ifnDkUD7Pl6UuVX9AcJDik=;
	h=To:Subject:From:Date:From;
	b=J5Xass9Im81gMNF7o4ZnybhTQK0I4y7rRF00q14TRMKVgjPaZwRimCPgwWNDWjVmB
	 YfoGaKaUHLGFfIqjQYnG1RlbpwurGfT6ToUmau/DHVIfsGYXtZVXbwKxyyAZr2gxfN
	 WaPY0J1eAag8EhImrjJznJSA8/CjNI3v7SIO/TQ6FJDiqqrLOikmX9b727gNtXqAa5
	 8Rq3uKeZsbRHPEVY5Xu7hZ6jDi927Da26rbmsDJS3U7flhjL2W6WkvhmHC8ehd+IX/
	 lLVRmvZuUu/8CYxDLjoyY4RWdywsBEkLcGpzRFuEX3G2OWRDxRoVsY1Ls0hOvLIrIc
	 yhAOmCUqfqQJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A343DEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177052343365.21099.17550813986580375637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e453cddb4ca6960df818026f4379d1f72cf7e3b8b11635dc0dbc368353a531
Date: Sun, 08 Feb 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770523433
