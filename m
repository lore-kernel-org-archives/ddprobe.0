Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9891A3FE27
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710920296; cv=none; b=jFxg/dXJgh41UQ6tqf8500NJB9P7809ihR28lU1OHNIhMQndjzCtNY9FUqaduQ5KYy0bry+wISVSMQNoRXS8FMeTdAMkG3Od7QKxpBoKegXuogkr2q9e2biU2TgvlXnKnPaaxGkcRdanTr33/iytHpsvhQLCAVIktOCistfE0SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710920296; c=relaxed/simple;
	bh=ducMHn0RuFa80N6Jnv2U0yiNI4Bh3ooEb/Z+C/adMF8=;
	h=To:Subject:From:Message-Id:Date; b=OvSDKbm3GLRzDYCsNaXP5t3Tcf74HnOFh/gHO1cauInF5S6DB0erXa3OgQ2l0Sjl/5cHwLf3Icb+lATVtB7ZpjAFy50778o/1KenQ05UnHVnvl227Kmxsl+idR/QG4v8a4feak1ey26SCjGwfinBIJu1A4Lsf+yV3f0T/JVi5GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCFYw3qA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCFYw3qA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ABBDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710920296;
	bh=ducMHn0RuFa80N6Jnv2U0yiNI4Bh3ooEb/Z+C/adMF8=;
	h=To:Subject:From:Date:From;
	b=fCFYw3qA/FhTCCYxBjnULoaKsuGxhNxvZpW27f+6l1R4fxP2/QbTPOTie5aUcpmtC
	 Ehwt5Mn9p2t8X/tI6LMTESF0D0TsSXfIX8RAIXs1my2Ue1i4ZAddp9vexmvv3gpoXF
	 0F3RQ1PAI2eQOxgJa25172+ObrkKKWTCHcz4S4XOX1UYsqbETjukq3SMLTvrRyfM72
	 11IpN0MWKkDshk2GbmgYGKQPpI2/rKSHlrjQMB6JRoimfSOFEu02/XE8r1+mQsQuHI
	 lYvUcMfa38ygQid4fMD64zqkUOjsMn97qrhwkcw6Mr5wfXhDBQvVeYJWg3zBwuoJ54
	 08UwYGI3puMUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9C0CD11DB
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171092029640.6653.1076863925997568931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb414af7091585ea21904e89ecca1f7f15c0070e13d7a5ba875ad58b10f3f948
Date: Wed, 20 Mar 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710920296
