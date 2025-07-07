Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D17928E7
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751852994; cv=none; b=U2xK6phzhrnpzJzuMU7zu02uIWwq2l79nFb1MyiOjjFUartOl3QdseQWYb6qkeQMQyfKIE0GrAt9beaVmbEM6Xo35uXIV96ujH2HFkl9ZnH9iB2uPGdPqVK9t2Iiu8IFccRsEnPFottP0I3+qHICf3eokev24ycENHj3ATWkICw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751852994; c=relaxed/simple;
	bh=ylo/+f0pbKu8xIIkgGTToU42WNN+NR1MdETSiyiWBdE=;
	h=To:Subject:From:Message-Id:Date; b=slKATPZFG0+zZ+6Sm5Zm77Ajh72I6w+bNMXjJZ6Q/Hq2gcyNU3han86Bq8/DKkyHpUOWZvhxZ11fYwshxwgxcQlE5AFcxOUezjwCdLghMB7ebeGtPD9xbXOEoa5RQpN4Ua2Q/33zXMv2Q8TxaE0hEUaHnMfLOGp1n7wXZFaUPpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmJI4U3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TmJI4U3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E84C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751852993;
	bh=ylo/+f0pbKu8xIIkgGTToU42WNN+NR1MdETSiyiWBdE=;
	h=To:Subject:From:Date:From;
	b=TmJI4U3/JPF2oEG16OM1SjgoV0T3SOhZg9K5sqAu6cjP42R5YybFbPhu6KCK4H/cJ
	 HQAXPHbQbdUsatWNfsCCJTNxHf54nL/7v0lgXylollLxqqLSOjEtN+yYorEcEwvyxQ
	 Nn+ZQ8fZtqMiVZu+JlcXbHGGgkjFhFRXNYLUH9a1dJ8lfrG8nqDU2994yshh8SRx69
	 3tjUqNcJWfVKn4COoJQh2I0noZmFo3zrFRAzbxtwu+HwkgwkcUQ3YCcwIYq6NA0FyD
	 PZ92Q802S3ebJQwbMCRFO+fEkRCyEV4SMlDu3vXIdhdUdAdzLYrhpjhFRKe2Q/boNt
	 vY/VrQDnuCxaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E528C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185299357.3516.1842552988059042879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858ee336246cbb0a8139b5d0139b99a073656ea146e9a287ae1e140b21caf179
Date: Mon, 07 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751852993
