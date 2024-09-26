Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28980158A13
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727369754; cv=none; b=a8lVC2u7hlC36/vk84SLflg+FoTLIJaJbbxJ22EvmgBwRdSBhMmUA3u/xhISYCnor70mhBux5EMnlCyTlCNpqmmD9ZV8rema2CVMtffNclYYEOZCLaODjiARVu6SjU44vtMDXHRnNtm6qfiCf0buH+SEuoVMfuLbwFIAOLkzs5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727369754; c=relaxed/simple;
	bh=YGYYzpHSH7caOsDT+0x12NidF6e1EWnWLS7RDvgBRR0=;
	h=To:Subject:From:Message-Id:Date; b=j36j92JIg0pre59bB1u8tjjtgbQvXbux/tMOSi9IqAdBjnK/IjBcNCKNbgW89V+sWuCowPtw23bra8KSrjKKAM9LnOIUe3VPaGSMA8G1MRwwFO+QkIEMAx5qnO72Rcu/7PtZnwPoqLHj24/zxW5NPq38892Bk5h0m0tLfziq7SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/8PK9ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/8PK9ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B2C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727369753;
	bh=YGYYzpHSH7caOsDT+0x12NidF6e1EWnWLS7RDvgBRR0=;
	h=To:Subject:From:Date:From;
	b=j/8PK9ouScfYWG9S/KWGMboRdEEUNAJ2EfNZBx/wXTj4cHq5WFZJ5T+KZd2OVzUqa
	 PnVSPswZ83X4UE2JlnkUZiUgi/599QnzSEandMMR0qpZHCtKZD8YnNyYMUTZ5xKeSF
	 nIXZsIweU4aj0l6ttEoC1Q+LZtzekKAmGbxnvFAJo7eBrh9GnVFBhlzFZrNYx3yxqW
	 Rm2nWy1cFz8lUQVgSNK8nFh1UjtayolukiI/u96Gk6jaJnDXYt3LWVNRQbpxq/RtOd
	 FI/SXxZuB/Sz914LzVKGQqilmpc7DN7UQKDv2S7Dqsfl1N+BekTZy3zkpVJxn+QXFs
	 6t5BJHMMBW+PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90163CDE025
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736975358.9597.6802088533582361290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeba22baa1b1617952820d498dc3a8f3767d56ffcff3bda1e7d6d951714bcff5
Date: Thu, 26 Sep 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727369753
