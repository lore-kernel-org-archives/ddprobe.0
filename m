Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD71EF397
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757170794; cv=none; b=oVdiN34plIKtXoCxde7maCoZv3A/OyTcBnwZCBj67iLZ9a1qhLfiZH3HcwTmj5FcBxDqOy/6Jl9c2UAl5KHKHM5H7ArgDGhayEg0yv+VscGBGhV1ebryXhHUkN6ZCApHL5mdKCqTaEylEVFMZRy5MT2MnGYiCMSqMo9Rl8QY2Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757170794; c=relaxed/simple;
	bh=CUJf61/6f71Yb8+Xza5EEoEqyC7j4JKgKMLj0gFpLqM=;
	h=To:Subject:From:Message-Id:Date; b=ksrjaxOJKducz6P6x3weooRPM6eoQ+AILjAG/b1q5TUFyqpf/vr6jQ/wXhwl4th9+AIna8OB4FIbPxy5qRXHm1MaSKldhWvI8mrX+dyHQd1asF45wJd5wyyzZU+yhi1wzBFpvxy2wimLp0hmGYvFixv9ZqzlFQmimdklBil8TzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzNWyLrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzNWyLrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DDFC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757170793;
	bh=CUJf61/6f71Yb8+Xza5EEoEqyC7j4JKgKMLj0gFpLqM=;
	h=To:Subject:From:Date:From;
	b=ZzNWyLrc0lN2viWJF4p8L8bLTWIeR5YsnZskR7xtx0TgqUjSqmhZMrfbz903Otjn4
	 x4igPu7wn6+8t47ZUQXO5yN//3usy3LZJ9UCPRwvDsFvWjIdqMkeSMUk0hQHOY2v1M
	 +ODNHxFA4DQObeBYn+K05Jk58cRuPNdwxKTPseOSvHff5urkz8zYf8TpjtG42ToTPM
	 Voj3QIE7NFrChmxJp/LypBA4t5xmn2O3CXUI4PA2rOmajYBd042CuWRghSuRGAvjKj
	 bRPBe6npzlpeh58UPFT+dkwYLpIoFz+L13MliKzb9uUiQZTjFiFamliwAjDzDxgW/x
	 2pL9eR7f0TN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA09CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717079357.22548.10375536371648332507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239340bfb70bd6fbcb1cd7a8d4710c8db053774b46ebc781c9cf680a245c368b
Date: Sat, 06 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757170793
