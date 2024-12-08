Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6F913AD03
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733666754; cv=none; b=k8201ax7K1SNEv2pj84pRcOufrmKwIZ52HA+FqmacastB8OSb9Gqmhn87Fzuk+TuV1CPCnASbQ2nIm6V+FokWG04eg/vJSJ9ISOEQb8Fh0C61j9ySfDropvO3mwDNkMZ15ZLNxdGCyPph9ovLIb0W8Grz0rEbIhCH3ExRgWOoL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733666754; c=relaxed/simple;
	bh=SGEUvn6orl4rjgVxOmVi/zWYUi583EFYHEwG8D04/5s=;
	h=To:Subject:From:Message-Id:Date; b=oznbQM/6bXmwkXA/tWXVW30nfJMbcbCRdL7SErgDKYbNke1YPBn7WFKs9w6s/xXBmEzR57CyWxnQMAfECh7zSkbbi2LFBo/+ysEuOYtAit+cl+EcwhQFPk23ShkDjVgJ0OctJfNcNCZBG0NM6Cp801xOmHs1NXHf+kLZXQNI6x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdpXsrRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdpXsrRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6EEC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733666753;
	bh=SGEUvn6orl4rjgVxOmVi/zWYUi583EFYHEwG8D04/5s=;
	h=To:Subject:From:Date:From;
	b=EdpXsrRxzDal6WhQQfN4D2IH1GCO8aVAMAxlx0uNtYh+WumoNWjv0qDC1X8vbJmzO
	 +A+8BsgGVgArJlE501U1Q2FtYuegqzQY65nDBgW1ztLruh0B1Qsh2GMycpOmDQPKQV
	 wKORPZvTyfJI0yv0C68kkEJPnJHdEeJjZfRyvEvM8gSg4zPlUFI/GnxFpue1juJegu
	 lhPoLtgyrgYerJG2Ou28yo6JXyXUa9r1AJ1zp0a+uaB4cRp+pQ2MM2Z35ISGTqPLjM
	 1TxmG3C8glPVXNnUfaqvneDm8KeWikbuEWDMEVMpqBBVytGQStlqtQDnyF02CX5eNZ
	 EDYPDTXLoKU0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96005E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173366675359.8370.14205392650699320703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd2db3cb7736d6740111c9360b3b52f6d25568edad05ef5638d039b5b999890
Date: Sun, 08 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733666753
