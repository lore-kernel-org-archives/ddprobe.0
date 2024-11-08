Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1939F19884C
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731085554; cv=none; b=c1u6C5VYkadcMdJwRjnFUet/d4FpMl+Oo1xPtZDeMxRBEdasuzh78Spoo7S72FBf77z7d7YGg0pJjQ5tmlg3Tx+gmWzC++o05J0PVve8fSB/8mBMFyVi9YIjt75V+7A8tv1uH2yGFvytFvYg0fXKDMKHgApa0tMt4h6q7I0ylys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731085554; c=relaxed/simple;
	bh=mKeDOpXC6TIpup/H0DcY+hUqvaQ2WeDuiuK+BjonJl4=;
	h=To:Subject:From:Message-Id:Date; b=pgwE+Re/8IoBYUdhNZaAuw/59jL8mcylzM4RRAX1++SQV9EFTW26y3M5zOMCU6bEaT7Kno6dq50TvylpADyANdqE+DYu9GxMduyC7Ho6XyxNijDOSNkuLgfXdXnUtozTRJvJdRd0UUVYEN33EPVK65GaXvw0F6LRgDrZKhhsxvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Advkh2IP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Advkh2IP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCADC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731085553;
	bh=mKeDOpXC6TIpup/H0DcY+hUqvaQ2WeDuiuK+BjonJl4=;
	h=To:Subject:From:Date:From;
	b=Advkh2IPK6ZS1Gt+BbPOMxLgFwRPofyxaHbTOwpNa/JwQvtf7UYWGKly7ALwqXtqK
	 MvQkqhqxYUvfSryjGWA3q1etNQRdD8oZBh5E4IcMSwDWlxfQPDqla0OUednDjPvS/8
	 5uWlRLOItR7umIZI4juhohdDHxTWUFwhf4lzfzR9M9lGurMHvuhZyb9zZgo0mcTtAf
	 1UMmJjqIQItUXrcVY31ZwdkAQsOg62upoFE3LjRDOUT4MGrOwuugPMMk6U3zK2rzKr
	 0FC9JNDcOPtGgxWHA4JKfP9UYKYgJjgLD0/pb3xF78ZuCV1eCAGEWfqqaM7dFYZv6M
	 FNMtBUsqC6yWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92259D64067
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173108555358.5530.10869509187897598443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8f5ca005dbbe9d86d5dbed160764fd54f9640afaaee89c7fa2a6e5466aeec9
Date: Fri, 08 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731085553
