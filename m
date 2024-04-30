Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356BF152781
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714489343; cv=none; b=AIseOXEwjq4cNFqnaZs+IbAeQYvVErGRUAs9J/WqQ+CWeuVSn99v30RvB/DM4cpr3VZ7JthAWC5ikHFvFN4I4iKxu81C/4fEb++sx5oLOnnfmsxwLWqy2PFz/nCd2yobh1/8mNjy3WPDu5Bjly9CeY5+0Cu6NDamshbsopXTwZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714489343; c=relaxed/simple;
	bh=Klcxz+wm18wVwkHSBqjHxLtSjBF5986Vpnr/AfB/0RM=;
	h=To:Subject:From:Message-Id:Date; b=gllfDg5CtNbpRTr0ObvPr5TbzAoog3fTQGfSdqUefts5pr9/WIVfYq2Wy3IV2CFJ3fVyyTi94rRhbPQdjbggF0PXJOhwoeexmmbd1qrN4+OD2xwQuMnva11FQBloHOxqPDLNjt3ZSmwouIkBPgsHZ5hcj8Od0r8fhjMpdITTWNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwB2Q96y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwB2Q96y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC5BC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714489342;
	bh=Klcxz+wm18wVwkHSBqjHxLtSjBF5986Vpnr/AfB/0RM=;
	h=To:Subject:From:Date:From;
	b=gwB2Q96yCNiXxRSTxU50ayuf/FU0Kr80BJqYpzbjviICyy4vQ0N2wpZ3VtMve7Iad
	 BDzxpjzPTxYTp5Y7i3xIRSt5Thmu1ZiQ5AxMK3Ia5Zn/w6OMUMFhRTX9pNMZP/U0bv
	 bqNGKGTADpFQENL8PE6Fq4ud25Ta5Zx1VZEEqbyrdEVIuOiFw8o0NCkDAxKt6ZJ8lr
	 MwdQa7K+TYlwNQ7L8cdfC/Zm8+loO4clOkhPSLiG/hD+IUz23xPTW8nM16ulAnh4JR
	 a1OohQ8JLX5VpUE4QmYmV2lVDFxVcigBpk1oCgMkEUijUeULHkYWJk1dzXMhrlDjrC
	 HZh9i1JyiWoRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCECC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171448934276.24840.9483853970924650599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1117efff68d15588965091f62aa725b03fe7bef5acf3c9c0ca3a6be76bf58c5
Date: Tue, 30 Apr 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714489342
