Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8D833D4FE
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771431294; cv=none; b=f6YpE16N2lowG5fI6u3MnsvFjIdp8NQFU9ms8E2gKOCdzFn+NgKJj0xtKqRKzYXW14Ts+Y7NNXni5iIe46E6EShHm0kPNw6yaRwf5piQ71DnblTbaF9ed1jdBQdZiebqgGj7LnqCgMZ3b+Oy8Jojt/0kEUc7w0emH8od+9Wj2no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771431294; c=relaxed/simple;
	bh=XqMvsL2wUAGy045ETGG9GKEjNte3kiMGUDDXDrqNZvE=;
	h=To:Subject:From:Message-Id:Date; b=qsShDj4BYQSP7S1EBKVzjXvs2jZlcLNRFFTMAB22OeU4ld6lbQSZYlycQyB53/ATnT6+n5NqxiJO3/vAvcEUkpHbhs8nFFGqaBCcAEEuJa52frnc6RSSQaHNckOJDUvXjI1bhqaAGnpL+tk2CYWsaJOP6YqGlcqCDI7BoGSqO/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRA1lJ2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRA1lJ2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56D9C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771431293;
	bh=XqMvsL2wUAGy045ETGG9GKEjNte3kiMGUDDXDrqNZvE=;
	h=To:Subject:From:Date:From;
	b=bRA1lJ2rEUhKF6LfCN1q0wjGIau11VB7SDK6Y1tphRcSlw62FFd3HX/qu9yeJVine
	 yHj1oY8ILmDyuN6du6y4V9uEf/XHQmqG4Z1znppGP4xtX/1gGtZ/nTch5xVlcwrP6c
	 4vbMHXujUQiHUT8MSGUqVVnDJ0VcCnFB5R9xSqWGDznmFpS6GfOng7ilStdaux14jF
	 GoW5yz8a1zkfv8F7PCsdm/zjzYNaex9gpcmqcTC/kpZVDMEKUAW+J3OduVa1Utxaqh
	 4v/haoOfScq3NOIU0ASgNyveDdk2jxQmIjf0ySGNLB5kpARbRTywCNJMZVRH5gyZsQ
	 yJjQ6vskkTk5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B85E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143129359.12577.9218853943889752799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246821218499a276e3ddb00c6144bbe383dfa477a72e1130daa83463a1fc7cfc
Date: Wed, 18 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771431293
