Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E85217BBA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717856843; cv=none; b=LlU62GonquI8g2EaPxOavlev1zCTl1LplYcfiSDGaILH/rFZSl+ckYxzh74ZqhkGANEjX72i4PosBkt2cPbd97iunjw2SttjbkPlEt4aoZT7ylqFEE6wBFwW2IZyo6MN3DScvzbf+7dTISdI8xYUmqQgtN9a9DBJELtXB7agc6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717856843; c=relaxed/simple;
	bh=00K/IZKzCilZ74/l1nX866eF2wC2lAEiX1vD+xo0Tf0=;
	h=To:Subject:From:Message-Id:Date; b=gthKQdVEcWkvG+BHO1tw/QE6EFoefpWe2mmXkjcjL9gge2lAoIu1ABvBbgrcbapS184UlTFaG8MG1/TYt75WfBelP8UBsUvnaadMA5pNkggMe85+KRnLd1owqj0ZfM/KPAxubzuPh8IBhTLGoUtyAXsY4ET7gb+nXYnpUSPB0aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njOdSt0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njOdSt0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00D1FC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717856843;
	bh=00K/IZKzCilZ74/l1nX866eF2wC2lAEiX1vD+xo0Tf0=;
	h=To:Subject:From:Date:From;
	b=njOdSt0bAo/F0KJ6XlmLIKpO6nV7sBCs3kFCeqjlIpjQtXunm2iUMQq/a7xX0KFY/
	 cr7OZh2ZHjuDJSbUIcJc6hEgr/qaYPJVP1FNPYxPs1X+039WWw/CdcIC2/M2QWSqBS
	 wtilNjKK6a7Iq+bOPXQZyveL2xuNgt1psbdJWAX6qHA690cT42yIWPZeNsJr2RwmNJ
	 Ze8vjh/zLufAnMnofT/wxqI8gBd3Kz+HDk4RNBEqHWR5ha2Xe0mV8hlglwsHwxScbs
	 RW/42A9QSd5gEnG2pLwINrMsG35zYPazegcYV+Tf7OkxkcN0I5OAxRugeZWCEFKrwX
	 kF9jmdA/6ch9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E119AC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 14:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785684288.6531.15499673601797988072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01612491647ac1db12c892dec718c5d02534b07fee12d98ad7825cd2e9004cca
Date: Sat, 08 Jun 2024 14:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717856842
