Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9F2347512
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785792634; cv=none; b=WQky4HjfdGodcqjj25qork0vwiGVuu5bWS8vy8avLv843M+4SzVYH2Q0ERzqdfh864nt9FP/FMwUT+STDf/usJbwXfY3LPdxco9QI7Xew9RXFOfVQYtrSved0FsoHn+g1dNA077Tuxso6mUsCuv1Wdw6umyhFM5SXoU99eAGMhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785792634; c=relaxed/simple;
	bh=OxXDfPzqKpBxdJ9jyBMz/yqzS555r2FXKLPEa2u3KCs=;
	h=To:Subject:From:Message-Id:Date; b=q22xU+LrgrlLc9LzIOXTmxbOUobdka7Y7DO2X7ijHIuTDwabNwL0clMvMYFx6clrbRXeYDOqu+T5tXvNZ7WfiXcjN5VZ0NV6WoeYxqSpia0A5HaJwcjoztr58M3v/oUayirzerZf1YulSs90z0AEeZGGmbh2DwiY1Votv+t5Bsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1AajNsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1AajNsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F3CC2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785792633;
	bh=OxXDfPzqKpBxdJ9jyBMz/yqzS555r2FXKLPEa2u3KCs=;
	h=To:Subject:From:Date:From;
	b=B1AajNsbOYUV7lJ//KTqIX1Yf78AdoxHiJz2LvS8z/8YOS4rWwCKPVwB5UZDme6AO
	 sfMD1/JcAdKuAAJlBqRwtHJMxBqMX6yffkMQUEam7MhnHnUGsrgvkid85xmtpo36wn
	 X02sTnJotY3dNTyO2G9W6dsCBQKzHsMXsWhKYZx1K2+Ywu2jU63rTL0dqrguQSFLsN
	 ZlnDevUQAaueDGJ+C5K3fYrqlX2evkJjvCbCK3odfZ8ep6zp0pT9M35WrjpsSPllqA
	 pE5Lmv2WbjqBrU2SJYDXaDalpEdPZLulQCHcP+l0n/B6uHTmIvsJF9PYLumvyDsKdo
	 TxX61oaA1lH1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE6C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178579263369.18335.1000652738982519851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494225e6c5a9d8f9d341000306b933e0b9a9d6943dcb923bca1f7e9f91a496b2
Date: Mon, 03 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785792633
