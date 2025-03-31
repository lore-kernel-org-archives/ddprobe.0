Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380DF86250
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743404994; cv=none; b=GKmBR00G1sjAxjsijZoBq8WOONx7/5VeH0kJIrfJADXJ/O6cd7bfzUo0qh1yeWf4Ofu+nwTN79w5Ce86t/92g7wzTqHHTjOwB8VB5k7RcGWrfC9uGGzDiwR7JSDLHgvVlNA2kF8HFzrLJKT236vmsyEbB2UOe2CnaqfpVKI59hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743404994; c=relaxed/simple;
	bh=aATXC5KlsQYqYAS0D87CNfBa0otYp7WZ+2qrNS46TsY=;
	h=To:Subject:From:Message-Id:Date; b=tZgs28IqnM5zDmcaewP5dE+s8rzA4nXObEz/Ln/EDCreCdrRIYLsiVCDTZjNHjNS14CWdpLxut9o9YUWSJxOg7vamVwiJbw54x2POOphaUbinAdrEYw0+3NTdXIt06/T2NOW8kIq8OtEBXY3Z2THgojNzi1xOkdrBK8uPiBpOAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFP50I90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFP50I90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9B1C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743404993;
	bh=aATXC5KlsQYqYAS0D87CNfBa0otYp7WZ+2qrNS46TsY=;
	h=To:Subject:From:Date:From;
	b=CFP50I90YlIvawhKInpL/T/mWom2kNa1JNgZzPj0Eatn7ZqGYv8UOO0+WyrpCryAC
	 2wmT9vORoK7R7RsRBenmSZMFx80btZwkgKY84JYrZk62mCAO9apQ6JF6bVjke17UGl
	 MqS0LaEr3Dd1DfCOQ2I+59dK7UXgfsj53Mdmi10IOXJN1RbG3+7fHlbmeUc6zm7mmN
	 Drz9IOnczVhCoM9W80SG3mO8fX20ikI88E+PG3TKkm2DPuSanZPRWNY7OLTQgb2ZkK
	 cGef2mnCMRM6h2SW6cggXW6KnNHCwM6i101NsxlbOpwN7jLDK51MbY6znsVFmrB0H3
	 QyF3oaqGakSlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9951EC36017
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174340499361.7335.6811054687981861118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e7251512b30ae2a66c1f1aed1bc75709a6489c44d07c0047022da9393c0833
Date: Mon, 31 Mar 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743404993
