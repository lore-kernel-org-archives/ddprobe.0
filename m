Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2215F352C4E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774482294; cv=none; b=MegOkfR0aKz0aCTRQa9hDbrGy1d/d8duK5fwOjQ5Wp8UH00o9cWcj62qYdSykQtmPLfMWQHLKX+RDKxXU+LGJ4siNegybyDSNdwLaJbCAwlRuKfohCExhGDYT0BQJM3+UgxnlDPyHc1uj8+D2UlPvnVVjMsycBhjynBdQEUtb/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774482294; c=relaxed/simple;
	bh=6rcXccTamwVPzltc5sDyLQhzlRxqV5HTV/zo6qLHYbY=;
	h=To:Subject:From:Message-Id:Date; b=Yjop9l29a9ZSn3xanzHtKG0vrqmRGNNQdivZYIR/TiCPDsFaI6n/BbFl7UdrIwhiZvWpMgqxsa3UaSuvIQJx2q7X5QJgWtFqvYZD8zjbAHF933E7hoCOWF48+fXIIG1+bJQN3KrBunU6wjzc5Fhz72uX1soZuuybe3fRb5K9Vok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtOODqZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtOODqZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26CCC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774482293;
	bh=6rcXccTamwVPzltc5sDyLQhzlRxqV5HTV/zo6qLHYbY=;
	h=To:Subject:From:Date:From;
	b=LtOODqZgkcZVTxBcmcyazVfcvuAu7pmlX8TMtQd4vESoCvD3coalM1PY5t36AH8Do
	 jeX194HSrIM+NQKd88taOOk1C9n21jHWjMV3Q+bmRLAcZA2mHvbcbZ9EcDnud9QASV
	 V6kGPz4G7DxNgaj7hfbya4/gl3cB3V6AIA09PWjPMvx8sF5cdswfr4u4swJhqf2V6K
	 K5unjVbc7839RTjPEQSgcrRk5vYQB4aobhzbVsJStJo/MBEaogZiX4UeDOxQKcLa+3
	 B0Cqq4PSFrLBRNQOXDi+Tybz/AZ0BfTsj4uPjg0Z6/Potk16La/W95Q/p7M3rS+JgR
	 y0JcvQeCvX2iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A5109E528
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448229358.28270.7011216835275996294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c7d97e4c25aaf051dcede1ba8bb5c250eb62609a0122a4c070939ce09b2227
Date: Wed, 25 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774482293
