Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B42914A4D6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727412354; cv=none; b=EbLnGMRcfyEQEWC/I27rit49oW31DEb3P8+GByJVR4B6vn30iKP9wy70kZvinMbeCTs4dhMIl9n206H/V/JWkfsQQ5je2myADYwsXoEBhQqMTcnvJm/Od2gvf041Zo88f+SAL8+3IzjZljKTB/GjvGRw/Y3xVltr4LBmE3dZ1L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727412354; c=relaxed/simple;
	bh=TdFwuVOyCk058hte6I9huWL3F/jpgnNbAgaHx12khHg=;
	h=To:Subject:From:Message-Id:Date; b=azBodIcvrxqNLeqIoB+/dg9woMCINmlDHdQor6dA969gfkjbhVlmy0qADT4THdIzEogtGGReyBFPSI67NzQ5FTDgeid8dlflBby3JGYpXMtycrAv9E6Js4DBQPDMIAksDzJ9otru2nkDFXp9nxfBdLi/++z0UBn/T+xrrpf6XO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdMn3vBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdMn3vBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1A0C4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727412353;
	bh=TdFwuVOyCk058hte6I9huWL3F/jpgnNbAgaHx12khHg=;
	h=To:Subject:From:Date:From;
	b=LdMn3vBEofYQca5jZHHsgCzrVD8TI23CqWL2VjbAnANUeiHr8CKkjtNIdAkT5Xybz
	 e6R0Cy1n1AcBDTX00lQJtWBNAo4dIAFOyRA7HOlhCc1YSExS4E9SN8o2hC8+tZxjfD
	 0rkLRdorg+/KIG2mXghwS6Vr6/4XUTErf0wSSJABErHJKH5QFAX/L3cWc0rqgEAe0k
	 zMghOjpBthU9fxEGdUYgQjeytIQzd01EiATSiHKFZFTJQ9k5OeuW9IEMo0rw7MxFvZ
	 tbmFtyD47C7CPnK7z9OzMptBulCP6/of8xdRJF1F9ZC8k/wGSYx89P9/qwXYN4N1e7
	 vNDybpcdvpf+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4A81CEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741235366.13675.11614466733319098383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0554988e2ccf044a395a991ebc6d2a9facfbed12580a46e5e2d2662688255b
Date: Fri, 27 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727412353
