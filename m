Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3F7E15746F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780816474; cv=none; b=IHbZLc5ZWIQxgzUCPR7UM3ejKBttp5RAjZ0w6OGkL89hjmT+yOpG+O1GYxnJphTVt323cm4DKYj4gIcmAGQ+wKB2SrH+uMiUz4TNqAvptQVra8+KnTyHTphZu/wWW4bzaIRpX4B1fU3MyUfAuavIT1bR4iyBdu5tu6K2UF08D4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780816474; c=relaxed/simple;
	bh=mQdO5xg/hp8takS5dRboj8VSAmG2tAn4GF1FUjSI1fE=;
	h=To:Subject:From:Message-Id:Date; b=dgekak+P/NipzIyS5IP9EnpQXmLnFoXfXs7nnGQIqPFEXBHokpUz/5S+bE9JGS3IAKFLbsbXDZwlrkaTsiStOI/EJMTnmmByJl++LLJjn2xDH8P/1wlYo1nLfJocgn62AZyjBPMA2feh39MTuTb2EGrZrsXYV/L0PVb4PBlhszk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5UFCjCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5UFCjCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65BDC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780816473;
	bh=mQdO5xg/hp8takS5dRboj8VSAmG2tAn4GF1FUjSI1fE=;
	h=To:Subject:From:Date:From;
	b=P5UFCjCwVgyJE2NXg6Lz1phKihEB7+byE4hs6jfuoIwodmzOwx3i/ofrxbNk/yZHD
	 0VMZbFOVQIja5uMxXY0E9MR0RY34gyuXmklFOcJgVEvb3jtB+lXOf1d2xpUcBfU0Xw
	 UvhdW8t8YKge9teG7pnE+lBt9h0amLfgGKRF89XqqV+MJC1zbYmtnmHmCQ41A0XMlg
	 JRlvhDc+Na2rlTUOtn5OPDdmT7TUJBjeSah/rKUXD09Y05vBcw70Wz1N7Uwfu0+AaE
	 zOyGvUr8GRfCnf5MbFBXrKE6DHdjjhhUUNaWjHtA1AgSNfxV1TElrZi+kvOX2SWxD2
	 PXgUmEQnYkm8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAC5CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081647368.32232.17189194312124478733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464d3f090fb9ab3606acc4fd5c556daaa2cf3c113c6fc3692db1bb29e4c0fcbe
Date: Sun, 07 Jun 2026 07:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780816473
