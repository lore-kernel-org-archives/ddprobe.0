Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B103FC5C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786098034; cv=none; b=cAT8Wc9cdA+m494QAoX2InImQCRk98/DFbpB1fwoeC3Uf41cRSBzvNwAcHl+1GPtO+l3bD6gLzjuFeYcLV7BZWpa2rLRoaGFOETNXCqRCcfsciabeJwVS4o9i3ra9R49XDzXaEZyKskYvpsUMcBjBAOHQxjAPej09ioS3/NqUZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786098034; c=relaxed/simple;
	bh=aFoays62W92PHIKa2VCKrLZcM/oyN26VENTPlS4yfT4=;
	h=To:Subject:From:Message-Id:Date; b=aQhW+5SOnS24y1BaTaxhq/JTn0nsqN12jw7apC14PBZH7Xpm6x6ruexLQgERFSkros/nhx1wZX56kN4JDZOITjnDKXI+R1wewwU4irMCbreo1KFrRsqZ4iLf+/ZJQ2cCfwMqFpujt4lNWP9sWJ/MmVi4OUSmoINlW/l8nGSK03w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUA04MfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUA04MfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5DAC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786098033;
	bh=aFoays62W92PHIKa2VCKrLZcM/oyN26VENTPlS4yfT4=;
	h=To:Subject:From:Date:From;
	b=NUA04MfGGE6V4hQcmgv57EX2B+eIVnYb+EqPRoxAnWTKOx+K+EvgoC3ORMiudUFyy
	 h3txQ8IiJbUwKybSouIpoFSFKpKiK2uuOact2Ra+QfgW4Rjjlf/VDYG0VxkVchejzx
	 YWBv5EyJlTh5eambPsFIjS5ehPxU2oR9E9D1TDu/69gR4GT565czgdadDpMER+pczK
	 neLPauBOEYrSDqIUCWqv8xda0i0xoJJ5oWldD1sHquRW0vuklRR/YB+E7q8Tn9OUBT
	 gKAp8tIBUEKmsCoLVXIDN8LPD+/U5OpNlPWFmpG6ghndJ6bTI/JMmKT9f0f/nHSHd0
	 zI2gWQKtV+oeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA233C5AC7C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609803368.22418.3535321289233408026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0558a1ddf3636c9a73bc6a4b872fd00457b1e4d74b84f1d4b10bb84db7f10b06
Date: Fri, 07 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786098033
