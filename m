Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444231E51F2
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740985734; cv=none; b=iyGFxA/+hWFNXqc5cuz+f578ZCIGplOwbnZ7jkXlWojNGyYbiGNVdyLxsx5K02M6hYA/cgZpnlSf16+waqdsMVBNX0WNwztdZ4c2Q3mjp6rCF/VPdd1pqryJsPluzyBqeHuMGDvnXXS+TMyRb4oeucx2XZHIMH3jNIyOWBQ8XiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740985734; c=relaxed/simple;
	bh=TNHWw0AMT/ul8X626tWeG8NhoFYyc/jq7/862mDiDyg=;
	h=To:Subject:From:Message-Id:Date; b=TptHeOqFEiIfU2YCkHQx8pci/XfbgjyZR4x/6aU9Dg20Z9Y4VPrZA5xRPsRQgW94nJ376Qa48FxamLYqJ6DRfXQh7MIfQA7i5nIzHWb7vWHf55i+fwIyWSqD7rA+5dc02HMZayYEOcENfNRds3bs17VC4h4sikqqr3qUb59bi78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fel3rAYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fel3rAYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B89C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740985733;
	bh=TNHWw0AMT/ul8X626tWeG8NhoFYyc/jq7/862mDiDyg=;
	h=To:Subject:From:Date:From;
	b=fel3rAYcanY9S7oncB15tRvY0k9x8tgjoSGq7rvcXRiMTxYMRib9Li1Z0PT79DQXx
	 jdiuEXq2sbdBLgVchvA/0Z23xt12zCy+nTwxqPOEI2UNWL6mq7vGLWEDFU/KRz8Fcp
	 AGDbKWP/dYihj4YOzqjvvXxk3o51g1k/nTREwREwJA5I85bkuvQqLNd8i551kdJN6F
	 OuypN0Zm0tqaSS+UNpq36xG9VLBTWOlvzUSfdrV0wMvcOnQ+AKLDqi4Y+9FSdpy9Jj
	 B3A+jnk6bgSZMfU5DPbM227EuFtZT1p2xF1bsisXRk7ETFzSBtKzKhgcp4YxaJ1b+L
	 GDBPiDyOkzf4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281AC282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174098573358.31015.7193674695251036072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e8a6be1b5d3d00bd3e2ba1d0d1044fefb1c1a092c61604fbfbe7b03e305e7a
Date: Mon, 03 Mar 2025 07:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740985733
