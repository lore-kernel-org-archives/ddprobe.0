Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1179F17A2E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766595834; cv=none; b=g5oGmhr5KhNBY7LQbuVI5FW7kcUm8wRRCZSTsBqcYKwgsKYeKp8UqtJOnixkTtOCmJIQ1aBxAZ1v5HhwG5CqmyXB1aBRC4nUAVNo6sOP4UGuVRDY62vdoqkPNjp3uzt04w+1DHL6WnryIfCG43LWnfAlgjZArivHLxJXEtABb0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766595834; c=relaxed/simple;
	bh=kOdBJ85mCRM/ISsOq3eMs5Reraa2KtKu5vPxXBAX1IQ=;
	h=To:Subject:From:Message-Id:Date; b=gqPExtQ3n4UG5b/HOX3vXHwwq4tzjF2sCSSJGYUk35sAsxyWMWv08se0kwl2B9mrn/kxV0L6a+znrsBMQnFQ2xunkxdPqkFEzbv9BUZb6dNkPPtzwCfxD+acPS/Ug/rTYXQuU7oOLIG71Rm40TD36MH2dKO7OjkiYvJ+7Vm3LS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3TYrBDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3TYrBDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62E9C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766595833;
	bh=kOdBJ85mCRM/ISsOq3eMs5Reraa2KtKu5vPxXBAX1IQ=;
	h=To:Subject:From:Date:From;
	b=d3TYrBDlGUkl4n7eMGdxHdrchF2Msf9gdI8lEER4heS2etuf1+mpH078BlqYoXvHA
	 Szw4/6RnDnir+R8fEcXeoWF8qfDaNOTxZWVTZ1t1PgsGno6GgH3Nip21E4UbHZ/qFC
	 ZPEJKp2oS1RD98WUDnrgVAYQw8N7b1oHze8wknvRZuE24N7AhnGSLS+wLgZntuE54s
	 sbwVKSbmiN/4FpCTc+bzdHJLcnGPyAcgZe6yTyfKmJftnWwJi7r0oPSYL3Q4oNbHrr
	 YtO2sohQrWJ97AHHDGTPnzaB1cQpg/zvvP2zTmRWuANXNApkk68YeQMfNZrpNsKWFP
	 9M1QNB7PuYjLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD5E776F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659583358.24438.6130225270560630681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb529309760f5a25f7dd1fe343a9700ff8f259501d47951f3630a85f281ee879
Date: Wed, 24 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766595833
