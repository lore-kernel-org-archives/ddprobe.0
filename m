Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B235464A
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718235503; cv=none; b=J7vUzIP/rnrHtvBpM8zIwjD/Q8x2xqpXpOxcUb4eEoZDKKC0MYJer1IMheV0M7wfMiRs7MSJy/cL9QEnSU6dpM3d3XieF6/cM9kms0Fg9cKO4a3E2lX6w2UadWK5YQt45NvOhoMWCD8+sA+wQ9Ur854NRCVDk3Bvqn1isBVS4t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718235503; c=relaxed/simple;
	bh=STBmfCiLiRre3wC+0dazRrjtsi2g/jDbZSkdEoaRfCY=;
	h=To:Subject:From:Message-Id:Date; b=MTseTSeOAS3/7w2RJbNipLEEsgVBGJtTmlyIV793bO3Wx5z+FRZ7PLdCuc6PvL9GaN/TT51y1Ek+XALYBsKZig0BdIKzLbCxJmL4+z5p9/n1FKRSVqvjetShO94PtXL6Uqf3yczB89481G5P7G6wZb+xhhssgNh1RZYQXu5m6/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCFmlqr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCFmlqr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC77C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718235502;
	bh=STBmfCiLiRre3wC+0dazRrjtsi2g/jDbZSkdEoaRfCY=;
	h=To:Subject:From:Date:From;
	b=KCFmlqr+wCwP8aNayy2vAaQSy1KNI9fMXX8Q2pwW3Wudc3QpXnVxkU/KpPv0aofsL
	 JEJzPjURt4UUs0xARPZUoDoHG2HE5LvjgOPMuWOXvMvailTxFxGA/pRvW9XgcIxzr7
	 HCjpMnOmviO3g+O7sYekZQtNnghzO10ERUpLrq4H3fBpq04iF/g5HYqbhwz5/NrCOM
	 C6AIwuzDkN3VRfTDlEE2V2Usi8l0cSiORb+RxWfiNOmXodoW0ph55oSDugTMjKAE61
	 J8e2fOuvHI30orTJMPNsFn1NvCen93uDXYmMbQXB7nvdJR1h1B3QBg0PZJARPd/OGW
	 4GMBNRni4ozRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4637C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 23:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171823550279.3921.12850634023768414526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 435a516e5be0a6f6ad7663c91ff19405a5df1d06a65ebc24cfc1b141183e491c
Date: Wed, 12 Jun 2024 23:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718235502
