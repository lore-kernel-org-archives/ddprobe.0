Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1648E22A7E9
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772439294; cv=none; b=bluL5visDHfu6Z7/uB9B5mthpObYyiIjdMSuL6vcxl7AOLMsTXszNvI8j8W5usOfChMKwa+2vSuCIyuNpIb7SVuX0jUAoyfVEEnT0vfHJTRro1c1t56fjlnOrNtCaGzcQsLWFwzSE8n7gB9OT30R/RkmSWTU3pVfSTu5JjzJhtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772439294; c=relaxed/simple;
	bh=M3QSW20ibUlGfV/9WpUX148oacEcNUMBeAok1QoMiX8=;
	h=To:Subject:From:Message-Id:Date; b=ihCxhpDUAZz9Es62AWlDszF39v0LRbm5SL3yRT+UI020Px+LA40AyHC6NMUYaLde19zJKg2h0y+lUs6R0u7JA1/GOElMu4ln4O2DSVOD84XZ0PoTMnN2d/QMcSdpX2PEra3U6dYCwakD+Q+zU4zsnLieklmBDdhvf8k/Xmc9iKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9GxmhDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9GxmhDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D48C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772439293;
	bh=M3QSW20ibUlGfV/9WpUX148oacEcNUMBeAok1QoMiX8=;
	h=To:Subject:From:Date:From;
	b=f9GxmhDLAsqhARuNrtR4HmPR/7yoyvODKG7xnrhnI8AdybpY0wWyTXjddDCZXOeYH
	 NmHgg+3ktVb2x7aB7Rh8rG4gFGoTUSEAG3stgcGQGSeKOrpajWTAKtPUaI19+rbIyX
	 SDtAk5k6jroEd1eHxBQ687VXc+VJKuGryyMK11StTwjU3cRkmHmYyndMbrPft14gLP
	 nW7KovaoDDdgvWt5Fm4udgH9/kpIzFM72fJ/L1C0+nUsiNDZpMoW1tTqD0wAyDS3Qb
	 jUhYlgNRWWIGemHBo6VD8SAAow0XxjBMmUdXd8Mr/4gsh+fMAfygvq59XiRtMfsmDK
	 urSNeBg4p5VdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E2AD58E73
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243929360.15588.14555562474494236632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c27ec883b096d0629de4f927d9dca6c943043f51d9e2479e63667cd7332c1ac9
Date: Mon, 02 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772439293
