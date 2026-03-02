Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E906C1A681A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772493294; cv=none; b=rflL2vP2/fjtCSXft/FVuTRXcWFS9qjZTAq6xpVIpzD60/rXP12sPHfQ8BiwoZwViLTfGt1ah00RmnrOSS9Cok1qv4ptiK2UtnTIP3qeUfAPDMh9IjMcsmrk3LxdEsoGICjF3a0/nNU5+97K6sW9EdA93ljOfRY75XeXf57n6GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772493294; c=relaxed/simple;
	bh=SUtyjWjXyNrTSfRGj8M5b2JPkySLT3QgTMAfOnAVLzc=;
	h=To:Subject:From:Message-Id:Date; b=RcnVv77tCRGHpRCWFVCCSu8QGhG2lhtiKHkkA6I3yR2+sJTsMWEqwKBT+ap0DqZ1pBhdrhYUVtswP/31P2zYJ5p9VcPwYYwcfGyFxw43aQuV2PXoUehHvBuqdJvkGmEDpyj8qTks6j26cF5rap1stvI/MeRxLZRotfJK/JHTjj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl4uYruH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl4uYruH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA115C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772493293;
	bh=SUtyjWjXyNrTSfRGj8M5b2JPkySLT3QgTMAfOnAVLzc=;
	h=To:Subject:From:Date:From;
	b=gl4uYruHJhk0tlnKHhRCtaN9FmA47DUf9ecMdLxShhmSOOj9QKrQjI4mTAfbftiEF
	 bS/WA7vOI+x4sc4mLAK5Ec7puV1UPwOFCdNSb2dm7X6tbmzBIQD0BbL/E5Ra8J/yEB
	 xgEYgQjPWPNL0rqhON0ypFMJ9EGx4hgaMwMV6wUZ5GcSwsJ/5LCsxtZBywSxWjgNAi
	 RUEVRGy/1/sT3rGardY2pE8fQLTq5JOU+ftY6oh6gaKGxXL+Vn2N85/16CQFlUs+bV
	 HtR1VOV6SjrDghen2yltK/yeLhMI5/MoT4HPv577MkQA70/JgQzSJe4ylaD73QPl9P
	 6R1dvZo4SJ6AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E14EB3643
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249329365.29850.1263914320440037635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243254ce90bdeffb87b8ad32540a6336909c94e190682192933cb023bccce245
Date: Mon, 02 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772493293
