Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B9D2581
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765688574; cv=none; b=mH/XVoHItqNHJ7x3cwBEOfZhrS9b0fJWFRJtzbDqm7sEz7H0qM/YGdW4eEcMSDPFBgyhXMmErWejhdNNbD2N496gGMDEuEk8/t0J8G/2HG/MeTKmLeNWi1S16FY9ysha1EiwR4eOYKrEaNtZRFi4ddg+2NLHyzKPI0z+36o4hzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765688574; c=relaxed/simple;
	bh=gVOA7q+ZKARYiwU8e+bJNn2S3NYJIcbxnXpB30e2QLM=;
	h=To:Subject:From:Message-Id:Date; b=KK5UpWB9v5gC4+TArt/DliSAm1pTovD9fuGyPY3CEispedhsy+V3xZ0v8AerLa89NY22h4OpMxAz1wyGwWQ2OyLGL+4i0GDok62fUzVubf2wi+EWI0tucW3sKAu43R2y/M1Nm1rg/MSG782n0qixOYm6HfUf+T9V/I9QMoXd40U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/RmETHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/RmETHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A24C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765688573;
	bh=gVOA7q+ZKARYiwU8e+bJNn2S3NYJIcbxnXpB30e2QLM=;
	h=To:Subject:From:Date:From;
	b=e/RmETHYuFjD5dXpfPA5BguCZUDxHLyEl3WmAQwDIMah24g3wkjwbfYuz9RgWEPd7
	 M3tkLjyyhaXGEdm9yUNEA2hRdHdOpOMZH6ZwWTBmvcIjOhBBgijusGH1bgIfRZB66b
	 AwVECIqlevtKq+Bl5JJ33lDmKBxKjV8mNviUO7q0YbEr1LXutAP6YNGVK/nasOIecN
	 67bPssUqTzjhPvLhlQVoevLq4vdkhk5vO0kteMAu9Ngr7/wvUjRIlLh8D8YUv5eANh
	 cOZ9F3f6ayyKPR7vOqZUEoqZRd/Kpu4AU/vpUlYC/WEMSSH6nw+5NsZAXDf5yC2mAU
	 AP4juxEdEv21w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6B1D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568857358.26250.626464697467920647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54ac59bff5c4e6c07cc48e66799c51aed7d26f017ce074f348ec037d13fe43f
Date: Sun, 14 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765688573
