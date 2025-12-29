Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FA221D3CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766984634; cv=none; b=a0IaxjJ7yYw962Jf5aatnuEGAYpDF57P37uhjnbREOOI0RWXIJjZXcOnM8llY7x0bKzRW/E0/+z0LDCduoNyonbzGge6HiXXmMubjsYe+DkAA8cbcjSi6GMMKD5KVjgy4HdDl4B56nC88ZW7II3HDJqj7rEHrazG34hx1O4H/do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766984634; c=relaxed/simple;
	bh=2obUxRg6wAIncdPX1LbbhQKs29cOM0Muxwdz5TGYxJc=;
	h=To:Subject:From:Message-Id:Date; b=U3XJPBRI9uKY+8aSWyRpzD/EKG3T0/wjkw29LJ4VgNj9+zhGJw7G8+MKXQidpHH380ekOw+zszI7HkLLAsd0NGbVdfpOL05lYc92OKz3POKoNtUCGNLQO1NvdUcI6+wnVn6N+tSs90nvaNUCyQ5Lqi+GbC2Qlnt73n4VshpdpbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXOxnMPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXOxnMPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC60EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766984633;
	bh=2obUxRg6wAIncdPX1LbbhQKs29cOM0Muxwdz5TGYxJc=;
	h=To:Subject:From:Date:From;
	b=TXOxnMPEQjSwMOCPIpzXG3wTWf4eALyImOwmWhTO4ir9lEM8vUN26AyyB2dfDrZs7
	 vyijLFwfBCLAA8dzyYEr4Jd9JfmXFI6Sd9vsm3BbTfr3JMWfVJkbd+7aipHzoq92Co
	 Hzb0LKt6Gnp8OtoZHtbp+ZwUCJrrHT8HIiyRU8KSuJ0i/yD66NawK4usE06hBQij9e
	 Z0bk1GAgOEucB2JIFq/qUo5J5K5FACHeZvYZXQz/eaGA2pBFCPvHPLyyTNOL8OgZGN
	 HLekYpxpITZZjcyjfHdPySunC5kXGCsnsfttEHiW39YqKw/OJA6NAV6sCXyJvwrjsE
	 2KMnGTSah6DFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B9BE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698463359.16853.2474869709890691084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b6a3405777f52f4dfbe1f8eff021c071fc1c47a67ca562f3e49b8d7942fe606
Date: Mon, 29 Dec 2025 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766984633
