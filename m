Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8D21C3D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 02:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716778463; cv=none; b=p7gWV0W4GabfKrpDlnE8YTopX3ocevgEFDmRTtrc5zh7gYrvpXBkK+f8NC/9J6IZK4pYIjSiP3zWDS5MySiAL+VelCTJvgksGQG1U5ZE5GcDU1AcCcVtWau8PZn++tM6krf8IPET1wq/zLJme3bAbHaYhDxswMrZ0l/wh/J3haE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716778463; c=relaxed/simple;
	bh=UOQXV4gEdsZA0CZt+PdAofMMssZX4H2Lzpx/MQxmBY4=;
	h=To:Subject:From:Message-Id:Date; b=DDOizu42qe1X0ms1rRM1M0X/i1iJTWWrnJciUfXpcPeSjxZQyhCzQvy7L1GkK0JCSt9TSXttWYLUwhWMDl6aqo9s/lvchkYVoh95u4e5O60eBt8zI15C7E8vxtr6Zk14yFN7IWRPqmkvdO+IMF0ym339+jttsrz6JZIZd76rPWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=po5V3agg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="po5V3agg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F36C32789
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716778462;
	bh=UOQXV4gEdsZA0CZt+PdAofMMssZX4H2Lzpx/MQxmBY4=;
	h=To:Subject:From:Date:From;
	b=po5V3aggRxhXvqfilJKZ6Twfe9vL7TkVGF7CpCcWw58v9yze5zh93igIhrLaDaLuo
	 F/p547D/gTCSUKr8SsMb5mTF3QtaDLA2t6gPay50p3yfxuoN/jMAQUmt2PLpOz24JR
	 P+RbMKMEFYohSG4D2qZ1ey3plEDH9EVRZfaaIfYolpzsoTXsEyq3GoxpmmMakpavjs
	 To0+767dMHTe7X8y4npapBm7wvyXsxY4aCoJV516RLU/koxR7uqm7Ybt9whiQBAPsC
	 CMqsDsNSYLwF+PvF9lr/dw+Tr8s7PgAa5TzeiOmHt2NiqUfBTixRchiZ/Y3MDgehHJ
	 XCf2HQFa/vgMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9089C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677846276.29944.10096126596332055720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fea180274f7d010a69422333205be4205e2312db7f5b88c27ecc78b89739d29
Date: Mon, 27 May 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716778462
