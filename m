Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615A9414A3E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788769234; cv=none; b=Na+EcTZIrTVDxLQqWCoZugPF9H566ViD59sbtiIRu/YeUfON+3vuxhrPnF6RS/zQlwrbwXIDbb9lY7QHAs9PLeZE+uYKd3n1FlNItMMpRUwusMT/B8VYEUJdKgNHikUCLDmg7m+QU2yyyr/7jD+ieZf54hBuTA7ECwogrsz35po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788769234; c=relaxed/simple;
	bh=gkF+SwH33XT7XtribkvHik6y1WRUtfiFbaO9CKwPiSA=;
	h=To:Subject:From:Message-Id:Date; b=f7NER/3Pg5W1ry7mpuZSw/KOj46upbxCpBxSLIqrEccpFT4FjCzx9ZJaZ8V+BSQYKY4C4XvGFIzbT48QxW6iqdCl30ihlbxjKoteLdMofLNsvK6/lVkhEehEkVnin3RbNkiyk2lXj/ilv/5SWeLmzovBZmZQT4qJZTaffLrFtVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOlNTtvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOlNTtvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29CDC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788769233;
	bh=gkF+SwH33XT7XtribkvHik6y1WRUtfiFbaO9CKwPiSA=;
	h=To:Subject:From:Date:From;
	b=aOlNTtvANB4tU6PTETpq99yt84LXovjCsZnE7otFqPoqGhT2R4M/8H9u7VnB6fLO4
	 eRjY37Lz0Fu/GJNEELNwqNdm7Wz8UEhQpujhg7Qu7PP7ECYLWW6iEK/w2u6ALagmJt
	 wLSea2gtUrB9AzRbclrRNpJ0pJUCT7jUAzpTeKqWBTpyspc/b0F+qZNnDcswTZn7Ca
	 h5TSyD9pHMK+0oGwRBisVGPyYUyhtIPeKMJhRvDGrRGOI8TpG8j4sH/CSAbe2dtd3x
	 4Rrn9+NVKX/M786AvI56nJsmE+4izCH3j5sAYFuJp/vmYq64nK6OhQR6C2fCedp6GK
	 Y4HSrSWBkx5SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0919C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178876923371.11656.206281301126176276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846c456348a309be2df6b24b01d4931a0f3604dac4b39992455d1443c373eec6
Date: Mon, 07 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788769233
