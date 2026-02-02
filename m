Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F50139D0A
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770056033; cv=none; b=kb+bWb9RvlsTgJ5dTtqA4lfEbhtvkV1DyGYwq5f6+g/7RRjakJ1hkIx9e8FvCCW7aaireiNpMChAUqgKe3bRqJHQp2HGksSc89hf7uyMdnuQGKdlI1gP5kRTY178krj5efnwNQMxoLu2hH3Kgkj8vUeny4VGRLh02CzbKcG6fKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770056033; c=relaxed/simple;
	bh=1HsYH/+JvSbmlqCU0XY1+wp5GiST8PYgBKrTbxwyY8k=;
	h=To:Subject:From:Message-Id:Date; b=sSHcD4OaWFlnlQlMoTve5va2Z5RgzHDPIYH6x6xE6iPKdS4kcnD1aZIXmPpMfWZmZcormVULtH1t7d3voXwKhT7Y6rZQe7aa1pd9ywa0EmMuCZUCY3Nz6rGXLDFmQ31DSH8v80cPDlVNazCaPd3sVOFhjLyFlX88YCt1AUG2yW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7HYQsuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7HYQsuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFA8C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770056033;
	bh=1HsYH/+JvSbmlqCU0XY1+wp5GiST8PYgBKrTbxwyY8k=;
	h=To:Subject:From:Date:From;
	b=N7HYQsuzoxkQgFwjp5mhbm5w45mbXKraB1kF2GRcdLhTjGXEHT7S1AxyIA8MqotTq
	 Ht4oQMAyRqEnNDUAjFZm/cYlYJw2HBlEbI+rj+6Mv84Jod3FM/PT4lqpTNghfbMm2A
	 FSkBb9LVna0r8Gu8tx8rC2pAhkvfFh5BeqgI1Sn78xPwLgpbj8vgmNnFeU7BAiALo7
	 VWXMa61P4Et2UhLTON+GMqugcVXipdy7uJmUPROs/WZrH6liLk5Sq0CbO/R+EvOVHC
	 kdBXbef7JRxq4YLtOyf1z4ru+uPrBb0QhM5VUfjNMVDsU3jRpA+5jt34YrhfOaYXRE
	 LKSlq9sW82tyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964E3E7DF19
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005603360.15452.10433447764940545759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8616ebf18d95773f656777d62455366afc01a4fd939b1c540b23aeb78fc7b49
Date: Mon, 02 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770056033
