Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5247E78F2E
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741973934; cv=none; b=Wm1duqZWdYMpdruh8FT15hqM4n43jM1Li9Agplqfzydz6f6xKtIF6Y+mobPpETjhK1Kk8lafSnqsAVCiT0BoD/vLx9HRl8LBgVsiLmUXandzUHkZ2UbBYTeLLOcfP/1mPnsNpFNDQxbHhh4ift2MrC5UiW8AJ9AytobAyf05IVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741973934; c=relaxed/simple;
	bh=P5lbvSdPgUvK+qgx28UahA1A11puENjdQcijhdB+1Bo=;
	h=To:Subject:From:Message-Id:Date; b=WMnzuA36ogv8NziLol6iftDWYCuD8tPRpHHh5W0k8eeGRQQJVcLDVsIRmIfzea9+lhfMVC/JMEVxkSn7k989oIOSSdp99Js5GEjnErwKIZXDQTYQUTfICMl/mluRZ/EgyfihHiuL6lq1KwZDtiELyZdtPdfPatXaPBapwgRR6mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWPyL/jY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWPyL/jY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B659FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741973933;
	bh=P5lbvSdPgUvK+qgx28UahA1A11puENjdQcijhdB+1Bo=;
	h=To:Subject:From:Date:From;
	b=iWPyL/jYBo3z2aXEU26f/R9FyW3M4dFG/AKNnyR8UcelYIC8R1nwx6SyUMxzEMa+L
	 mDWhRKlgxIt7N6HwhQa/LC3ZDmVRrmx59DRZ5g1Iv45PQs+FIJw5LwzkYkso1zobsy
	 VJZlTdGgkB68GGgfjZNUah7elljEwoP92WYZqk1eVIoc0vDOPXzlUiD1wSbmwfzvuK
	 yOVgNoqCUvpXussTaYJOKS9yMdQgptO4vMo1ez57GwYFo9q9OGLx8Zgrx9aJUdY+rP
	 GPavkvgOVs8C+vANFPCsKdEFSFDVqbElYh262gDtq7l8enED9Uct70jcr07m+Taq3F
	 FctNhoLORD5Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4CC2C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197393364.11980.14487584255685165609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b59915ccb9a641ea5b7e366cf32b30fce3ec78270465b7f510ec88c61fee89
Date: Fri, 14 Mar 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741973933
