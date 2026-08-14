Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402E93F926F
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786692034; cv=none; b=G4HFP1QL40O1xCaMZo4TIV5DidI1zQ3JaoMV//5Qvwsr3QNqENvYl4SBDUTsiKKXZixEkXiT1pg6oQim6+bgQmjZe4kyfZHqqBIrClxJoZPzWaWP5QoSM0ioXvFwqTX48JhQmG1vQ/butw3cVP1Js8vIImGZGn6e91g4oxFLRNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786692034; c=relaxed/simple;
	bh=sr1oMPkYdrDFWJI/AOjIlNdMH0Jr/WsKqbxgxj0a6FQ=;
	h=To:Subject:From:Message-Id:Date; b=NaJ7cLtgXaSLq62DAKqjsPnRghAc61b69wMYctBozxTV9HJc3zGGecEGEIl+AsfRMh0ByciSJBCaLkUPuWxbbr96zeZtOfCD5Yfie6rn5ujOZ0ZsH/cMNB29EstWoungFRpxLqORCp22DzZ3xHbb+tSeNZE/Nj16teALmgDpzHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S35dxi0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S35dxi0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83B1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786692033;
	bh=sr1oMPkYdrDFWJI/AOjIlNdMH0Jr/WsKqbxgxj0a6FQ=;
	h=To:Subject:From:Date:From;
	b=S35dxi0MFNCKVBlT7LIvPJJaljjDTWB+116751QxaLDdiEAHSu7kS49KPOzihRuQ8
	 mY0U+Xbqn7mpmG3pFsTaRLK4Gv3ctLDSBLVp+gr/mY3KlPJiQypiZJyAYG84fgCxrd
	 C2Z8tfnSR/xa4dLikCVYVl5o+8zhXWtvi0In9WvSKLVzith2eIm3CSWstAZ9+q/UL1
	 06/dyUgR693UVQx64LEvVlxGg2DDBNHgKMHSiQT15zK+0bqVcl+s65PtQrVH/8Q9Gc
	 AkSoLmauPVOtbPEsdYKoalcCI7j3ikyVlqpHzddqA4pvl/xwAd3ihh3vsEFJPAnw3W
	 12+OGtb0dwJbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C13C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669203368.17274.18069207735960863830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae02b1605a9a6d0b3b05256c076c9a08b2ee699fc9cf2aacdeefd03724f2b5d5
Date: Fri, 14 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786692033
