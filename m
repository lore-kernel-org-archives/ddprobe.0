Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5FC16EB42
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771033494; cv=none; b=sKLDFTXmXvo+Lbo2NYTNE9iian0DFFqqNPPH8/jNRcYTjQJt+40UGuiVR7lAAlvDCMfsc+jjx1gfZw0xu68IAXLqm4Idaog5BDqf4XwpAA8ku9wDrGnMqYebzc031iaAC9CqQ79FX2Jm/gtTlzjiEN+Fsh0jQ6XfQd3Ro15T3Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771033494; c=relaxed/simple;
	bh=Hm2Fsk+c/tMZ+7TdueHtWZVO/E08Ls9XacyxUHtEIA4=;
	h=To:Subject:From:Message-Id:Date; b=dgmjKqMxryp9RLZ+fsTzAokZAMxnsZ8HU5LMj/4OFOItc0d2RRibWl1gJAZYiUrm4Zko4ll0yplj0cNnNQWRkcF0ORy+RwW7ut00t8gE+MVxnMfWYRUbs0+hBoIR0+z5FJzeeIbfic5TbboeDzb3c6GmSHdlI1xCT9WsL1V2iLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ef8Ok2tK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ef8Ok2tK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C65C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771033493;
	bh=Hm2Fsk+c/tMZ+7TdueHtWZVO/E08Ls9XacyxUHtEIA4=;
	h=To:Subject:From:Date:From;
	b=Ef8Ok2tK48PqRz7kdVUN52x/YFG0VXU8m90aA9/hPezMkgD4VdDX2zSue8j4aRgEr
	 UufhsnkLOtuGrECZPqe+6dhJY1qrc1b1HYekNZrYQEMiKMUb70ydwrOnBSluMmiSRy
	 LJsIgdBP/xEmxs1J4pTECIztos1MsXWxCWNe1U3I7NIdUTfWEtM/YtRuVEW12gViWF
	 bTnx9g83Ibx8/gVcOpVOskr90wfxmzhMKtQgJH5ri0ymPLH7NGX18vMWH3BguyWrP2
	 QXZudlaPYoAzn6vWmJJDZIRsDClPq7rjZc2hFgpK+F4dWp1+pQwFAPdvItkgdb7jCK
	 yAhBuOUjvUjkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975BDEF99CA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103349359.23104.5969177169807572879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 664f30b8e4747ec0d1c8d28dbb12f73bc365337c715ec95e94bbe09c25296d3c
Date: Sat, 14 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771033493
