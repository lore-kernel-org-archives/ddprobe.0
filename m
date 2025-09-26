Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243F825BF13
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758886195; cv=none; b=klQpVvv1I9zuGWMH+zx6QlaWeRtCh8ACypUSvc1Ur6s2I6ulttKaOkCCgKQB8EjlkbvReNO93k6LRS/vYwXP3SWVM4Yv/kLFcEwNtZexMFwAIFsVM/RvGO+na/4Oz7vtqcJXgtyjcoKW8iVEsDlwZayXs0I1n797NiDa/lTKdGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758886195; c=relaxed/simple;
	bh=qRTmKstRDlapXG+Z8834eXs+a96HhHiI4wAs7fAyprI=;
	h=To:Subject:From:Message-Id:Date; b=ECldEudNXOEJSA1ukfM1xYRuLTWc4+oLkblSbyEZIJRm/e87dAKrEQvAMwGVLykhDFhcp7Zoq5ahzzw6zAdTu3u4jqP3LAab2+qPgUMiSXdps8Q+iloBNgMxXWS8mUOrwiQdTLDyOXnXpMgZnngaB2OSLOgQxSck+/FfqsuzeKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5EWUKdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5EWUKdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4437C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758886193;
	bh=qRTmKstRDlapXG+Z8834eXs+a96HhHiI4wAs7fAyprI=;
	h=To:Subject:From:Date:From;
	b=q5EWUKdVJXfTpwoxSkqDf0Ki/ayoCTk/I1cQrgNkh6N1fJQ9pAV37aTHBN6B/uTCJ
	 agc0O/nxTurPboqZzmuvhOrzqatCn/FYzNqlE69Dy6h0ncvrgjChzvfJM+MBsH2jHz
	 8TJNyO5PziDVAZfm/S2DjfrF3DhtqSvPueE26ETb9Stnutj4F8OxTRY+HW1q9X32NI
	 ZgXACtFphbXS3xTspFNM6gMmxyZhwUlRz5zfgXFeRRyXaf4F/wewGTDvRBlDEPWqS0
	 6iGLJLPASWZ5YspK1nTB/d9S4WFP5VXjOo3zhqpnO1rF/mO847rlershLYUAdInooD
	 eMEu62fwjglbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCBCAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888619358.25298.15080726089790538107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b97262b328b39334dcf5b3ca8fdf3307506c73d7b0b877a887c61809cd8303c4
Date: Fri, 26 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758886193
