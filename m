Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F120637BE6B
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788698435; cv=none; b=NdRNd0rLSA4LWF+wfNEd4Fprp3v1C08OoHcpA8WNfG2S2q35Nbk5UgQb4nmBIeD0psP1nMf2rAgyuhJuUnEKy2N5tgQErDddr8byuXXqpAgODue5i5uE+RjcUIx725zagx01H/aqx9a2SnjqaogAPnX5HxcMpPIeVRIFBUQY9kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788698435; c=relaxed/simple;
	bh=23NO4cwhU4ia7DuHBiXkXE/O7FYPnkr/Y6LAMCJhrs0=;
	h=To:Subject:From:Message-Id:Date; b=B1jzH/PtsBkz/zqbWuVeneAPo2sXLbJuvC6sO7eg519kzc3ybybL9rusmZQ2gglRHM4N/qNjso79/G5k/MGQR7hqy8jmIfiyM61red2ar/SglUWnYaL95zVGnEnU7UI37jZnjdCqz4ZLhb0UXeOUUveIT1vKTRVuEkBcv80aF2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byYXiSt6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byYXiSt6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF44C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788698433;
	bh=23NO4cwhU4ia7DuHBiXkXE/O7FYPnkr/Y6LAMCJhrs0=;
	h=To:Subject:From:Date:From;
	b=byYXiSt6D14SUj4hM0uHfyA6oWWebakwF09xKEOXSYBEmvlEiPic48szd8+J3sost
	 iVySgS6dFiCZnETSsSeCTP7mmyayKhtDHbhGtefp+TK9AT5vqjTezWOSJQHMkCZgw2
	 tqoeyjDg45j5eMdwxRi9gvVw2/XcoZQGdCagPtBb4IV09FIvRktPUUL7cB3UyiiO2T
	 SEM4NNopELGTpbLIm2xIPoaf0uBUQbCToSWFaxT5zjufyyA8TIG6iRmq1O8yjpGYgg
	 4hMGbp78Fuu6Zrcyar+nuXFMDK5sNHbaX9XZlxA5crygZlTztYNXB7BoHEZ224sEPS
	 QxISYsr6aFuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DD1C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869843371.3948.14642470221913951047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b0b60dd2d4c215ae362639ba9ff09b0e921a4cd98e2f45b29d8a139ef8740fc
Date: Sun, 06 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788698433
