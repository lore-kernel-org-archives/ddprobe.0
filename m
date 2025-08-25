Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235252D739A
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756115994; cv=none; b=PcZInkvFwhOwIo8im7qB+opbkTh6pEZ0L6/8295Xwn0mCA1btiE+lUgf2R0GImls4YgrJ1tBuMlgC0GAdEaUQ8dO26Tb6jk0SOThJ3vHq5jOYfzG8ONkGwgaAqv5Ysuw5NAS4ylVR6W+VB51eBDYQ8o7nqZN1rnjF2/HP5hT4gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756115994; c=relaxed/simple;
	bh=G6VfU9bnm/MxzN0xrPlikCnkEzSHZIW291T1hoo0x34=;
	h=To:Subject:From:Message-Id:Date; b=omXK+UjQFOcHMwnW0qmN0GYQZs7ZRvBYiL4OUKlaSWeYK3QKuOdjg72crdOJX+uGaEUwnariOM9SNCpXp9TXhCBZbz5wdplOw2g1W/cy+LSS/imvKeMS5mHPvrUdtZis4cdsfTwAaTypL1Mly9z4/c35Gkc8EbMoeqbMBLYUkmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z76xx1jc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z76xx1jc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A315FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756115993;
	bh=G6VfU9bnm/MxzN0xrPlikCnkEzSHZIW291T1hoo0x34=;
	h=To:Subject:From:Date:From;
	b=Z76xx1jciaIXRmVGywPlxXyN7vjjX8ld0SkwCQIdRMQyxwOhKdXVf2morELflaKo3
	 6EaP6+5o2Q+IqkFtLt/a8FsJyZ+APLbtzrl4UNTvOY/aOPt5lKfdNrd3++d+Rwb7JL
	 leSyXZ64LhVxkaOzZXnUy2WHSeFWA1z9Y7DZlVEaG9byJ/WnDXRphrhxGfzKpWgPSD
	 9yksuIj3fnQSb3Zbag1BR2nC2pWFuO5Qgj8HToCIHsgdz9B2mwic2RPNRflY6tZNw5
	 macNJ89CnRczYoDDALw62iDivm1+6cHLQ9hyqYSEs9TJrJoQ5VNrxGa37MBO0dUrZz
	 6D3gmp9lSGryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD8CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175611599357.4851.7767938267824332774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af030037fd943d441af74eee10c780b77f9a9af7057c333c0b482e57117492b
Date: Mon, 25 Aug 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756115993
