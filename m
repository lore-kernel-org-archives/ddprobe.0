Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A59D883F
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765493574; cv=none; b=U73fo45V3Pyi3lfrIMJrupvgvYDhisBEmfSTNsQrw/Q3d8uppvo2Os/CqjycFisPZg2nG42PACIDCbqVQD4U4tKkuBq5cMah8EzeMIlOHGGOK1ngONfXJxMHw22F+07+mPOQ/z3MCkMUqzqRz0bUuy0jxH8t6zRMYLBF5Yq4rlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765493574; c=relaxed/simple;
	bh=CymPZdIOKa7uU+PHBALD8lo6JMCZgqykMCt5INioX0c=;
	h=To:Subject:From:Message-Id:Date; b=T8424NQkLNbkW0+qR482h2i6z3kKLwf4mlpYYuegtUJ3gpbgkxLsVUHCnKjt3h29zxzyEoRIzSWo7WRn8J69GANWBQUwRxbvuAP8o6vCNTKue8p04Ku3s5Ems+Mw2sU4K3HwXpel7ITvCnBCEigsoocxy/JY584gkDvVsQP75B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGj0LkpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGj0LkpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C91C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765493573;
	bh=CymPZdIOKa7uU+PHBALD8lo6JMCZgqykMCt5INioX0c=;
	h=To:Subject:From:Date:From;
	b=qGj0LkpMPecq2ktZo6h/sCcL+vqWTFOMjvdZer6lwgZOBo9sspMkgkofYGVlGS5lT
	 TnEo/WU/qERZylnA4SF9NFmSMQi3JK+qVPOOiVi8H4+AH4Y+kUZQfbEZj6dQa7BdoC
	 Xg/nZKpsZstSxnA13SqdshvXte+TbfWvRdT2jrFzxSUitY31AC/L0chy1cSHYZRYdR
	 ljKDvsH5mXN1U2glh3pH3mHRTb7knF7lqnrm5lpEro27tSuEyo8KLMf3Ph7VLGRA8R
	 uJei1F8lMU+KFICWJ8okRGFqbNB1pbJW5IkzdtHOUc6dTcYjUgS64p+poHYsEJ5tOq
	 C/7ez/vK6+AMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE77D43359
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176549357362.29442.6884776660680164145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db237a067a182be5b18db58246d16156d8c1a5fdf69e8a5f6a2115728274b971
Date: Thu, 11 Dec 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765493573
