Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A838223339
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756866594; cv=none; b=HIUAXByKR831lgfd5Dox+yubB3IXG2d1+GpDlvN6OGBoywcDXBpzY7TOEQayrOSAntWEJUos88YOyoCPyZemvlDyUGvcfponP6nA2uk07R057JHSQ3mHI4U2f+DEc5VFMpRhhM7KYVL9+F6LV4JYTuGpksjcKgc5f0Yynfv9eVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756866594; c=relaxed/simple;
	bh=Tug5jjpqhD3UDm8OdmdhaP/7yvTqpQk8j4G4QlRSMZM=;
	h=To:Subject:From:Message-Id:Date; b=SD5hSRnSJMdG4r0lSOI3Y7u1XbBU2D1G5Gr/Gf2ZOCYEp81yYvoVP9vfemMg4t1z710YVEzg7ARbcQFCPkKNpeEc3r9UOADgr++dvYfScyzk4VrmIXJd6U8zKyHO56BdybnmBZ/roLK0hsvxIypqwJqlbnliSb+zWz2YPmk2ojA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/UNtv5P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/UNtv5P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EFCC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756866593;
	bh=Tug5jjpqhD3UDm8OdmdhaP/7yvTqpQk8j4G4QlRSMZM=;
	h=To:Subject:From:Date:From;
	b=P/UNtv5PwPDLasBROidOmhJf/DuPzJo+LSbNgBt1BB1xkBkv9mLadoqo37dqMN2pj
	 Bmbljpr+JASh0LN/jWVbbG6HHD2Cb6iN1ppIXd86wONSHws1AwgYn8PILka6+x1fs6
	 jLQzlBujDCkg5JP+WG0V32mIJjsn35vM2wndP3REoZhGRXsywZXNjdhKxl/C/x5Y6C
	 korBeCstMrBYNPftka2F/mvSAMJqfAtdDDzF7wIVXpCZ8IqccjXXX4z3PLtfeqC4lP
	 Rs3ljHwSpR4ZPg7KdevH0eU8IwOiHGGU3C2hjUtPxz0xh4++MrMhTie3Szx2yrxwis
	 EvoexsvdEDBJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914ACCA1005
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686659358.26034.12176011075389936765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c200836f943e1661f02f16dac57e97fa3f6f95b7b4192faf9ef748c852ad4e1
Date: Wed, 03 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756866593
