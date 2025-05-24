Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323E812B93
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748098794; cv=none; b=Iucj9pbFTixJUyVgphNFyWvuQMwvB4pdRRlnLCAyOz5KhaYD4RhWZjEExf5emN2DtA4nZ78gpT016cWS8TkGEExIszn+fo++v4UGyOYLtmbPWxZhtE3PCb/dNq4vynW/TZYFNVh10dKFIjQHUSLAwOn6g68l9EH7rOnnn/rkK1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748098794; c=relaxed/simple;
	bh=AToKpxkZ/N9sOdNiMh9eyRzLi28RjlvXJv2SpjbjxnU=;
	h=To:Subject:From:Message-Id:Date; b=jh+5m05bvGqaiWbju1gNeVOg+7Ukx/L4WpEdhBku985fROMX6hzJRQ3mPq0FCywDfUBSR2leyf11ox5fXOAlGBIio8+WYdWaeile+g3qlwR9N1Xw7u1gslhkUXTHyN2fMh7Mj+kfRN1xrgOkklouZiWJUuhWPbsw758mRHn5EuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQdao4rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQdao4rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1419C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748098793;
	bh=AToKpxkZ/N9sOdNiMh9eyRzLi28RjlvXJv2SpjbjxnU=;
	h=To:Subject:From:Date:From;
	b=BQdao4rk+bJILpYxy7meKwtPjtOQ7dcqiQDJuSDURQ65qOTWC28iXeEL25sT0/X8E
	 t2onwQic/LHMeK40zJtvqmQzvabxfsMtObh9doLaeuP6BDOuoNP/B14yC3nwJaF5aA
	 baBWNSg4+Qjt8AxVxfxwi9KVnt7PPe+CecTOetcs1SiOm+zUGOrhUEFRU+CWnEh1lG
	 bvwpYwe2Hq5SviPIufHDoeaBsjjIUfJeFKBdPFzVrc7yx5ajG3WNskq1Ojdt24z6a1
	 GNWPlznIe+FCMqsOMoIkUZbHIfqrvK8/zvn9yKJeXeL4tmpkH0u3uAG/jJBfnrQ0xW
	 nLGUDoqfRFf0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FFC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174809879357.29142.14847577132538589768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506c3f35128be6ea54ab30fb406d3ce5a02a4845acade6de82a59b1641baa81d
Date: Sat, 24 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748098793
