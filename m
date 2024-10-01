Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144BF1C2311
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727793954; cv=none; b=X9dTGeoBprzj1m2bEo8e+4ol9Xt5s3WEzKVhRzwRwL8+otquRF5ABTol36gSATWqIbOlOOsOerFKD4/2j3nkGKs9CFKBp2lq8R6TVgbxWyw5T2yv055rkT6NOgXNotsHsqA3FY2/zqCZkzfZgPAcepaXxXfa9LFDwao91SJXCIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727793954; c=relaxed/simple;
	bh=e+FdWzODpCfPfxlby7YFf0ym//Gzkm1GZWT27nUBpwI=;
	h=To:Subject:From:Message-Id:Date; b=oqH4oFtBvinrOdnuOU/ko5gO6Sap/vTTYNvOMFmHrKGEgigHD5LVKmuyP1VekEt5qo4MjR4YdObrk06uOUb8l7RC5SuCT7tzzgdylivK465oeuz/J621/0IBMdv+WfYpj4OvRzZhSRUNZfmjVcGIyolj3w8zolDL7TIT5AZW0DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjE0xNhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjE0xNhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4457C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727793953;
	bh=e+FdWzODpCfPfxlby7YFf0ym//Gzkm1GZWT27nUBpwI=;
	h=To:Subject:From:Date:From;
	b=YjE0xNhz3EJMxkIVgc2hgab3PahAxbgTwLuHQCpjE3cOd62njPhjqwUIHZ6ZGfgXr
	 /yNjKfGfxOzSfB2+ehFGFb7qQgUvq/n/gEdEYuc1lky8im+4UFgusQBq0ay73xfO6u
	 ZtBleo9HXYog53A7vYbm2C54LQWPNC02+7mEtQt0mtR1pNvesue0p7o5Wbq56R3Loj
	 /teqdrWtHXrqL+QIR9EGkJjpbufgFyQ7Wv9jdDrNMfLW4gDyPCOC17N8h5/DopPtHa
	 DhRSW5+vv2Jbq5sJbhyjxWK58GD5oIwciY7OdJEh6fPKZI+IBBeAFHxN7Dy+3BxxLr
	 c7EBiWv8fNQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC3CEACD5
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779395359.5963.189738465752147025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda5de2761e0595ed8b6412ecd9d50946c5b41d6f1d259f27c582e9f3cdbbe5f
Date: Tue, 01 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727793953
