Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0713F6BB48
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708438097; cv=none; b=Cwhu1A/j+a3e8fFJgrfzQxuAfP4ygyhjfmBFyoY/aC25Tjtnz1c5bv/oC/jwUrCnta+PP4/pWMfZTEsDnJTS883Ymo1JreEGGIxm7zTTT7N/08UmnzrIVUgoCYQw2TvpymZztMTwt9lwOFUkQJ1XX/Bztzcy/laLR/rmdG9Q30E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708438097; c=relaxed/simple;
	bh=foBGXvDEjVuIXpmAhktgsL5gMiV5s4pfn3COXB2QluU=;
	h=To:Subject:From:Message-Id:Date; b=CBjJNKAPSxS9MtadquMYq1kmgcOOwLrg/w8GCL/wdZ8AnaQo1L0+PS68Gg+llERaM7VgwjfufLPWGYJYR+NkH+OdCXanwZzrgQhwPIU2J2PJKfHNgu9GOvg0/x9hEA8maL52Z1o+d2t5YlI6Ou8bMpmvRZuLKCMX6ft9xdrOPMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRQy3UNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRQy3UNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80BA9C433F1
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708438096;
	bh=foBGXvDEjVuIXpmAhktgsL5gMiV5s4pfn3COXB2QluU=;
	h=To:Subject:From:Date:From;
	b=SRQy3UNbyMceXt7xuT0alLczvryw0Q85h14rSHaDd/GbgNg3ehfxx3uO31dGeCsmZ
	 zBxTTRMwFp6mbKpQoebvec8rR/KP2ztUBIGRygfrmPKCiZNY3p8nNquCEogTqyaINs
	 zo2xssAKGLTY/ewhGAC/CQQOwABWEt98QldiJHIg5u1iiEi2UyTTnE8N+uWBHC5NdM
	 yOoJu6Tfu0RkpNZfeURF0+p9NqwJzxx4ug6bL2M2Td5uqRDr6+PHs55X1aJDTmnFy1
	 zTEFS98I+4Gbdm4I/r0/V7nfZfsmiJbLlLdIBDW4Ayaz/f9+pVCM7YvHkPax+zizjW
	 CVbFrG9BqeQsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6594BC5475B
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170843809639.16971.11882275005954329345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2eff91c293f56469289381839da81a0c02f2df45ea8e0530215d6761406b39d
Date: Tue, 20 Feb 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708438096
