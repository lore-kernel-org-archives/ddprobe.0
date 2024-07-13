Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F00D137742
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720889423; cv=none; b=Dijq6JlAMRohckM4bWduOR82ge+CbN5a70bnCcfmlvaEE21/qKcp5E/oH/u96O4R3vfM+s6NeRPr2DN62n2eha7eN9EgtG/gxrk/XvrjhpUZf6A4PKO9mOIEsJCdjVJ9ccGeNqMrXA2uAXiLDpAdcaVGDOAKHd0ruIEhUxX74BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720889423; c=relaxed/simple;
	bh=r+ya1hI9DGkeH27ubdWWIykBQGh53UNLyctQa9ZksvQ=;
	h=To:Subject:From:Message-Id:Date; b=Sz7gX6Ahhjg8hv/0F3GG5rMkOaxGGzIiroTleHSRkFB78TkQmQAPhHhjcUtsop/nA73vhEHL09Gal3vfYWajJq4erpjN88fR6PLJnEeVx72t5fc4Vrws26BQVeEA3+ZxrbHEvnIfi78JoTpOYx/xZCN2mj5TRqf6MzMNDuXY/uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQOQM7kT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQOQM7kT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F80C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720889422;
	bh=r+ya1hI9DGkeH27ubdWWIykBQGh53UNLyctQa9ZksvQ=;
	h=To:Subject:From:Date:From;
	b=kQOQM7kTgPLnG+rPCyrx3foMv3pcR+JZ6ksI5QHCKPjAl1Rf0qdq3E+MlwsrZ1qvq
	 5xrf/r6aViI1/7Lmy5lSg1wvRS1d3b5cd5/1849hdWL2j3IpCesDCIdkOyn2vinBps
	 uloYIIwd/WSl40xp/k2e4KKyO9NdA6xF2AQtBHkXGr/gVA1IwTsNx8sOj1iSmMvHch
	 d/QpxmlFp5yJ3YxhGwtt+pqs/9tgzb7SoquN8oaSuxpz+hHtw17b79Pgq4naGpGL0h
	 Mq95nAkejj4rIgR4XzyU9m4bR40r0N0vSxTEMZojQZWi8TX7v8vIhMiR/9Fg3iFrjM
	 Rz3dF+ZejmbRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67C4C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 16:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088942279.13840.12594088209308385408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ab44f0a3c7f02d441d780c954b802c549fa581c0cc375167037fded43620af
Date: Sat, 13 Jul 2024 16:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720889422
