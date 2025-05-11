Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D05D2B9BF
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746937196; cv=none; b=u2s4D9g3WcbuB1qOq0FkLLu06mN8qIvDOtcw4A0PN0dilhzEIyuaXlBwSm10N7EcXpcTlV0aEHDI57jLnCZgrzzUAHY1mpqvNFZzRBGDDEpTWJKAaD/43eGcLqo+WE35RQr+0liixBbkew1P+aZ9QQL8SM365QyZCLvsfVrxdBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746937196; c=relaxed/simple;
	bh=0idouIezUmo7dhRt1aoUrNaPyicwd2NN3FqDRCjUFpk=;
	h=To:Subject:From:Message-Id:Date; b=pliIZzu7ZffKi+2l0XJEbADfjn4e4DqtGVDkZZOnAmSsLct98/9E+aTNCHe8giKa6szJARqkBEhyG8SCq9iBfsVRWEKkPKJ+HlGq8/AXNkXBT1wOBfzMErc92GwhokTZE0fhZJJUNswobxa6fJtlXFjt8ToKATRGpEr19+l6Dko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjUBWFUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjUBWFUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41CBC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746937193;
	bh=0idouIezUmo7dhRt1aoUrNaPyicwd2NN3FqDRCjUFpk=;
	h=To:Subject:From:Date:From;
	b=pjUBWFUh1vX+Hg2/U44TThmS+a4sPePP9sYzLHQtreHW0g8VNsRVxw2XruZxe08dJ
	 zCr0fUc/7EoB2y1u+qbNtWTjAlBA106S+x8zBLM4uQ2GWNFeklYjtCQk480Zk9YbFQ
	 5MKhlUvheAWE5oHfH9Tljf8dd10XYuyDA/eoMmGt20pp5N/A498tsK9UfzN2T2xTQD
	 H99EYa08fkpnKVhS52fHEUZlM0kRFvcwHGXyDPxFT3WRicJ8b4zcQet6bT2ZRwp8iW
	 Ysd3tY+0FkQlLCMQ8NvGyizsiY1T/EF+i1byE68d3bwXtlzx4of8pXmNtPzJ5zpiKI
	 5gBOBu/vaDaoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C145C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693719359.6353.11138563302488336267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dac39f6ac73d4c254da197aaea872039645a860775ac58aae62ec92007efe4a
Date: Sun, 11 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746937193
