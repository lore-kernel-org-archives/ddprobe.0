Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC98A1B4257
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763914313; cv=none; b=CHss4+5iVPTTbJgXK9XH59Ad6Ugm5LR6ugyK/hB5O1TxrqGwdTKaW1j467C4ae7m3iX/ccBPpTCuJQ+B0+pgKDJjYAfehwvWo8AaJFD0Ktigd68auDlD2GwJFvXoD+ilqwTLwmUYj5Pg7vDs2Wjoxn2QAVmC4DyfNieUuiJdv+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763914313; c=relaxed/simple;
	bh=pD2u1OXiXEe547dkctobP/XmNqOe4RcNfhcL1QVKDYI=;
	h=To:Subject:From:Message-Id:Date; b=NNwPKMNp0FTOCrvdqs6yRMswpSn0C16tpnLeb6vKobXWtPU/LGnoyyqH5F5l255IxC6dYMzvoVxnyPf9BtM9Zc5KjHaVcjXw58X2vnIJRemISqRCosyL+JsRqGch+2FikY/UrPgvE1yIMhIbsuuB5MJrXSvJw+3eRMMCbr1vX8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXCi+TXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXCi+TXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF16C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763914313;
	bh=pD2u1OXiXEe547dkctobP/XmNqOe4RcNfhcL1QVKDYI=;
	h=To:Subject:From:Date:From;
	b=VXCi+TXCuhKrwVd4Cr3fEihQNU2Tjdwu4fXhVQxUBGgCArP+E8iYamI7D7jgQq/ej
	 8ccv1YryM/XoBnpqI3CcL/Pz0xahgUTXONPh7mY7ugkdswDv0Y1yTXJXaYeQU7dU9Q
	 KaxW5snK84qMyLfPYMS5D7wpgtDv79NJ4KnUEp9xhVikNHHfVwP8M/s13kdUZhvcdF
	 z7/jLHplx6OwnpQYvBSNONLFytSJm3GsEmC5u4PHj4jKzjsMPZTkHFKjTsobbEqh5U
	 CUNQm2s3O2D4OnduNqvT9ZBPV/W9AujWCal5QzRJ3TRgt5pGgzR2ngkVv58mw5JhDN
	 CiItXBMW6Lb5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97715CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 16:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391431358.19492.2400554581232539553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cac0f1bd5c920672909f22c78601cf0ac804c0f17eefb1f70c74dedefcfa4a9a
Date: Sun, 23 Nov 2025 16:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763914313
