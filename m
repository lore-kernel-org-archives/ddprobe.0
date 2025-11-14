Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0794C2DC333
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763145594; cv=none; b=GGgoZMo35n9p+68BpfEu+5r495v90zQMouHQ3Yqg/ABOHx3EpYQ1xWtxh9JKKq+40f6rksfi/zhwdxhtxKyJT7jZgdjZUSN5IE892knthiJSR7jgosJVqVMrabNQC8sjOF7JB22+bLwsYGWELe7f7wK3DMB2NZovK715f91rUWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763145594; c=relaxed/simple;
	bh=E412lSBEhDo45RihSSaq85I/PP2TsBUCl3LH5bOumK4=;
	h=To:Subject:From:Message-Id:Date; b=OYxsBXKOMKm6tY2uuyb2leKOuJXByjzU/VNADDQ0jy6KvIbMtd0pPMJMeGymLDv2N7445TFrz+APZ9fSAK9HeiwN8XBkHgCaBIWvSzSgBwij5+RGzuIsVPJZWMwNcnAcQgjRU+cETofzWJmEFGL2HDbFKfBPyPOatQjolzgk41A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3Q2fPd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3Q2fPd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4703C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763145593;
	bh=E412lSBEhDo45RihSSaq85I/PP2TsBUCl3LH5bOumK4=;
	h=To:Subject:From:Date:From;
	b=U3Q2fPd/YNwOvnpSZ7F05FIolZod5X9E+M+DUK2ze74aSN4tmsknBCyEgMQB8axMo
	 1ws3Vt4jMnmuchwR4l7wMdQW7Wuki1xN23HoSz5OtCwH8HXD0eB5+yz24XDi/hnkAX
	 u4/ZrjHFpmDK/vRAUsdfpFHPfEbspxH/jblYAfol1Hizrv3O+fEAkQsEO/18l1HPnw
	 0aVFDUivgSFKbenvjRQn+oMgbeMk1U9qQ0IWPUfBcHPv49rfZgCKqd71s4XXaBEI0W
	 WjwOOfT56D1o7LULXXmk6lXthQPudNOOnzpZyWGPIQlBjQSBMG3xjybnxZ9y3V5yZM
	 IwksfLBjKTkRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BB3CE8D79
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314559358.11275.6739699885161650192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98b68eda7d9218ee0ccf8a58dcb3c093ed96dc85d0cfeb858cf517c5785d735
Date: Fri, 14 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763145593
