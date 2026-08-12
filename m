Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CACD453A28
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786542035; cv=none; b=JsMddHXu3aEMRu3yBDUlgSPO1UcJvtOay8U8e1bqeS25FZTa1h7qDpSucDDJj48RBrGL/uDdZKpF73SL8dZ6oouXOLuc1SaM2DZ+GzW9W+VJKAN4pTrCWIT5h9AAVoS60ouUXTdevZhLkaAHWIaUCyR9XZ30o0E4tR5/anCJzmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786542035; c=relaxed/simple;
	bh=vk0M6s0/7ibUm0h6wsbgVox8V01zTH+aC2Pn/rAkZqY=;
	h=To:Subject:From:Message-Id:Date; b=i4hZ58KYqOV9eIUWakwME9AXtrY54Fimbb7JDbYqX5rpXyW7FEqCKcm2SiSCNFBNX/enPIjOqa6TvbOe8aqronZRnZSUlJrdCCd/MCYr25fRWtjLx9dTcVpVhy2JL8DJqXpH9zm36vNFcghO2SgI5T74FLvoztIzBEnINqfoz8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgG5tFE2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgG5tFE2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05BBC2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786542033;
	bh=vk0M6s0/7ibUm0h6wsbgVox8V01zTH+aC2Pn/rAkZqY=;
	h=To:Subject:From:Date:From;
	b=lgG5tFE2QO7uiPqUOW7xwDGIch9bwx1dA1y21Jmk6gc1/wNu81VfKVg+mxXGQNXja
	 mvCM4PrPL6EdIgUq0rB6CnGAu0oEjKkn9Bjsw72U15cL2TL4BlG5X6rMJxJvaGOtC0
	 8uKtY0/PJAIAbzZMWEvOycamw87EyvK19XZ6njkZYJgWCBSQ6oaOzjSbmvXn5hmCRx
	 VlCSPwCVediNTDZPgBgVS4mJbYdmAlHwus8T0pmUTRyUc1PVdMCPoJmg4X9aDXrrca
	 9RgVzszq8pdVz1Cgb9xltL0HCXEufCbSKGSJnNsOd66vMTUjlfmyS0OjVKAD54j2Jb
	 jBjw3oL5cCpgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD94DC5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654203370.28024.16349469360282081632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dba1919944dfc5eb9705f7b55c1cb064bc3cf5c4bc443f17276fb9f37c713dc7
Date: Wed, 12 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786542033
