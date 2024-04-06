Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13433482C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712444297; cv=none; b=Xam7be68adQDz69xZgKEaU53afkV1lIJEb+4ilGwwXl/22QjMFPbtSyyfnL6KzA9Lhx5RQJtdZlCohzyi73cIjBIDcfneiQ3YscedMl083fV4D/I8qgykMM+idkSlRmK1f5psNLROgukMwP+4+kBM38K14HUC3d6dt4pzJMD2ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712444297; c=relaxed/simple;
	bh=m8qLBAwwa18JWPJOMHQ03b0xO2ii2CVGwmxV/Ge8PDk=;
	h=To:Subject:From:Message-Id:Date; b=idffr+mMT+eBGE4PY8Gr76QMtCGVve8TAUSnH9HJhuMeICLP3E7N3ktFnNC/KpsQDr4DVlwQnLwLbsnDCEqW/IxFzyLe2n65idUqm0gzgkxw78krOPIsHBdGA9cOglSHyE5iB3dyJOximLruxCMnviMGt+Yroxtzg/PvojNw4sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCp4ly/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCp4ly/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85FF0C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712444296;
	bh=m8qLBAwwa18JWPJOMHQ03b0xO2ii2CVGwmxV/Ge8PDk=;
	h=To:Subject:From:Date:From;
	b=sCp4ly/Iay8nGIKOYS63VObfHLuCx4Q4YnEEHscLA8KVeBL87kv7O/hFNC/6cb1J8
	 ZaGs016ie+2oLNd9QCetfEd78HEl8HlFLEE4HTF2tUEnWBaQxFVuDF8mpfDZ/EXfcZ
	 x+9/nZ+ke9oOKk/TWeU48+bFNafZInIWRrHXodxD1JDZHuQCXdU9X0KuMdz6gKapAg
	 r4DC8h2tMLbalqxzcoy2hzOgFEQmXXq9asIUmf60t/0CiVoWqPZ6OF/CMoHIC8mtkC
	 MgiBpSSt6PFaEmjjOn6grhAtvcyalqV7bvs1ZlEWAXgAmGQ2oPeynwGf+fFQ/k30iz
	 c3hk3mx/Lkq3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70BC9C67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244429643.7894.18220711349344502104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743f4c9eca3c0ebfbb16969a6b87db20c01d7ab17991af5756db47b50d652cac
Date: Sat, 06 Apr 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712444296
