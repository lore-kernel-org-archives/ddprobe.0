Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363D13AE6FA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792255834; cv=none; b=gyiNr2MyoXY0JbulKr9cHwMtScmlq58Mis1jcUfKvm81rZD/fD5c7RKOdzvhh7GpnfFk2cprfWG0O/rlpup9TIkkmZB/4d/vv7DIeUNz6mzG43LdyPHxcF76Kkv0LPXX8J82kX85+XT23MkUwFuJ4+vzG1Ldqyh2d1iaNXR/pNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792255834; c=relaxed/simple;
	bh=soy6YfUP2FItcnvF/dW1qK0mqte26nL8qbVSbH3mysE=;
	h=To:Subject:From:Message-Id:Date; b=Mg7wTrgqktlZ/CyMpg56PbcqESd0PLmfHYrzapvmoOf5/UO2HbdJmoqadRV+Dl2hO+dKulCJjjwSoZCCv/zMOddZbiBM8hrYk7o3WyQzCBiEEMg3ARpVFpQAmQQe6FpXT36o4y5PIJF+LDeW8/CY8E3oJ1kotPCE9gF0feFCFGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBGUxUaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBGUxUaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D388BC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792255833;
	bh=soy6YfUP2FItcnvF/dW1qK0mqte26nL8qbVSbH3mysE=;
	h=To:Subject:From:Date:From;
	b=IBGUxUaw8mYlIOeSoJb0A5gdg2GMfr7moBu0o4O/DJzfPCigl+eYuMubWx4JsBNEl
	 hrFBtZK0xuakZVDmbcdqNPd3DXchaBlcwUUQ/xAbzAJSXPFbkm/MaloSADnunPT/Bl
	 EDArBshsCo9Yo0MwLYu26pMEWbIs4nW2tG7C7g11ee+oNomwqHf++y/0+PbQMPzShf
	 MWMlyKXb66aMCsW4YgBDPaYSD/xfpCO8qDrYP6S7p258o2RtE8NnU4bGrKreUb9lzB
	 J0yNpmwqGwk55cDr7m9Cjsn2OREJ+eUi3hYi9MAfHKbs/2eAzMKhFL/8DREp4h/DiA
	 6a5I4ylJhCY9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13B0CCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225583370.9355.18104872060659717333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c554615e5fc2f161d0ae1a5edbb629f8ec22fff8375321de3d10506dc099696
Date: Sat, 17 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792255833
