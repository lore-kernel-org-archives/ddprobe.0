Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCD431D758
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762433394; cv=none; b=c3+d0AYxBQp0WC5zNqP7yvBuS0aMlHAPhQKVepuMj2x93zSQUy03jVxyYnfPD+EMevG1dXbe9QIELHZfONbjTBxYlNONEoHoN5Z0gs10wCGcka96pypL7eezRvL+vE0GM9FUUNBy1GEbEN6dXLzWWyV6F8P5itEbxze3rC/h+Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762433394; c=relaxed/simple;
	bh=8oWdDnv6r/hsuBfd2Pt2LAMVraQCk/vRMiARfYAaaEw=;
	h=To:Subject:From:Message-Id:Date; b=ZZ/QVlVbYkc2ktMCf4yj4VwIx2Q8k11QZhHg1gCnyM9/Lmc5xnqzPewPiFVesdWVjgqIN+9oRZ/Wfw+1W+HJ0bcqcGE1nITooH6UawRMR+kymrT/AVhlpLEvI/w3OfN5rUOpFMICJpR+88APlgKpT53glPkgwpwfg0CF7SBrpkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ly2K2W3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ly2K2W3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FCDC116C6
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762433393;
	bh=8oWdDnv6r/hsuBfd2Pt2LAMVraQCk/vRMiARfYAaaEw=;
	h=To:Subject:From:Date:From;
	b=ly2K2W3dvKnNVDdWVEJJmHMARhJ8y8em7rkMSWAchJk3IVEc9pzcNnKvffYjFozvW
	 mPloQq2Jn3GiVBf43Hi4zIPApF6oFkgRfYBT+KA3N4YHcw3nkxFmaikYXFXRrYpZDd
	 KD3TYFpWfuvMemp9xhh9G1PA++PUxuEzAQ7/V6jY/p/EsFXNaG/IS/SRN2hgEqbKpX
	 JbJb/JdBAXcyyPu7oGAfeeCHoP5qq8yRxWxnldZFbAqAH9G1STSvBzEilJwoLAWf9u
	 pNHYiluevIqAsQPeVBWG0vQLTjBtNhM624QCfXoT5FgmLR9q2thInLW35g3mZ937de
	 lrYDxtIH2Vk3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A21F1CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176243339362.11910.12548413434959897489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92736b2dabaad26d7db8dfba915b327de71aa3c44f08d5d90e552b09d154d29b
Date: Thu, 06 Nov 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762433393
