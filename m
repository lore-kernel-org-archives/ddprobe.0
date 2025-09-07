Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9092741A0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757257795; cv=none; b=BzISLd2xv9IPsUxLEOR9190moQztJau7mCFbygl3kEDoXqFioN67De34cidxElC6dFSY9SW/F8/lShQo9lkRpww/wp6YbrA8ZUeveGMpIRfo4Ci8r/jZXooCQ9Ya1nzS1CxLoywvIp/OVqEOIqU/+1Nxro7gSFXikOFSV5qheJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757257795; c=relaxed/simple;
	bh=nVT2H1vA9Zm9nG108ZNGbMIv/5+Haw2a1anibnhDN+8=;
	h=To:Subject:From:Message-Id:Date; b=OmG289bYPm9tp1E9Qiw2wjD3D/9ANZA9sF7TJw3R68UmX9t2Mrb88iN+PZTXx5qYhjtnmwMjebz4VuA3jVswzFgf2bKnfT137orK4cPSMsvlPDG9xA/t1Y+VLdlxYfpKy56A13+CufzxyyP+at/c/vrCdXwQcobWVEFgLSynUcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7ghVJPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7ghVJPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEA0C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757257793;
	bh=nVT2H1vA9Zm9nG108ZNGbMIv/5+Haw2a1anibnhDN+8=;
	h=To:Subject:From:Date:From;
	b=V7ghVJPjtFi3HdlwGnkckHVe650q5eXe0f7lbHpr2twoJyPKL8EZVHDvIP3Gk1nuN
	 UJj9JLhBxdK/+EqMTvrFVNL8JbEe0Jxd4dK9/Ma5XXp0KgITg12aujSBEnrL2DNVnP
	 OZZ5zncR0LD0aJrQHnBy/JKmL37KwJJeoPVpQAcrDEmYq3OrNI/3eGoG/t0hmtDIDi
	 oMiInVOse1UIIy2a7WeEsopEQ3lPmDEiBzSdNAG6sP5qd11q3fNJFhinNeUPCVdmcO
	 1kLVneju64fMETpBYi2gUnU8LkDLj1do0fRjE9f6Nivsoj97Ca5CuBSYLlC7OdvwvQ
	 e7WLFCUXXEfvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE58CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725779357.7747.13836338607256244087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca4ddef4b76c7f598ae97a95c2b984174a2ae9bb645dbf5a86b01c44e39d7ea
Date: Sun, 07 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757257793
