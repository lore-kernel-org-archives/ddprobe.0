Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405D125A2CF
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761868194; cv=none; b=GnbMVpWLBTW3czG/iQkQl53rr7A0/H7Ort4ljrmfo3Gvdbxrdfm/UkfHkg5zsdeyru9mazlP3eVgC2bG2YlzE31fTx7QcZPvJ2v57oHRi1+d/PZI0zVNQZlQQvWqOlVOhcvfdy/zFeLg6+kZwIa1f1oAU7IBycr1idWb2GfVJw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761868194; c=relaxed/simple;
	bh=hYz3b/MnWJNHyDsLDyXmSDFNPV0zEXIR5la/gmt2SWk=;
	h=To:Subject:From:Message-Id:Date; b=eoOZwbfWDbyT2ehpSfxLB8S/d0pAny29v1h6MukdBo9P/PheLTa1Au4iwbpkDklMG4Jdntp5OEj+BeuH6yMl3M8Da4/8fMSoSBisK6WkCRQ/imqhmm2cSwtvWEJAj+ybKdCYEhvDEJ1MRY6xOqiNSGKPDloOU4oEYdu+f2srXPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpxIPJ4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpxIPJ4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F41C4CEFD
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761868193;
	bh=hYz3b/MnWJNHyDsLDyXmSDFNPV0zEXIR5la/gmt2SWk=;
	h=To:Subject:From:Date:From;
	b=mpxIPJ4sRxUzx0NbYh9M2F876GHKz6UO0VQxOyK3cLOWbCJe6hItkiZPtGcAB+h2I
	 ag/3kBogIsxC8cOZE7trDLFYIaMxz9s7oZwgRYiYr5DF4Yj3pG8wF8wV0/tC3Er6OK
	 Kc40STA8D4lYkslDKlBhQVdeoIZTwbJA93xUQmklmTyeWjeIIssm5UoGid+HLagGE5
	 HNakCx3nVyMGGzb0TmjlKBhKrBFcqlj+snvcAnxMZU9lbtI4YU+G9Pz4JgnSkFCor3
	 l3473KdnrEVkBH3LyFXzvt3rz7+fSq0UUZo90AfUMfNlRG1Jt5mslN38bGMPsAXQlT
	 egxG+Y5iJBB1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BD6CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176186819359.9865.12731982274592658326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f99a286593749c921753e29056af51c47e5eb8f32dd3bd1074ffaa539f4f61
Date: Thu, 30 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761868193
