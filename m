Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23933768E1
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729293354; cv=none; b=Jp1yJsi+q6P9lwA5L5cpE7fkaU5BfvExhULlJD9KsMIG/WodrPWnuyysmoXJcVJLZW5GNke4gxzYHEPszq3/zJWnjrwktfbqexLCFVBQPoBQQ6QALrsz7yrQMX8Cbctn+d2Hj+RRL4o2p1ScRjUg5TAcGKdM4W1AXERkLmaMo04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729293354; c=relaxed/simple;
	bh=28UFMOgoWDV3HJWlW3YxO4L0i0JIoLAEodexoBgrPI8=;
	h=To:Subject:From:Message-Id:Date; b=ie4khyxTAURy3Vts4V1NNLzjKmOXmaW9z2uwnqHaKvJ7ufkbQN/mxnfkSbIgMxHXtTe5SZi+J9sc3pm/K6kgGWLa30Y2LTpDadlc6GP7Qu9iH1Wju2ljaSbUbhPr+nDf37RLtjrjLuIpma1MPVeRW00OZ0EeQIG7T4Q5K6cC0sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJ1y+40B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ1y+40B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5501C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729293353;
	bh=28UFMOgoWDV3HJWlW3YxO4L0i0JIoLAEodexoBgrPI8=;
	h=To:Subject:From:Date:From;
	b=rJ1y+40Bsr2gskHjeD6RxEbNgYzuookanRrgBUsMhIKX2HaHOrfEI2QYu+UlHw5bl
	 ZFoWANPEd5WNLVZiAISI2vQYzElt/B9FPqH6tfT9klVK+7XPsD5J2HqyH8zRPjrpr6
	 0VKGWVrKmRcKWv462TFawWa0rG39TSifBFp/UkRsBVolPKvIPxyMkclOIFGfrzPv89
	 kH/OS2svSEUr6ANdHS5ld0HjQi/tPED1z+iZb1mcH5lU7TtcUO+YXvjfPSaPYMBTsS
	 SPXTN2W6b6Svxfwtuzrd8hJPmr+a2oeTpJhxYTzatZe9MPqpFCr1Rh+db0zVFZRAIH
	 Az6Sk4dIMcbbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D65D3E18E
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172929335359.3945.8956643604203125657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63b35c3b1131fe297ba4634b2b47dbafd78e6a12bb4e9c9ec7443461d9a6727
Date: Fri, 18 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729293353
