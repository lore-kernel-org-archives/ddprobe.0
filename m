Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4515A1F03D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769334834; cv=none; b=QZS4ENd9q6ROspSK9IVoBgSvbCkAV5bpWU6SX2Gc71+dNBdoHmXWcjRjaVL7BCUOrvtkbrC/o9ke8mDRD5+aamzpdtO8NnhA3Stc6kFDddLlqE64UuLgVVG3VhaQMfj3brghVgHjbXurll34K0eQx/M3clMXJdBpD78NaN8llxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769334834; c=relaxed/simple;
	bh=5Lfb4fWWPL2qv2VmKWDYcXYNQ5+5VXyvVsoSU0ccm1I=;
	h=To:Subject:From:Message-Id:Date; b=AHaHqGIEnSj8ifessiKv0zfxl6E+PQt4MADeWneC3hn2aYNUp060wsgwVpQ5N5m9l/qCqaTSFR90bN+a4pSRHfcj0AHowOR8kVf/VpPr/HhOHhZaK5s4MRaVxUvPMDa0AZdY3X57lJVawJmyshrlsoMobyIaurqTXg6iZdxIvGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbFDfXXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbFDfXXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0838C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769334833;
	bh=5Lfb4fWWPL2qv2VmKWDYcXYNQ5+5VXyvVsoSU0ccm1I=;
	h=To:Subject:From:Date:From;
	b=cbFDfXXueaoSUGtbq21dQKMZuFEPQnOoiAylERyIfcHo/LeIhxWWWIDod2zFFUq0x
	 EBOcFyRGophfOrVRFnfe7sekpXRWTMIA1RCB6NESgzW6IWFtgx8xNZy+wMM/m5klma
	 yESa0UTY3HtgGOCQhCfW9xx+LkdIx5qaS/NQsa4BWM9OBZdBGHzAw9gbVVFScIyiAM
	 nPiG9RkYKZB3+mYnIKnlR99JHlz78T17sWq8Ci2uLURUo3Ba7GGIp3uEs46wQPePmS
	 XOD7mCxxg5prsaiJD8nsJ3yzWM19YoHRUwLtymmXkCMROTOHDljfRVSVw81PVLQZIm
	 X+ftey8fD1u3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927FDE63C9B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933483357.18959.265642080889324344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e95141aebf8aee0c74eceb58933e13d001d815b111ac0f36dcd0d04378506a
Date: Sun, 25 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769334833
