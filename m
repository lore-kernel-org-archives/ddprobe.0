Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10CE13A3F7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755652794; cv=none; b=tRcrRgR0tiY/upvmx9rrVWWGkg3TG+2Qgksf5ijyMMeJZqadKHFk3y4aqtPqMSN5gfYBXWZreEHHzjYRNzQoETchQc2W1/AQrX5+Nvpl3DQiFTCN+UNmjqGMwiUs0OneARtjADW+nfj7DxEG7r2OwkPV0Fu27ZTWUDbnl4VCnhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755652794; c=relaxed/simple;
	bh=y+IRxn/fpBTQX9v3N8HQ0TJ4GIsNosB8EdIwPJmoJUA=;
	h=To:Subject:From:Message-Id:Date; b=bCRhqTOKB39ayGEuxQvR0B+K5WGwU/ukyLmE2ODFhb+lFRPq1MSurwBC3DxJ8vH1/1fX83qzvAcG0uO9mIXTG0h6ig7IONOv5d6Yy3EmIRtHxRrcso893JcgyVy9Is+dIndzU5qv6pJ3fKi78NeusMuzNm5vCh0izKwX7Tm/ZbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1ShOtdp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1ShOtdp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B7F0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755652793;
	bh=y+IRxn/fpBTQX9v3N8HQ0TJ4GIsNosB8EdIwPJmoJUA=;
	h=To:Subject:From:Date:From;
	b=n1ShOtdpECA2VzR1EVqug+HsVetqRCOhy0x3Zdua6yNHXOFCv6x2ZDh754h944dVU
	 6OblI7JED264/Th199tzwlgBzsS9+tdPzoWf2kxUjRCjxxINRgTso5r/uoW85KnC2/
	 xPsskhSKsR7wHieJynlrwNEoNTiqDJ/RW9nZgWkxYxBCSqHHLUTiG/VkU7T1JTSVnY
	 h/er13WHJzdJeSNWtgiw2CgWfRoRVIVb45nyMM+GG01FWxAhFowLfNUj5QeetOtP5s
	 0PoweMOEE7tSTAbNO96kaMmqmL4Z2y8SYKHNQkJRYPBb3LGiU3VhUX88JKIbxUJ2aZ
	 cC0qUp5ojwVZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA2FCA0EEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565279357.32417.10463613327305799923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5850643745a03a922537a50e56e007decff2deafdc02263eaf14d7b96a51325b
Date: Wed, 20 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755652793
