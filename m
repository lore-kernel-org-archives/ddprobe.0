Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C837823A984
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763045993; cv=none; b=j/GFrJKP2WmbtYiXAulNqFtlIFrpN3BmODPKifwOWeYItKrosvAIWw0LkRqJpAU3wTaL2cQPCI0f6X0BUbaQjeVm8Ii9hrNs221sGlgRuScTKJeCp5BvKtjDZ5EsJEQlApzvkvcdj6Mq5G3aNDbStczm7VEeHQpsz/L8FHhU9rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763045993; c=relaxed/simple;
	bh=MkA/1FQf0q6eGxmcHXMd7wbmsjYG++jBxLx2B1kOX4c=;
	h=To:Subject:From:Message-Id:Date; b=RYT5a4pTopOIoCfol3Jta4xoxOuR5bSuUdKdA1ekgrPBe3gI0+ANa01RRIC26RgItFCEnrV3BW2BYo6JyvGKpsxOPg4aBfA0NerN/tdqmWHtCVCOFlksECAejC5hPQrmioIE6Pi3Q369ny61zZKbBCphW5Wf0W/FJ6TdrN2LppE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfsVDGxS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfsVDGxS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED59C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763045993;
	bh=MkA/1FQf0q6eGxmcHXMd7wbmsjYG++jBxLx2B1kOX4c=;
	h=To:Subject:From:Date:From;
	b=QfsVDGxSHoecPQSgC/6Hz8K1ABcDxaFAJ6UZ3ZavSMFs60H2YXHB0P+o+L3mB5uxY
	 0iSAj9twIfnVjlqVraCHwFglj2+uYZbt+n9NsV0RCKzOC/W4K2GPsVxudsolA3ggUi
	 3T2UPrMhO5R1I6zRyJFZ500VUdu+9EpeVLrEhyKmMrVLX0Qyw5sKz5hUftYVdkvwgq
	 RxmJWyqWK7BJ96elIHm4DLoFKE+V05YecxgKl6DdAFTEvmK8m3pKr4cRYssYD1duiz
	 TI/laGl766Z3+89NF2vl4WujAWePvvd975Urj2Nr66pM7DOWdfuLF848ueSamAKQAe
	 ty43yYzQmxoZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91874CD6E78
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304599358.14370.931583120408380270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a46fe6c64801463dd3d4b83e48ac644bd657fbb849ed59d5c66e7b18bab3bd2
Date: Thu, 13 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763045993
