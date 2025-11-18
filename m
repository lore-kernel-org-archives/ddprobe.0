Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F733349B17
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763487714; cv=none; b=QInj5q/UUdROtRL8bfeo31MxLLX/FVt0ZeU8iMiuH0X9pV1or9XxUmTTMs305Nfjhkh1ZlW+rwgtpX/zRG64e+iCs4mb/xbKKDmTZliWvgzsaUWTmzJrJ4KdGijDZxwEgiaVy4id6zavbJANBJRKVf1W9vpK7r2+jU9ei0AgPww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763487714; c=relaxed/simple;
	bh=Fj9bZqNRS5xzUMdJOfAfME+gPRnF3pT+D2uAKA/JWgQ=;
	h=To:Subject:From:Message-Id:Date; b=kf7Bdquy+JcJ3i+3Tq+jKibrufWoCLuwOmM3M79dRGHikb01ZaoO7IhREkLyjBw2JsWKFB+Qisuu+VzTwDCpLa2vn1XuvtqsoXjAc607cHq3QqvrMG8TIgvLURt2jbKhuSFxtRcaIoMsgTxhGOa6gZY4BsmLb/aAeI3W1p8ag1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lfwk0p6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lfwk0p6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C6DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763487713;
	bh=Fj9bZqNRS5xzUMdJOfAfME+gPRnF3pT+D2uAKA/JWgQ=;
	h=To:Subject:From:Date:From;
	b=Lfwk0p6t/b06jV8qFB7HI6ehDsRq1fx1fXXA4Evx/qeYxzpyxXtntMVDYitFjyMpQ
	 y+q4PobLpNjnNb76cojHIO/1VHSOIpeV0X+Q44B2QXUBDfGDC5p79FbPf73C48yDSX
	 hPGscfh6aD4CyZzk5QWSckmn5CWAQ26BYL0m+En3PI4fMSy3xK9RShVirhL5qmWjdp
	 Vao9oPsF2ijQ6rL9GiCIAyTJrk1urp8Nlin5T5nnW0f8sA8iNoR2wsV29fFjM9BW9i
	 J7Hm4f0UxlrpJyOEVC9Q3Ub9OsoR41iuI5foExOIckUeh6Ky3O0pBEExIkh+ytOhyi
	 L7bMBBT8X18+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B7ECEE344
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 17:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176348771359.17414.15031709794258272208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d3b614e43c69a4c7f7f25e80eb5312c58cce81e19673771082ad349c743149
Date: Tue, 18 Nov 2025 17:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763487713
