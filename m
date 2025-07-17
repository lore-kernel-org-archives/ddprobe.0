Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E42299A96
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752748194; cv=none; b=Bz1Ab+fXHOS5UJfTrjUD+RFE27qNbKKOgiu+NUwjK9VQGavmtO9cgWjotKwW3f9eqbsT1r3KBvA0f/4AaZZKGq/lMtuGMGa36rznQFV/K/y+XlCOJZW9i4lztGZy5FUtxNrUwqgch06g36lYvTEhAVhPGToMOg2NV9yNtaMDFms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752748194; c=relaxed/simple;
	bh=7uobY6CNWPPbBXASpkJz62EeFMbFN4Ahot9ZMNS+dYA=;
	h=To:Subject:From:Message-Id:Date; b=s3RarveF5dE2pm2qD2WTd9mwk48fu5yQgjW4ETPDhEN05W1RzSYsaoj3QaY5imsrSttL4k3IYHhw/D9/CsVRdJbZ1A7hFfSDMnkOs8UQfcUbTBzpPIoGUfCzS/iUqHoTfw0Lnsl3MAPbKgw7qURpeYDX1wgwKfl/ErRO2XZpXus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N/Wk5rBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N/Wk5rBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D38C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752748193;
	bh=7uobY6CNWPPbBXASpkJz62EeFMbFN4Ahot9ZMNS+dYA=;
	h=To:Subject:From:Date:From;
	b=N/Wk5rBjwrunDL0bscpv6jFQiYGaIf+mRmcrgD+6uTppmwC9Dk6bI64qlH/fVUzhb
	 rl6VCClrbHvaIqNKFBB4nw8AN9UKTWsbidOJ4KYm1O0ukjmVupWvyZ4ClYCkBTbo4h
	 P7mU3zPiTdMq1fCa7Qdc+dJcvtQ2JpjOxWXzP3mxrJ73Zcz3hbKw9fs+ZBSgsYf1OS
	 LwS4eNuitr/CWUkg9oocx8pc0INqtYweoHItL8uzjLFVym21TK2yL+LGFaaRKqn7Lb
	 hG9VCJwsP/72AfSBH5AtbufnjM57/G/E4AolsegFUiC4BFCN4CoIX9AV41PC9n9SO5
	 dW0UpzVZ2U4+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92156C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175274819357.28971.12210682706307991899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869a3d01ddaae3bf041540624c06c71997e764a55f96b97816858ab3f0fd463e
Date: Thu, 17 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752748193
