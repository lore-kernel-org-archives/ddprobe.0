Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746111BDCF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720840763; cv=none; b=G8F41POt/Bj+E01a6YDdJTSlt3HcyU1PveX5kXvK0hakCcnCpb4EDAbLYgMnKFNUkrtdAGaDjx/BthMhaIQEkEjkmYQggrSRDHQ3uO6VHjFtsS5SCaOP4AzEMhpnuNfINS8g13bNR1uut+5WPMeKEUQFYhSSH4MeCGxQ9+sqO50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720840763; c=relaxed/simple;
	bh=NDvUrailfkeM5vtcT6Z/FHsSjVXEPG6eP7P22Q/kRhQ=;
	h=To:Subject:From:Message-Id:Date; b=SB6oiS3x2IHK3ChSERJradaBrrbeXe9ishnMxg9bQhAeNElXNRp4NWPujg4e+vDtdHh5Wfg7uLDBhcye1crQVQAVwZB/dNio/6tM8ai9JQOCGwlvUzyLkCHR4EbXWbgG51AI9AkyyNjPtfDAJRVGxXutvla1rMQ3NcecxIZ6aIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH82DPXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH82DPXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF5A7C4AF0A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720840762;
	bh=NDvUrailfkeM5vtcT6Z/FHsSjVXEPG6eP7P22Q/kRhQ=;
	h=To:Subject:From:Date:From;
	b=iH82DPXMPdGWwD/zrgaF22ZApoBzlckENHuqz5AHJc9GyOKhO0sqLK7hLJevEYWmR
	 PlAG2AFnIPDQ8ZAW8HqV6lcxgATOHxftqgYgWHBOPylaiT3G/GYDorhVi5Ph0fjVJB
	 f6kxqq8jhGagUeZ/S3nQBlcFlLbM9eJ4bTAOoGa/YKVvR06RHrATPGWLZa74Vs0YcP
	 3S1Dlx8idFMdqwp2BPVsiyI2ev6Jh9YIpb8pfPAP9EjJ958kWmOhWA8PKjcp8xqOGR
	 FelCfK66VSTmRvmdaTEZNyE0C7Z9QmeS2myUgVQPcnlMoaRDvVpHtb9BBOslHm3tzn
	 gTjBB/B1DzZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82E6C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 03:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084076278.16390.11596960173683890947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9bda76bd12548e077654a2394578970fb90b747562d85fb14f9caad0696607e
Date: Sat, 13 Jul 2024 03:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720840762
