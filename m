Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D8D42EEB1
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778515234; cv=none; b=MI7VtTykbKeyeZiZJDHmgN0TYc2ycQqpuXKjleARnsY5t3N5FHwj522kFS0pNNyJ0wcWunMQh3CflbSURJwmqJlV4N0l7NvffzBMRKAG9b5QBwNWLbA/Nd3hgiZifkxl+nNPO4nV76tpGnqurjT4BbilM/pMgmuRRZld3lRcOJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778515234; c=relaxed/simple;
	bh=lcA1LP2CBrvIoqlJAILrZ0BRyLNwyTHP2tfkP/6cbzk=;
	h=To:Subject:From:Message-Id:Date; b=ij55g37gF1ZxT8Z9rFo/L/PZtsOT9Da1gaSL/1aK9IxbOC9X23TCQOgiO0Yv2bXZPmk759oAs3lPnPe+Zj6h1nFWd2d+PNfZ6PXI0WZn4QgwsM/rta55DhfDqDUyjmD2UcYedt43vO6fzCjcSYM12FMEKPHSSF4Q6jgj+LiFDP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wx9C/PwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wx9C/PwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92B4C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778515233;
	bh=lcA1LP2CBrvIoqlJAILrZ0BRyLNwyTHP2tfkP/6cbzk=;
	h=To:Subject:From:Date:From;
	b=Wx9C/PwAcGDDNK6ulS1W74gN26G7nXhA2Ng5tG0Z599zl4doS/vgv42LzCopXPZkO
	 xk9ZzBvL05+VsEtjIoYMDW/knSlDz1hYr4VC7tl3NB91RtrkDogsnCtQruDeMpkC+x
	 z8Xq9DEBSPSmsOi2OLIzkWviPUc1xStt3gW9B3cTQ5OIzSsmtsm1mNlStnqwUnQQWV
	 KJyYlvfvrQykkiY0qYbZ64zt3vlXrxcGCdddfQbvMBJQMGQZpccejnzSQJBgdj8uoh
	 FkO5lUTOocpqMJ5Rs5obQJi3nEnmFXtgKPhxfZ5p85AoELhtWsDLWi0lzDn/7lSJ2j
	 S0GINdSiLuPfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB215CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851523369.25063.5711747893263447408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7652a6196efbe8104923debed07121de3b69c79394f5a08f97ce5ec86fc8c341
Date: Mon, 11 May 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778515233
