Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D358305068
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758817194; cv=none; b=SwL0nCcYJIRczdb5JEhOKu2NKG9AzgCn85NAtYh+xm/aavOrTHA01Mtcaw9/vZSIpwCEN1D+6mcT0bQSVfsv6SYiHqT0a1+NpcJ3J/ZY8K3a2k8WmtSXiJDUqgnE7b15M0g9YBxiDSvL2KxRzlnjcAY/K8kiHh7SI4LlX5OL2Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758817194; c=relaxed/simple;
	bh=Ivdx2+VGWOWsxhURTQLxG11nuWTh7Y+HeGuGMoqedMk=;
	h=To:Subject:From:Message-Id:Date; b=Cduu/UWS3zv/751k3CmLt0yldv+WIQTLkD/ejKPhlpoitqB7483vIC+5wFxBxL4TRQ/GfPaXJhM/tLTKKtzBHLu7JKReAYwDR7gSXtTkgD4ZZBh5B44r2v4DFAE94gSMoLm5Ci0mdIlxYL4zA4cnJYM7AT7vDTl93B8fGSg0/BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1Z7J66s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1Z7J66s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBDEC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758817193;
	bh=Ivdx2+VGWOWsxhURTQLxG11nuWTh7Y+HeGuGMoqedMk=;
	h=To:Subject:From:Date:From;
	b=Z1Z7J66sOktAN74kffVTjfo2jpQqZu9qMZCLv5G1I8MKCeKAQuk5SWLfTZAo3LUgg
	 wpu3KgfFHnfL4EcvWZjh/0TOEwy9OF21RPKetOMj0HX2BB/99u/t9GPczCMJpwwp3d
	 BATAne6Yi9qX5s04SvG6gjbZRm3EnFoXWuw6bhgTXxxRIqdSbtE9wtY5+XYh/RkfZZ
	 i2RAFX9WFzb85JzXYvnp/sgotTIAJepi2LOa+LxAT6h7DDh1o+7jEqssr0zoYKzc2J
	 pKpkt65o4aFk3MYManJmDXnvr5IAXPlpyZniWVaZV6zPl/vHC+RusUW5oVlJYzPrcm
	 49VtPrL/iwEwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976D6CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175881719360.29979.15313708645983606662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ef508701eff88b80c718b3d8411f7daa4283669668731aded7f2cdbde3dfbc
Date: Thu, 25 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758817193
