Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B5A136A
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718756363; cv=none; b=HXcgplihnvVaHNw3OV7+mv+ADOz630JNQQm5L2A9Sykg0VXeuKAS1EB2qtAMAiq/tPlCwSJeCuglXg3tyqyldRww7e/w36VK1UuIDE1ASA9/qa3y5EuK6X5YyPOzfba9Bkmz0/bzvRDcdDDOO6ah1QvI+9lGuGgxbDvTIyPXNKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718756363; c=relaxed/simple;
	bh=EJiaCp2mr7fgtfCZVgKT6FnXjQpvGZsxS/Nh8+s1G/I=;
	h=To:Subject:From:Message-Id:Date; b=uvVT542O0PFp78JRg/usZBgLCeaTpfoEwljjMnKigxLCBAllWlo0yDjIJCtUgdpTovgVy1pUAWn8p4JfEjZUYQ3I8tiUkYYFQRo4U2lsivmVSuDNUeVQLf/K2EWEPqvj/PpRRu52UiJ3NDMPRitJ20udKV3pqJuz9lNybv4aqgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4ePBIOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4ePBIOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3477C4AF1D
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718756362;
	bh=EJiaCp2mr7fgtfCZVgKT6FnXjQpvGZsxS/Nh8+s1G/I=;
	h=To:Subject:From:Date:From;
	b=h4ePBIOrBDTEAkZumX0M5gFLFkqxWqpZsQiR3KxVcxHRhgMf/XpdGMsL38jWRIAkt
	 QgMMha3ZHtqRjNSS/hS3vOjRoqRiDLP6GWeWgUJz4vmW7IyoB7VEwKRcUd4QoIVIMy
	 15Rpjj0IfAeqMkemyJz5iV3kHFW3BOuRt3Yy3tCnu3bd5OTNlvSjH2adroBbfPwovE
	 zIvKu8Vd7Oy6Hx5Sbo80IGLYqzFjEZrG8WbHFacrKGNciEEz7U0K8QYykXmz00Mv1M
	 KgHnEV/KYu709oHiKNCmP9IOz9T5f6B+c2r85dY+yN6pjUqMy6FUSiN5G0VPCoQICd
	 MAoOjOnyx2BYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C56CCC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 00:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875636279.24183.11242545828755615377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba79d02e5bed2b61f1de98ced2fb3ef6a021992086b292f6cb023bd40adaa62
Date: Wed, 19 Jun 2024 00:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718756362
