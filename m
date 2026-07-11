Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B1425B0B8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783755514; cv=none; b=pEL6XKD0EygQvwANiNIrSb8MYToKbYjneV3G7FozEqeYdJuXjfRbWk8tsszFh8PVcO0jGvdhJeAIqm7GnhYVsgbLUuSA96mzzwxf5VuYso53UfYfasCci7w7FTTwAYhbzbNQzUOwTLy2gpiISqlaSFRoFZrsz2tpM4krGvWZcOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783755514; c=relaxed/simple;
	bh=kVdwtlaJsC1zK2Iyr8VnUbJyUEnvYBfVVrL6EVwB0SQ=;
	h=To:Subject:From:Message-Id:Date; b=dPeCji5R0tgw6y+HTna6xP+DqteA6bgAsKqJx3n7WZagWtgr+qrfVk+QfSbw5ZcDf7FoQy7U0mtKQsqbhg8ua7IXLxCJ6LkJUu81g16amRRN4HbcJsRTr4+htIArdvJAVoHA+4bqN5I/a11VPzCqr9nopxL5QjsSAos+JnChmSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWiuRY2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWiuRY2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7BCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783755513;
	bh=kVdwtlaJsC1zK2Iyr8VnUbJyUEnvYBfVVrL6EVwB0SQ=;
	h=To:Subject:From:Date:From;
	b=DWiuRY2TKJxnkw+64yMHQaTMSyUQAYkfHtdvMMTRMn4Jj/RDy3299fCUAx60WQMbV
	 QpbfNd5s3tWNlQDX2Epu4gnIgIhP9gDFk3PhZLZJ29B4R18fUk3sAJchi2M3WvrKyp
	 1FZ9UUdKzgytDWRp2pfPHVEO33T9X9UcTZ/ObkMZ9hfnm4hojv2R8ANSexu5k70Vn7
	 Wc1NXG0gSkSa03+aeSUAbpliOhMWNTrDFjFZDs+By/tNaRbVI3kTDLd2/CNOZzIh2J
	 140pMIxL84orPStu0DNE00oQOmY64MnaJKr08oYYGnQWavJTJkS2m9i7umBLjvURfb
	 R1Djq4dRmlaAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6D3C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178375551368.23080.17074816664589568994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c855b5b3bc5599408baa75c6c34118cacb39fb0c40fa0ccf8c163e3c2a5eeaa
Date: Sat, 11 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783755513
