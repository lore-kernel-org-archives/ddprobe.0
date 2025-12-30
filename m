Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B0D21B9D2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767102834; cv=none; b=Cm6O/5X9z80904zGG4FsRtAWdTws1EfTYLrjUWKzxslciBtv3JRa7GV5X8luZBibjtKkcaoESp47bRP+/XaCbwySnXsrqEEFr0ISGwEXP1b4/Mmoooi9L13NI1iMXwr5BER14ELJ6r7OfTQvRfCf+FaLtCM9Z44VuyimutkDEM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767102834; c=relaxed/simple;
	bh=qjqoqIRBObsE6VbAaM1tYzYSl+Hf2mZmn454IcZhznU=;
	h=To:Subject:From:Message-Id:Date; b=tIYDAxpfh09qYcmzh/UXOBoNEfW4MYxpPUQBn+cgTnAKX64rlA9EguYbzr9HTOwu1b6p5QNmPEktTyFF1dcf45lObLqbyHe3xEnDPDx5ZWPbQcgavri5zMbK6rXiFagqjLS+x6AokREPct9Mcvb9WARBYAqoSpRbmwcBN6nLguo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzM30W1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzM30W1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6BBC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767102833;
	bh=qjqoqIRBObsE6VbAaM1tYzYSl+Hf2mZmn454IcZhznU=;
	h=To:Subject:From:Date:From;
	b=MzM30W1DiDUqdlFVbuS8w2pWJ8WEGb4e9CePuOljAIaRyQbEdn1J9bHhrgCp+y3yB
	 oC0vA1pEnnnj+M8bDBREkF2ShPT8pDs/zKXT2HEmalQ/E/M1r4N8ng5FC7fSCIVN5I
	 zp4h7iihFe3BM+lK3oCwT2+gfoY5/gK1DKF1tjIf1lS4FIzbCh7UnXNGQB6UNDbORK
	 2Mcc6ope13i6bJAtbxno3K09qF8alvptJKcVqZYof/ynoRzDOlxuD26aQw9H3QJA7p
	 jpKS0Oh8PU5PnGPt0ciFWQRFz4Gyag0HrZi9HXuGYe1cAla139fxCIgUgNnfr5fHw3
	 CQ5a4YdB+SgHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7AE95A8B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710283357.31506.10793648813246879203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdab1d4e7a2e51c6530eed021f0f877f63a3a8b08216b1ebf8af3cdd129461a7
Date: Tue, 30 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767102833
