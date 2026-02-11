Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2564F4A32
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770774234; cv=none; b=MKIYiK75YYHNeA56AlBiJaGeb0UX3nxKGNok8LUKuvFQ43vYvv7oRg2MK6/IIsGLTf+TcMTg3ow0VGTl3ao42vtZsgyUHBn1n2XhKgMNPd4Htk/dov4TdA1TYLbLCzCuYlkpt4vjWkpcH2FW3sWaTa11E3zMwHGXjo1hV4+TiG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770774234; c=relaxed/simple;
	bh=RvVNYLbnnWr0tz9Vi/IV0WWJKO5mgKB8+zuUKyZ6bv0=;
	h=To:Subject:From:Message-Id:Date; b=r1VC4dDvx91g36933+fLJW2J+7QMZ9ZIVMK7zpspdZ6VUNxe1BkvXuBTnyPNbINYTwRbKSi6nRNXuxnbDdE0G+Pw50mmIP4iuDdr8j/2OvKUlgQ1x2hQi562yYh362yZ0eQr9FK1Jo02ALMiZPa78ZZXTCevhmH92NYP0s16yys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuIMZG+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuIMZG+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9D6C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770774233;
	bh=RvVNYLbnnWr0tz9Vi/IV0WWJKO5mgKB8+zuUKyZ6bv0=;
	h=To:Subject:From:Date:From;
	b=GuIMZG+LtlzieFV8/FO/X3y6lJA8EVhMIF3R+1TcWcpo6SsYT15Xx5zxz9C8yRFLk
	 htt1nsWvfcOoT1aQCF/w6qp60S0Uhw2nkA3m6oM/nI+vkcH856BPXoi2iamNPQuXca
	 D4NS/vWgf0TYeHABLBjPRDcaaJFFGCAVEx1SPiE+wi//SJFPU7UCqcQAGOCJJR6Zjm
	 JV7a72k/GP+CFIrIw4WpX6QzPtztvMp4E0twtANd1eDLzs36kS3ePRWgnCXwrCumCi
	 YsxjE14FySyQMUoyssVZuPmziZmay37xGE2nDB/yJF3RZEFZSmn7MQQqSlig8LVsND
	 g2KL+K2JAK2AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DBBEB5946
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077423364.14708.7444520390517449740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d1c4eb2fa888290078395a3288a2e54c02cedd6932946822fbac4fc39f6863
Date: Wed, 11 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770774233
