Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6477233F6
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719056543; cv=none; b=n2Ck/hw4NXyh7uAEjo4vFRu7ROL8uVMyQpjxRnzHvoRbgrChophMoAd3SBB6DVpkam+lqsBZZPRkU7IPkzTI5ZOMJuq1QYudYEibXjvH/2wmaH6ajCJ9KLeDaeujS3FTC56GTPimpq0568gjyeQ/G1CeQ6VmOgAzg2vyGj5syUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719056543; c=relaxed/simple;
	bh=klsPM0XYKLCg7K3smFmcspZBKOj440JZDcfAN1hTUXs=;
	h=To:Subject:From:Message-Id:Date; b=a+eXoQLICVcxKw4XgZHdsDljhIOLzfwkz3wyL5dqPAJFriJ+J5MoBaRlRntZ9bkwsAXEbK+Uw8Y462XheSlMDGu3ZtO1gX9yWLFFpcpcdXnv0qZKcU5xOf4dxfkGP4vS1uz/6L7Z6z3Ak/oH6k6N8KVMsq05LN4NxnL6bwRAV30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrlDOkCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrlDOkCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE688C3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719056542;
	bh=klsPM0XYKLCg7K3smFmcspZBKOj440JZDcfAN1hTUXs=;
	h=To:Subject:From:Date:From;
	b=IrlDOkCj4wxkIGAEyIftye8FzGO7Y+BA01sT0xh4+o19ukKGbb8hMZHS34lvJ0LXO
	 Zo4FylIv10GYkvXkelqnWPCrCUgHkWatmCw/NfUyOyV/FbqsqfYS2PWySyqKeMlxi/
	 T37XGiJcYlOEUrXe451bbOjY1EydHhboUt88biuhPpdOq3mXCBjHUs+MEiVnNxZH5Q
	 +IpY3tteDvBBqwrJGyOdMhkU/XNLscW0zjjVzBzGnc1401r2h1SeOcSuOwb2qbONWd
	 nRbqirnNAA1axtlEx8AwwLUD+t/C5ZMnRraUUyXCv5wQkBOrhxs45DAx8wpYts4h10
	 m5qw2Ql8Oo9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C447CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 11:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171905654277.20251.15528051835371299686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d61bb399c9680b3f9726bdc50191e96e0656b2d309223bf509f3805a0b848a0
Date: Sat, 22 Jun 2024 11:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719056542
