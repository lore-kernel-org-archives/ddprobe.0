Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0823328727F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770254634; cv=none; b=tJuV3yJYVxaDdlw7e+KAKJjWDmckGu3nh0oJDHIQxUd5Sey00SIxqEgU1WSMQZpQQpW/B8pSFONwCDukjuhevtSGnlpOGWPoB6XMczQA77gR3SAqrW8xpQu8kH4b1FafLVINgeHmM+kpYg6sT2lP0KL+FXL4e5vugxaw8sf8zmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770254634; c=relaxed/simple;
	bh=06VM058HDDzKvpki71XOdn266Q+PVd0He58y4LBpQOA=;
	h=To:Subject:From:Message-Id:Date; b=tcjDk/RF9z48o6LiKEYEIYTx/QPxcFEzRYtogA0YqGCHgYoVzCkzPUYt8HFe53pPah1nVn0ak4TDkTiOQlwU2Tw0/1wQY4jd/dAdW77nR487rz0KDgiziImjpfTwSuNLOmU2WcK1cSYA7PLP6XgsPCqVLcdoxqrsjp4R6EnfCco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVyzZTzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVyzZTzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43C4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770254633;
	bh=06VM058HDDzKvpki71XOdn266Q+PVd0He58y4LBpQOA=;
	h=To:Subject:From:Date:From;
	b=hVyzZTzSzBRXn966ERdWFGgDPEkGDWPQTiVB600lPupM7Bmg1QbmZQ8GOoTzoBCcs
	 9b1/o8ys3/1t3V5ccVo0UaWHlZ2xhqSQqFpCoPBPevxZn5sKkoFTEmKLD3wyS1TjX5
	 ijAMu20g242rZxQA8djk+kFelhR3S4U1ZngdZrFZRDBkobQgGeI43DXp3mYyzq1Ehy
	 9JCgszJoA65HK9LnybOUhagOnFIomNDSL1xPtwXMlveO8wlzR+4XUO9wVyGZtVTKC2
	 uI+v6tqu8fxPv0fMaouB/CqL06tU7Wx8o8+DV04oZvrOU1SuxZD+KyczWdYiKVobO/
	 bSl5dKwJ2dOmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9343EEA794C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025463359.17158.17399297947264782602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305ce30f5eedf0e46ea46e42e48a3e5bcd2b0087acb7b52b45f5cdddd9bd8785
Date: Thu, 05 Feb 2026 01:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770254633
