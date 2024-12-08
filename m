Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32061EEB2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733646954; cv=none; b=Vf0F942yA21jxLQyuGTMdz15bBQ7EqrDFstWhToz2u2CDUJX8IpUa+kskbv124Ok74gouHFQYgCOM+HnLCj5zmvEJwHZIJ3LSOeXgCg0iRhsGL30IsGD6Urhp++hoVaXOdYBB5WW2rbQYRihjb8XouuCE6UcW5iEUVar016WajI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733646954; c=relaxed/simple;
	bh=GkwiIgdLPBKOR9xnUxrrPGeWi/GtvNoYZ5B6Aocbh3o=;
	h=To:Subject:From:Message-Id:Date; b=mp2bZSXOq7x4o7Qo2M+NUUwOR+yA1zE3TxGs69GApB4G9vIJR9t+9Z+dHw9th5/g5ZH4HLLsiZpDHFHHhnHUIHagsjJ64s0CMJFHNtDoZuSuEhhDWFh1q4LWq7RpeW6kO9yBrhaJOoOkjx+OnHb/oAFxYOgvLFKl0ewYlxCW6Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3YtLSy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3YtLSy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8624C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733646953;
	bh=GkwiIgdLPBKOR9xnUxrrPGeWi/GtvNoYZ5B6Aocbh3o=;
	h=To:Subject:From:Date:From;
	b=F3YtLSy/wHYHHdf6RJ3RBXKpESw32fx9GFBheNwvYO3M1xCn5DyB70/UA/TBk0REX
	 tVfgQXdCxYHoW/h7IwK/CkzcSQlUQlo43NfMKqWP05eXf2cDwE7eUsLQ4J6/6WnHFU
	 f5/ONpBhnfpdYbLq2Q6MAlmCytLgBDqrBsCmWO4x1v74oHRGD5t2/lumQbcjjp+0pM
	 yRDsXCje5O9v85E+vLA6aoW4X0MN7xW6khHyQR2iHx2FIk1U2OR7gf1AiCuRKnFHiB
	 bEFih3yByKIth0yZEtSOiX514cX/jb+49XBeKQA8kGVTCZ/WKRBzfwQzjxz7BW/rAA
	 ozj1OIhC6g4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF2CE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173364695362.9448.13681984685828954332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14138e8579f0754442dbd8a311c8cef179278cccb5fa6f7d87c2536dfdf9f8e
Date: Sun, 08 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733646953
