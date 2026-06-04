Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DAA285CB3
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780554274; cv=none; b=JXwg3bQAituV9P94pfiSVWsQkXSIIX7cbVZhdlxmeo1SOUpkoDOLOCZA0I6GrQkn9cs0u9xws31uuTtGk8mbBW9cm31aRGRxyb2UF3UP+l2JQAvXXu9MsKlwyiXUilNV+/Sln/bt7dnxasFv/Enp2eU0Z9B0f+CsE1TNDIC5obk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780554274; c=relaxed/simple;
	bh=oWsv4G/XSuynmaOYBbQGMisE9GXso3bY8HQDoK5lXDs=;
	h=To:Subject:From:Message-Id:Date; b=rY1h7Dd4NS3Qyz91vdcfWTJfjb9WeGiTADh7j4IhKoTSjzz4w+5H4gBalJTsn6prqJ9CXyFvz0PXKo8thK/BZICI514bJOt3KMxxd9UPrzLfl8yp/fT1UJybhf1UElOc83TLeqi1BhymcS6XNlMl+eFdQbScsG6Vp7bu8p9bmd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTtwrLnq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTtwrLnq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19E2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780554273;
	bh=oWsv4G/XSuynmaOYBbQGMisE9GXso3bY8HQDoK5lXDs=;
	h=To:Subject:From:Date:From;
	b=NTtwrLnqLYlf4CxOckEIMeCnz1J+O3WRXexs67YjcypLZqswPj2LmlFPKdlSEOLmj
	 zjEQfwyBpsbKSYDLVaOoKDTHGZm33pG+Ypz97Wgwdhm33mIt29qwyelSudPCRLZV9J
	 nDQUQIANmF6fh7hRY4UUUJNSJQ09D/nCBrMttfPHNWaFXcPmlbHdQfsES9poa5l/2O
	 8sxL/4Bina+5921pG5CUiGgh+7iEnhcBHMr5e2d87eW6EIca7Qb2axydZqd+Bu/byu
	 cTTcx2zH67OFvlPdyOICuqHj8nhOie/IwudcJge5phnQ/FvTz9zgFFh/GR8fbqleYz
	 epl9VxPVPDOTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A938ECD6E68
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178055427368.16411.13353364785122086606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6851b5e99c99e920b04ed961490c1fd664e62e08cc0eb4b762b6565ddd74345f
Date: Thu, 04 Jun 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780554273
