Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526E72727F3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783663714; cv=none; b=HZxfE0IZsEUhIHwtEKsKT0Vg17UxRc+9goL6BtKp4w9IyRTcxP4i3PcQ/k11aju4RrTW7MNx26HhWOVn1S2+lmIfUKwa/Ma3BSrWe5Opm+Eln+AYJregsF1cV9NSG+QaULnZha9tjplmCkA4rjxyKZmCUrXBNbgeOKoPQUVbA6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783663714; c=relaxed/simple;
	bh=ReXplMnUcJa/fjin27nYsJQNntWI8IEelY+L0DL3Zi4=;
	h=To:Subject:From:Message-Id:Date; b=OGhK/TmdahJ6+TgiKbA6vGEWNpEndRPucttwuIXFgOwe4nkr4ZgPP4sC1AaSA+lBzZ5NClAPIgMJYl3n/wTzERxMHUGfhO5Mq3J95G6aKGOJRFPlWlB+q2uK/h0gMMK1AjqtG82zzMZuSwRA4VtgZcSucaEPTUbzbsAKq23weV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BK3+gA/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BK3+gA/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE253C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783663713;
	bh=ReXplMnUcJa/fjin27nYsJQNntWI8IEelY+L0DL3Zi4=;
	h=To:Subject:From:Date:From;
	b=BK3+gA/RHG9dawwvyCv/tkd5G4ilFPaJbJoFi7b0l7FtX/7tcpiVKyzzuGr6Da3HB
	 jYeCif/NNb+N12KtGk1t/WcWs1P9yPw7+k3y0/TE5td0uGmy5udZaQEfsSgRCQRPbR
	 CH9wa9tlJn6/vR+KoyCkV64iIp22svlhRE+HYgKnp16/pybn6rEtMj5Q1tu6r4G9EX
	 YXxqwvMJfXVqpb0Rq2GYoBVqNVcWSnXvCCSTS+KjSOzKldHTJ53VKtKjE+64hjxHuA
	 E/JlcvmQkEG5YxtyOStBeFsHMSuDWalkVBpHfPiAmrYZV/v2SsOaVVala+igan+v9e
	 JEKsFrjE5Q5NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FC9C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366371368.18690.1280196721335984228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1760ad2ba36e9149848d00b971744ed85ad44e65367f7cc75c9d354dec53392c
Date: Fri, 10 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783663713
