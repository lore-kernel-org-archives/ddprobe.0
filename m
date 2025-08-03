Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322E72C190
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754195995; cv=none; b=XCTi00qHcr336kKbQwSWjTPvr19QUQhiwKVGG7aJT1funOVbOOl2kZwWfwppWa1oltlvVwBbQv1Iw0ctahpKnzNYubPnabCCyECIUYQV+ohoQQAf0Ry8KAZ5927PzH803ueot0zSuuXww1el+Z3oNQ7zsTshZJ6WnVK9FqU1lRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754195995; c=relaxed/simple;
	bh=dP87So9cOtqu5oOqynQpNf2i22Xzxp9Ihf8PkHLkcuQ=;
	h=To:Subject:From:Message-Id:Date; b=VIrCDfb2bhFbQkApra6WRqRF8yZ24/VLsJLw9kbShQLQaFNyuueHQ9N17XoobPYrn5dc/DTMOcaALnluoeZEB2nYSkxaCvQtNWPhICE6M62n9ICQYnsR54NeLuXo1o5Ojj4x7vMJ9K2qt7MF1qxkSQNy8khQO+jl4rPl+NMu+kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0lmsiot; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0lmsiot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26F9C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754195993;
	bh=dP87So9cOtqu5oOqynQpNf2i22Xzxp9Ihf8PkHLkcuQ=;
	h=To:Subject:From:Date:From;
	b=c0lmsiotjYQ9XzMOjCCa01pRRVFXyiqnGVm2cEdf/xJXml0mJNQsrPMkZHOZZRFmn
	 ytZQ0tRBJTrwnyzWBF60AtLKR6IwlMBc873NbruSdqBnzSZNc3fM/qZsVVjvQHRqDL
	 cSSfHxb01daNUxAgJIv9jZ/fmpLKGpM43sjFgjyBcRSjGBt9dSMmqmcFMsdh7aePv4
	 eNuvQ7LKi0FDAtF7J2wdaVCq9oGqxp0Sv2uIq2ciyjZGd8zl7KmpxoRUG0DjeMLBIJ
	 C3zsNJ4fnyfRi6f+KCl/BwkJLzlSoW99dNY8uRiSMYJoW4BgUUl97H1hiVux3tGTNk
	 LobO+Dy7lk3/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F21AC87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419599357.20782.7818662626998765146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da58bc54932d8615327067adf6951f41c6d7169984c5e157e3933155a86d84c
Date: Sun, 03 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754195993
