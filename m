Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F697BA50
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743729594; cv=none; b=PAio0Oq0OJRjSnK5GOFGHYmAYY7Cx7kOQT4kuhWSGiEhkk+VV3uxhZLihNdpbjzMAybv7WWw4W8pbDgSC0tHkBEe9R2uEJXQFz/b7p32m0m/ItVvS3s0sXtNRvbRS7HyzqIStVLxEwb3YKy8NETI7OXzgmptVIyw/2kj4wxX8JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743729594; c=relaxed/simple;
	bh=TPOv/GxXQ0MP2CX1CUz6nC70GSsRVbqpN9VYtQrtz2o=;
	h=To:Subject:From:Message-Id:Date; b=pk8GQf6AqyEd1nQikPgjEOvMvDimBcBwew6K3v4J+E6lPh93kecGx/sWH4phUUTygXMX1Jg7TcJDYGT6WdPcFbnQved6zwnqE5rKRZjPW2rYWKbtuZHaUzhIyTzoXF3gN8ncvQa50Hp/nscZ7ASZzPSpyD5xflCx8/myIufck/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3Mcn15I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3Mcn15I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2BDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743729593;
	bh=TPOv/GxXQ0MP2CX1CUz6nC70GSsRVbqpN9VYtQrtz2o=;
	h=To:Subject:From:Date:From;
	b=u3Mcn15Ijm7zzivndvLu9ie92YPoOG3gyNbzLlgKrOCyq6dEOiIcE02sStEJZ8h5i
	 4hF6XyBEAJN0DPT3BIDK95G3yJrdNkXd/LqAvj3XC1+KWfxR87aksXF2PEqm/0AZCT
	 Y8QE7YTfM+tW4GeRiae2/To/cjnRfx4Qa0yCbCRFMklTOb1jfN8itSTVD9NJb8gwNS
	 eDx7lv7S1/Mt+7uktDFq2lcQ+JOvSearWta8M6Y16DjVpyLtX89jiFUolZefRch11a
	 qRbA/+bTeuf7SI/hT1spHCmi6gJdQaHO4mdZJUfMupqRkaSG04y9q5BNM4WFSMsvFZ
	 5PUfuJ6mvkwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E30C3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372959366.20055.4356365089170572762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723e40a124610880283efa245bc5df730befc32e0f13fdda52404e19b927ccc3
Date: Fri, 04 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743729593
