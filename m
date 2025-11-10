Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291CC1BCA1C
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762775394; cv=none; b=iHZCEGdGjsGWkg4slFkAudROsbpezKNjBzPgUdWi8Lftem1G4FU/E8V2qU95mYqktGtWr0HzBgEmvR9qm3yvxExgr4bPrXbbx/we2u6KktEGWa0tAaltGMbJHJdqJnIqn/erMilhwyd01uIm9WTrcUUw6w1U5IWPOy1++YFcnFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762775394; c=relaxed/simple;
	bh=COiCVzjnXGIx9o1sBvTSUiyzsOBiqtu0eUE80ay/p98=;
	h=To:Subject:From:Message-Id:Date; b=ACxQMNA4rcUFG90cMcIESi/Zx1kyxfrmgm4KmfKUntXqlm7QT9E4H532pEK5l5DgL1wxOC/7puueCD6HBqt79CmumqjV2sDVCnb3VTTinc9fE0OpNn/0YXInVczKBeOm41UCzaRxvRg7+0L9id1hbkBRf/5kQVkbe2bSZFGT2oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akRF6ls6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akRF6ls6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C11C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762775393;
	bh=COiCVzjnXGIx9o1sBvTSUiyzsOBiqtu0eUE80ay/p98=;
	h=To:Subject:From:Date:From;
	b=akRF6ls6NE9QdF7FazyG4F7PTYio3eodpujwvj47YFyOFPB6kQkRw24dju3Bw6ZA5
	 d//0lkBO+57H6iS8DgKBb5dTn+/8lwt62a+1z2+n9Am9JUMWxE7ku/GNtu9FUSZTEG
	 e9/GRkfO8lm18/OFqBprB4l/TKzv9+BbKoQPA4K/IcfrO8C/ReEsmkPOGm3I6wITiI
	 JkleFaiVyiwK3nJAFLOKWzlfxMZLlstY3SOJ9JnIzXy/Slr9sOO8p1twOcBFoaK3yL
	 rGZuVzsje+agbD/ge5nGdNPp2v+Cb4u2ia7FLgbK2LNLg4ViuhiAQr5ySKCShqkDo+
	 fYtwPgQ/TRRNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F166CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176277539357.22237.7976257916202564238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec43beffd0fac9dfd81e573b0590844d297ad1b7c30db7e41240ed4524a7ab54
Date: Mon, 10 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762775393
