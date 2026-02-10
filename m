Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26170314B6F
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770765234; cv=none; b=VfYUfTEoP4xIaMOnn26c3mNgO1mEqkLtA69aEupV6uY6oZi+gdGkBjg23TUKlmmTN6B8NGPgFpxM5gj3nZy3reLXfdK+y9ip0jdcoq8REBSEbCdiwHkq0X8QJN+8LYYfVr9q2yucgJJMrJZwcNAGKXxOkZYRdnhOjHROyDeahD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770765234; c=relaxed/simple;
	bh=xYLn6C46JT4gxZIdODaCTWxNHjFiOmGQHDq7jXxUlNo=;
	h=To:Subject:From:Message-Id:Date; b=FLvk6zuIcZpCHVzaea+xvtdBRJDOhdfRrF4uTryy9Dg5NWGL1x9kWpI/ZENKC6aRVVUw9GDxHoziCbBPCai9ocnQbTQ8+n2LQGSzSDhIQ4eZyncM/jGOy6SKnqcE0KiKRcsr4A/Vzt/zHp2JQK5ALjq4Azc2FZ0qd14/B5ZHb5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MD+DQKyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MD+DQKyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2417C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770765233;
	bh=xYLn6C46JT4gxZIdODaCTWxNHjFiOmGQHDq7jXxUlNo=;
	h=To:Subject:From:Date:From;
	b=MD+DQKycs4h2cDfbeVoK2cV8SIoGGwe+j4DyVOFtpZCJRlefl7BEZPurR/0izMZTx
	 IFv4qpd8qJzeOiGDa+G63ijm24gEvYVIEN72Q0sHSWQQYbJfG9MaOiG3G27ytXqhqM
	 clTon6YjyccS9fJD8fG1UHZgPrhfp1Zo9tqpArPmWXgKOiL9V2hP2/FbZiUT/4QZa4
	 zuQHXC7JIxeP1ni3/WcYbQkyFMIL+VOoGV3gphlgFAPPqitcWeF3t+9DX7luGz7KP5
	 OVp5UHDa4/4v+CMLUWJ9BaXa66pHwmAq3u2IMUmkxbD0Rw/2deNDgf2vrGXA1By1KC
	 HmZ7xGb3xIPPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA87EB2700
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076523360.2312.8399396189564415071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ea2e611d840929d5112b12b9d997c7aaa97a8ffb10953cae826e0a5fb84bc5
Date: Tue, 10 Feb 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770765233
