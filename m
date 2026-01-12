Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F376923ABAA
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768215834; cv=none; b=HyRJAXLmntTnCA1gsMsUjsfSLuIOGXuhl1fn/6Y4vd2xWIsx4KrTatDCCFrrtMC7Qe/BzPB9GbZB3XqPCPzUsdJvGbqdXkX9xqgV/9y+nOlBpqJSkxCnyvDyYF9MgeOOixg0fUM+0R86V0SFGgl9xF14LGk9FVnYdLe+wsTyaxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768215834; c=relaxed/simple;
	bh=U4cPD9oiUzlVs2oODlYylq+gKi4Qk3ndriXyjWg8f98=;
	h=To:Subject:From:Message-Id:Date; b=ABFwbLsd8W8/NIokpjCChyw5LlEMaSTgbVSdlXqV62Rry/Ouzal3zuTssrhcHsjRlaGONmBC5D6hBgDZM7nnLLBHkBZ7iillWy1yKpCf0DSOEbTWd+Zk3wBPowhkjnFJqxjSMrgzTi+wNnSJ8RGgZW9BMdbhGGnqMqxpgQuexq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qd7R6IKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qd7R6IKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A223DC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768215833;
	bh=U4cPD9oiUzlVs2oODlYylq+gKi4Qk3ndriXyjWg8f98=;
	h=To:Subject:From:Date:From;
	b=Qd7R6IKXNdMKJMYCjyKM3y2nYbsCMz73Fi3pC/pDL8ibqV0bA64zWy9pXTGMPLEW6
	 Ph3/SGNb3BzYX8H2+yRKH2n9OVhCA58RNtk/DzTDujXAWoKiaFKs3fC4IwhLrelfUE
	 l35uFW6js5okVm18dtV1DwzN064L6C2rPBNS0WWRAgGZR7dqRZPTVg6wvmCDx5Y+cR
	 RMIm+TBRSbxP9M454M4Drxk1sa5hAWilbkIGJ/yaj5LOQeWYzuN1b1pNAbVrkazM3e
	 s+YyM/EkMiheiAuR2Tu1dK2boHDYETFyh/KYKs7Jrnt6A36uXNOVqIYHQDrBYxCZOd
	 SrjcZ4og9gSdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BB2C9EC6F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821583359.7464.3189333575620082273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57beb2d9618726c9099ea6439baf1c25a36fa38a374eab6aecff34dbf1bc3118
Date: Mon, 12 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768215833
