Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9B61F419A
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762579194; cv=none; b=uxU8gcmPh/kyuxYh15v2+uauUd2VYJrBd2Nxs84qVUB9G1hGAZqzlFQ+kyeDdojP1CdifpZQuhjmuhWN9d69nSBGm1ddhqz2wzDWAMOupckLs4cjp7bJSvJ6LH3VldQr2EfWWlHWq2QXhjvgSFLoBjX/kSldkGO5/xGJ5xhmoaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762579194; c=relaxed/simple;
	bh=gR5M7hTjKH/OrOZ5SRYG9LgNTaD6Y6hzlYfAeD5iIQo=;
	h=To:Subject:From:Message-Id:Date; b=N+Pm6QzwW0ZaFSySSsvTDQyNMJ4aPWqa/O6/PdIKFxDNdQGVTibi//VJTVG5Udmnj14+hlRcPhsH4ywfA0Ut7HcEJ7KOUNp58NeerJYs8Ff2KMguOkxtChIA+VGUwB7bogG47OXqC6SeKRUCIFxRL84/6GSACP1b3TrKoXCg26I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsQp5hSI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsQp5hSI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0490C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762579193;
	bh=gR5M7hTjKH/OrOZ5SRYG9LgNTaD6Y6hzlYfAeD5iIQo=;
	h=To:Subject:From:Date:From;
	b=OsQp5hSI0lOvJKcFWdPIEyqPp3EmrC6j12UggKPF9MlvVsa/YqJmps0sJ/e/h7Ntt
	 6VegVyyeViZ6pkdHuQzBP8XLJF2c5S3VnkZateyz2k3ycLPHohb/mgV80WJetLbM2o
	 ymmAiUJR2ji3rHcMwweeDUxeRpZV7+VpSB6euzve1b9pPfsykZK+nGC94BRpcWLLN6
	 PQWBqg+GwmKflHnLvJ1qi1KBNsH3aqZ55Th7QPeYMH+WpOqg5RbQ1WFSli5WTxcFxb
	 uOiQau/Hh+F5DXRBnMV69NzHi+Qlp4XmCN9dIuCZp1Q+XcxLzWFL7wngUBzFtLvdfI
	 CjsD5vSrVghYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A1CCFA05
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176257919359.10339.12026857628979047882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d616b3b39e927b9e48a0266c1cbd922fe1560269df057ec79aa2327119e133da
Date: Sat, 08 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762579193
