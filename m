Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854B643A7FF
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790149834; cv=none; b=OXtoMaGovgSGWx4lzj4rCDlSgZcPsaj6UYRWlPzWIaQEKd8/6ljRRCQM3MvE5iWS9qmmB/9o0mVFr4ra2J6swHYID8253llO3gIkGi0/++zAyBqZXif4kkkB1pKnOh/IgRXOy2RojuW+xSD4hhWHnzy1T+bZ3rWC6/mXFfAoBNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790149834; c=relaxed/simple;
	bh=pWE+X4b7b2nBaHaT9Vv/AyGC+W5dDhNXXqV2SxCObDg=;
	h=To:Subject:From:Message-Id:Date; b=O7yR/ErRCXcd64NmDxDuoJPeAcDIGF84puIiXHTE5QbYONfHygXAeFdVzuwd0i+odcvSY1AphOmXqUuHzNSo14py2e/4/4D6cZupxO3mC+n8HkJR+xv73s6EeMhEsKvaCeq7/StIv9jPnFLuk1nQp7G84AioryuWENgWvQWqMls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWCRoXqF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWCRoXqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D5CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790149833;
	bh=pWE+X4b7b2nBaHaT9Vv/AyGC+W5dDhNXXqV2SxCObDg=;
	h=To:Subject:From:Date:From;
	b=HWCRoXqFDXqnep4cRAb4ruzKcSt9U7t2WbOHEAuq1eZUsldXfyTdmblbEmCSplofC
	 vmwVljVurH96AdOt8ICf1d7ELltz8DxVSebWsRuIJpV3CQlPxzbCWgMSi90nt4kLjA
	 GHzdjwluH6MysBroB+LrS2GXwLQuR0TP0d8PQ7ayNClP+ZNIYM2tRawbZYllqsRR2w
	 bvU7z8Oqh7/HEgWydNAR4lvN6GoJYd4fXCaGXoUv17fSFtTilrHleT9B9BqI4jLhuV
	 rSVotyqmFZA8elc+PScIHM64mXa19ByspYoweKHeKUH2FEoAXXaWBp3KPSMsUzCgDo
	 g8z/ZHFrkFpKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA50C982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014983375.6524.8049093157842694691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6597800810fd181eeacd36154718a8ed3fbc157c1a662e884772f18eadf5b2cd
Date: Wed, 23 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790149833
