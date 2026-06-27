Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F65A36494C
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782564514; cv=none; b=id2rNAUkowiCqnL/93sOWdrvPv2Z9kN4MqHmeBcmQpRfsw6C/pmhc3fP/M/Rb0y5VBFym/SnwjTvKcX08i8tdTjcWNBB50hBIX3OXQXaxlzenWvNs7p/5BfNiy3Z5i820KnlD6U0xndmS/Vj3iB6BYIiNL9ir3EUXqB31X/fAoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782564514; c=relaxed/simple;
	bh=Sx/7HFP5u8ctx4rkKJQLy4nHR0dHTuUkVDSSrh0BbR0=;
	h=To:Subject:From:Message-Id:Date; b=uqM5BkEWPvE50oXvGsOB1bBfD89BaK99vM+J3TYMZsXw0LOGD2TWPIzqvpSqiZVwlJ9r+tl87HpICNHM2mfaEdDQvchvhaYrC4mp6bUqEaO2kBlnmbhg9pdKwGEY1lvPy/4eSfKUpAi47UmvCaUBqr6GOzaIrxVC2eiRZwqHUGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCZ36sce; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCZ36sce"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1896C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782564513;
	bh=Sx/7HFP5u8ctx4rkKJQLy4nHR0dHTuUkVDSSrh0BbR0=;
	h=To:Subject:From:Date:From;
	b=aCZ36scehF83eDe0yyNqOQZSI4pHmucdmNeU+vGI3MzbS7ZfjCUFWZ18KBXhSMUxw
	 1OEVQAFJrEM2DpBhHcGHo4VjFRQidaWPgvx3wLKR2c0Nz1WJANut2/gOTzRMoN8WWx
	 aCM5OulpCvT8MeykJd1cFcRV46kshD80MCqPQDCG8jPSrvullYZEWqSIitzeImaeEh
	 hZV31i4PeqgrAu8bzMVDLxcSWeoKHesvNhP0mIOTR4CMmJTZgwsv0ZXKRy/saMgSyg
	 t3IcSajBrtW4Qqjuzqn15ZNblMAfDMg1NfJ9xWHMnAWgTUmFou3GvlcUr2ZchOhdea
	 AeWwnwhFzIdnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC84C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256451368.17688.12531277686586944077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d5c50e2158333638790ab23587b0c4ee681e3e81407c59a795a0dab79a57c5
Date: Sat, 27 Jun 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782564513
