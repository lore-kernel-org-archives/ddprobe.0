Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4835633938D
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788194434; cv=none; b=XxGP0lmdh0sgt6N9FgrHVaRm6EvgD2SBJy1WUQAYjoBwAopv6v/OTpEKrS9br2LGRqglVnr3ITxN7AnYlN/MZC4KhspYmTSwAvzCHX4H+s+7sMakYwJGqm/9Vhquvu3C3vb0YGz4zO6SiNno8d5Bcqs3MsZc5D7XtvqL+0X18rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788194434; c=relaxed/simple;
	bh=DVI/87mZ4bbleaOrYI4qbzS2k+v7+62mGTrpBUBsixo=;
	h=To:Subject:From:Message-Id:Date; b=ULVCeAgxmp6wQvtmQJdB/YEGZ8mK8ZcZbs9deZCYiCCS8uBp60tBk18q2Zg3J4acrKePyIvUj2u8/OXHnkRxGQZapyx95Bda4f6MEchfFwzS+Kc637MX/Qds0Iin5zTwmDj8ZCgR7yKPcoG3l3bMECP9oDR4ZJBbPhKLbqQ1qNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATy65xai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATy65xai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA50EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788194433;
	bh=DVI/87mZ4bbleaOrYI4qbzS2k+v7+62mGTrpBUBsixo=;
	h=To:Subject:From:Date:From;
	b=ATy65xaiXE7xqOGJRiXPqQj98292Y1n3g80SKdRVsyP6S13e0UeVNNDRppn+G5em/
	 zJ5rb23qW1BDZ4aK9UcNgB5XwK1+84IEcSk0/PikauoNcJ2EX7t/U2nJHyz2TsDCDm
	 8TghEFvjUQS49MBF1bFCUWKo79xhSAa2QTyX2a6j9dJnYp9ALZXUrF5UXVXB1ot6c2
	 tQ3CUqowt4JSiIHB32G9US8Kp2YQvUCWtga8bvAR05a22XaAYtO3GDKXmp/sabL2dQ
	 nD8S1hlAjoeKIKyNJGcoHMd9Lol3oTlDMMRWV9bMvdcG7vHsExsWDzEk96X5sDo0Hd
	 ZtCGTF7GTeXAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB61C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819443369.14848.1103212585597743262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b149762d36b8286b44928632b2f564f17a1ebdbcc89678e3f265aee904b4cc3f
Date: Mon, 31 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788194433
