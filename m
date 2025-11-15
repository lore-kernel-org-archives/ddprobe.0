Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413DA13C8EA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763221194; cv=none; b=QWZkxWsqEycV58vMcTGPSMbn9UkCM08L/mNi7lnc/4t8Rq7LHxK7VXkn/kK/KK2tP/QhwJoWyciZcw5pAT7Hlbq0if/p4770tAlL4C9bsRikCf/uNzxA3YoJbrUkLRvn0dlSv+UZmHKb5w+8OESzt6scuFrPbgBrAl9br2vJNK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763221194; c=relaxed/simple;
	bh=XV9ByLsjEGnjntD1bWl7FS0+TpE4GrAD0TIbRYowaac=;
	h=To:Subject:From:Message-Id:Date; b=JEmVFuymZDZumXCa3W/4/NY4a50d61FepYXkOsh0cJEBS3fBTpsuoWs6bot5//Hu+y6X+CAqZ+PbNtVPFTmObBsRYQ38Sbyh7h1Spn4yfyI4WNegq8Hbjh78CGyCUt4j+2gb8Rjh3h8XrBwaCoo2lCKx0r2CyKQtvi+yTn1iO9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nT48ZH0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nT48ZH0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA11FC19423
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763221193;
	bh=XV9ByLsjEGnjntD1bWl7FS0+TpE4GrAD0TIbRYowaac=;
	h=To:Subject:From:Date:From;
	b=nT48ZH0iSETZ1cbpHVXJnyx8NqNfL2cp6SGg+ysuEfg7sbvx011bFgJwCQORTVSJQ
	 9EsgYqpKJLmDbnMfd1ZZrxscz2WpYOWE5HBCymmlhIxxV0qJG5R8cGhIQiXg/fD7IO
	 tBoxW5l7fDEU22axvs//SzOamOrVekD3XICMyuUWzOYvjBTPfG8Fgjd0pIXM7uJlb2
	 emaFZZdXzPSUvfLeMJympWilg5NgF7tFUDe3GPhlne+bIWk3IxSoYlYff+lE0v24de
	 yUtTJXzM/RxKJgVmkHDkNfx3XHa7iTFxzuJ6sth80up1C1TsNvbfBiFdnywz5pPyk4
	 3ATMtqYFEgL0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87E1CEB2DA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322119364.26932.14691711734896272527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6528533c4ac3a9a0caea7ab8fb1676533adfe9b8b301228ed948e3082b37bd80
Date: Sat, 15 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763221193
