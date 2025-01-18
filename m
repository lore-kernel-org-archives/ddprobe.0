Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39ECEA92F
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737220554; cv=none; b=p6t8ikgvRmtVJtvNTEfoHfcLunUOkO3ARh73qqq09RLhcKVTyVn96h0BFaiHamojf629POI9tNKz8Grn7s/qQ4hCQwmBkLRAnimfbxtZcy3Q8gC3Gk47gO02TqOmxkV4LogqOPbyFd60N7L5FwIvjTmTStb5uPbUyxgjF28jYrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737220554; c=relaxed/simple;
	bh=+yAvAHpLeVIIZCkAsQSURKEiQUfv4OkWfsRpoTaDjKQ=;
	h=To:Subject:From:Message-Id:Date; b=tuCBFOZXm2PUCjc93mY9k4lgmZSOZtyfXSXVfXt2WkziA+Z1ntbenF2Ur/oaSCQ9kqb005zrGOcnldtitam4mm/SEV6Jsq2TgUbqJeIFT+14Kk7I9tKtAKVOQLz3VfJjsYgQ6HOSdKB68DfLZK+dohalHDYmuTEIhm6WjVuN02w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfXFynxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfXFynxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28C7C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737220553;
	bh=+yAvAHpLeVIIZCkAsQSURKEiQUfv4OkWfsRpoTaDjKQ=;
	h=To:Subject:From:Date:From;
	b=bfXFynxAHeS+SVMZ/ROMw4zakV7Wcv3wzxUFZK+/w/6o6wxGSV4VxaIbDChXO7lFW
	 t9a2kGHAreMKklGOsZsXimK/S40l2ub7QLHa4ROUsUViGO/0DWIr1cd56L+QzAXiNz
	 RudMCvnE9f2V2Rb0esCEdWkoD83X1VvznlqYl7BXRIe3Bnzh96bQJrQvKeM7TAUefX
	 mMNT4+aFWToL5O4mVaL9f4GzELdAQtOKrHmN+cRYpB58hRy9kVo/b4Tnc/9tM0UtWQ
	 FuVD8Tm6bp5VRTjarwp2HuE5bhZ/0XCzBwkuwCYT7n/nf8gIzHGRX32WKz7zQJXLIv
	 lQlAhPpyao+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940D3C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722055359.16542.16035400723789955990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a514c5ba8972c215a39cc9e86fdecca617ff1eaf0f584eeec00936242df407e
Date: Sat, 18 Jan 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737220553
