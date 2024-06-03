Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 505142F3B
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717384523; cv=none; b=T6NNNtEcSDqeJgE87FHoMt/2CUaM42ZgtAAcf2ZxXwd/VeroxXTrNxUllHEPFOnBbqISaTAgWAYVj6Zna1hiLgnPktZJvHkjAo1uIMOfbwCEPrYsnS/tC0BlXJbCLYBRd+CilGMX4cmAHzKgBTB8W2ZYuFqj+ksoMNrwiPtz5Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717384523; c=relaxed/simple;
	bh=b3jqLFSXybSr85MVDQv7himz/jo+IY0cYdoLqfOCI2E=;
	h=To:Subject:From:Message-Id:Date; b=CxeLXN73Apr4W3j6a/6vAHKH/cWldK5hRbKWrV6j6HIDaPD00N1hsLWW0SBvt8PkWpWEeQVsmId8I3CS07i1xKT2FI5edYPaYaSQ84yNyjs+wPutvXTwvc4g0cMy/WH8cv/13zPwZohcTK65Rz5ZiwKnIFUHGEujTNe3qvwavQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i27piGzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i27piGzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD9FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717384522;
	bh=b3jqLFSXybSr85MVDQv7himz/jo+IY0cYdoLqfOCI2E=;
	h=To:Subject:From:Date:From;
	b=i27piGzUqdQU4oaeOfCItc/XAjcVLK0ukRs/7BPDtgBgiLawODr4u8i59dck4VcAD
	 yAbD3nnxBRDFWlJirie/ejbcs7QqgvBXd0OqOS/4yfJr8zEepSVo1wI9/KXA+OVier
	 D9vmLWZRlRmr1KiEaj8UvXkgLhiq2B72U1yj/hvb5h8XjesjZKLZjME45+pYTczfeG
	 QvraKjadS2q2dsed0d2uCC+kLQq5MYF6Syn51AsYO8IWiix0fKoNtjQ/3guEErtVEj
	 F4hGm2l/wPUWbRPUvkGyM5z6CJCqp/eR37VCtMjd9MQ5MWIcs60VRk01BwbDcgDjMo
	 nWfNH6jIEGWcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CA4C25B74
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 03:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171738452276.10453.3043037270989929191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf63a89b10946b1c6145c701d99d8c667a15e605ec6ef7031efd278e05ac591
Date: Mon, 03 Jun 2024 03:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717384522
