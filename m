Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E78D4343EE
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784562514; cv=none; b=MDMOCLARkblLlN8WjH84TnQxz2PRvh64QMnV+Wc09wfXdi5iwMZ8wAYOJBtyt/HKi6m8ojT3aCbs82lPaYyvuFOiWvL0zEVpPxJCqHIjbURA4g//hmHviBmSXKet/G7yyW98ggI3CygCwQ7TotjRImpr95NyIaJ1jmnL1qCwM3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784562514; c=relaxed/simple;
	bh=1wDfRCuywMUWr8AKPvuFoGwseH0FVxV4Rd9yWSfFzb0=;
	h=To:Subject:From:Message-Id:Date; b=FmjJaTKkAjlVT7yyoDaaosMP7b8kgtVjCx6C3EwK9q6oCARwp7T77a8HMy61Q660vTBeAtsTwu4A0hbOVXV8gghmS2xaiwvTkY120bDbvqTa/0m2a8H3hRrTxmtIB0dxFGIKZly9+k34Mz1XFa2huCqNTdz/xLrz/6ATCr9TSY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hyk1mwt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hyk1mwt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0544C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784562513;
	bh=1wDfRCuywMUWr8AKPvuFoGwseH0FVxV4Rd9yWSfFzb0=;
	h=To:Subject:From:Date:From;
	b=Hyk1mwt9GNDUwqO4SIE/3WgCqRXnaYCbdAJma3Yn0y2HqU+Sr3imJCRVqAZc6RB9m
	 VqNk9PPG01FOwsroduW+oKyqSIbUdDessGzrbQ7cZWqXANExoChzEEZ2ZlaMvzzuW0
	 ZN9RFgZokKnRcJ7Su9PFE61ktkO9Z9lu/zydXDTwZYfqKjsXSwfDPLZpmZIQyOHKM1
	 RUBuuFguaV7A5865D6Iv7EX2Fla4t9ZuMYXtnQC92HGzlxkveZI9cxOrhTnlakvkES
	 Ppopy2x7/z6Z2AQPzD/pDvov+pfkyD3gdtqNc6kBFVHCVXMtTxZj+40PhKavwWV84x
	 XUZGthZ+NCo/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE5CC44520
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178456251368.1479.6906067380100239930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c9f5f7ee5395f06a723dd6a59aaed57594c1bf68e893cbdabcfc298048a37b
Date: Mon, 20 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784562513
