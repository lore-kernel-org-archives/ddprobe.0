Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53677DF6C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784443714; cv=none; b=NZ4U8+80937IUbs/ol+tRucUfmKdCLexuQ/cvHDPF7hTlvZaNXpQtdvHatIoDt5Od/Gt5pDzCkw5IPq5hTofL033cC6VUYVLEzoUfETcBRYo0BWQEDkGu98PJNj4EYDs2UqKEe17daCZGZwlOfaNP20xaxSSOebazAMqfaDhlEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784443714; c=relaxed/simple;
	bh=gSBU6MZv9TXgR4/2Nd9/pf6lpWlwCeNQwpzg+jeT3FA=;
	h=To:Subject:From:Message-Id:Date; b=E6oI+AfxpeSy25GasuAOCtAr+QO175N5FkcOzukocaOlTLwV9t6s/DbokWLs/0kcr1ur20buhXNUg5aULOnokrE4upwbuMeotc+UDB4ycQaqccSpakqe2Jw7jSam/82w2OKIXgKMys0jCt6jGvyQYq+Uz+rUYqXgZ9e2qUul5K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnDlazCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnDlazCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB709C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784443713;
	bh=gSBU6MZv9TXgR4/2Nd9/pf6lpWlwCeNQwpzg+jeT3FA=;
	h=To:Subject:From:Date:From;
	b=FnDlazCvGJYpFJV7LCz4CFvnkQsUZ6IKP6oOl33e9d/+g4KysuolcA9Fmw9zxkOww
	 WWxe9zvSC1F8OdHq5JGBySKGZgk48zaNEKdy2Cf5pzPo8DxGaXxNUSYDlZFFShPQlF
	 qX611v/EGM5oeKcql8HkkXurPcZBgW/05DIDOkQHJ3ktZMjacq7Aceg70HSV391rur
	 LnM6QQTweyCdjehsOypjhcYr82/8jpafk7U2/ckRcFQLHmYXyPVRUWGInS/sDK5VeM
	 N7mCDGEbB4cncmdAieRvTcXJ98nAJeuSXWpdD574FeksYBC1CFEVniTcf7g1t3DVrc
	 /81njvdo4NKuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7A08C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444371368.28604.12997771472257094552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa47a70cccb1977a51030701a2b7fe11764608067c5512d129a614ea9b565b67
Date: Sun, 19 Jul 2026 06:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784443713
