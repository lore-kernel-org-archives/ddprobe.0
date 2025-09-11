Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260631A08A3
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757632194; cv=none; b=ngLJtGlROMIR4VUfyuY7gYFMc7CrvRmznueGCra4aCC5NgmrjeMOn/xNbiowJwFHFtWyBoJktxJtIzYEaOJ2qxTGl+3ysnZFTr7I1xoSTT/uCbrYlC/bgQsTTQ5jqvyL18jncDvhr8TNBCCEwZ+1yCwxMEXooj7acvH+/8rASGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757632194; c=relaxed/simple;
	bh=q7m7V3zvKvo5z+IoeaRaN6y+3kHA34Kf2cCIpYClnfI=;
	h=To:Subject:From:Message-Id:Date; b=Fc31SukJqGwNRigddf7DSsr0VPMdQHpzzlivu/BPuw6XX4iM4dgUqfGNIQ3vVX65VVtBAKEv2fRYysbEJN/nbR+UZTdXLWZ61WIWBe+4A7oAY5GstjBefEIHvkokuvspKlH3UUhnQuOBolIHA2LM7E+9oDoSPDH14oSWuySamUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8xVbMfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8xVbMfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0522C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757632193;
	bh=q7m7V3zvKvo5z+IoeaRaN6y+3kHA34Kf2cCIpYClnfI=;
	h=To:Subject:From:Date:From;
	b=I8xVbMfjEEwELQ2D5nLoL41krtGW3iS4O2SOk4i59YMl8wrqx18u92smNzRKtCNKP
	 5Z6SqInGZ3RWYqA0QfJf93bmLmjjybu7llvI7faIQs/iyZlOsoYYyddQJ/EEmjX9HI
	 eEcydght872uO28XK9DRMG1K/0RGhhPaT160RalRIeapVM5NuZMl2CcHiEmJxVywhX
	 V1cRlwJVvuRlEByS2rD3Yu9UFvPq6DFwRphNnarD64UI930Akkc+DV0isjGyX6ucE3
	 Kj9rAphwAn3ru1Sz+YnCpqnfVAfP2p62vlHxF7OrvbLmzyGLjGGLZkrep+m5cdepdC
	 Dvp1z758+X/lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E63ECAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763219357.1627.17412448353884929033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c6b98aef792dbbef9483dea6b22f29346faafe97055fb8727fa357a1049e7d
Date: Thu, 11 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757632193
