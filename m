Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC32335564
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777531654; cv=none; b=kEyZr3v+SItUBJw1Q5vPSAI1XEgCHe10bnV/Ar/rWYoLJMps7diPe/rs6IPgyQIyfRA1upJIg5T3u6jGrd6gnJ38xQx63K1SB84ODsjJ3h7y4mwkdUNBAY1YWqXbPE8BoXvAr6Dz7BCOdvtzAmpWZegwBajxFgR2FgRPTLOnBy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777531654; c=relaxed/simple;
	bh=QPemT6YJ8946ZpwTbi9+Y01ZzEUR0CyMdn7Gt2XEJjw=;
	h=To:Subject:From:Message-Id:Date; b=h/IznR9BfBPjXHJ564W20BOkgYfB9+D8iBRy+CS83cCrRnmf7h2BwQJd61CfUNp/Uz5bw9sM22ngQy3pkZi7wbIzy9Tj80oZBF0/xYdeLH2WOLdBjxSc+XumSBjvy8qm3FSw+rvfASqbQDs8I+oKFCIzGx957SxHL/welRFXpzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gid6VIEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gid6VIEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BB9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777531653;
	bh=QPemT6YJ8946ZpwTbi9+Y01ZzEUR0CyMdn7Gt2XEJjw=;
	h=To:Subject:From:Date:From;
	b=gid6VIErTzbRBoldb54Nrxuvc7VgZwmgm3aEsy/ZOIHsT/tcNhLeWvk5cq3QGndmc
	 THjBS/1A+EHWDsFmGYefVOC2xZ7ZKiR4V1iWbJBhSYqmYLQ800IWFnShJXZx/+HdiP
	 8URooyi18jj1+b8tWoDLz0fRuGPz+3xSjdEDFvv2P6jj/NBUZ9Oj6mHfoDePUvtGZN
	 xZB37QbMlMisvpX6oBzzFgITQmwShMo8kNkilEq8ROgZ2/CUCI384wrkrw0L9934w6
	 Nn979MRsn+2iXdIDX7wz0LsKKrhr28q9iSXy+KvHBwpMFPemRc5IQqwNALqxfFxFio
	 v7pl9t7xRP70A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA38FCD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753165368.9029.10534150491079579813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0478394a5f4bb2dbd4a4393a3c00aa12bdd4b885eee96aac9f31a54b316648
Date: Thu, 30 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777531653
