Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6696E5EF
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 16:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714320743; cv=none; b=oJ3hgZzMiwHLHAdejHB4NZGw10KmTiriaJkshAqHu97i5ssC9QIVyqBc48/UNtmZhSEiKX3OwlOgOTq/Pl22ZXYZqfcvDEXcNPWwrABgQl6j/fnDEGrBmMiqlyCorq2WMWXY/93/6+/JwIaKtQul7+yCoqjpQwl75gGrHCDnsK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714320743; c=relaxed/simple;
	bh=T4ttOwtK/crkAl6Rcv2u+C4latA4xzfRAmN/5SoOpzY=;
	h=To:Subject:From:Message-Id:Date; b=bYekEYVkARmgFxuLuuFam8MYTmAvKfDTk+heiCwSNx4wpED6psNn/SiTXiFUb9p9SvL4d6Fy9ynsz4njy/7ISs1K8k+S6d8ENUj2ADB800yppWysbEBY4xfUx219NvQRfqg3DeL4wV/Mj46sq50OnUdtxPG7hjyIVA2pL9zVVQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsiZKItk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsiZKItk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB9AC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714320742;
	bh=T4ttOwtK/crkAl6Rcv2u+C4latA4xzfRAmN/5SoOpzY=;
	h=To:Subject:From:Date:From;
	b=DsiZKItk6sU4UaJqhr7hU11k5D5E4Qt9qTkEC1awsZYRzUVPEmho6FTGB//wO3NrQ
	 YEy9vO58YjrLvk6M1oM7B+BddFxatRyWnvejQLwTeylmWZ0y1i2WE6eXFipyaY4NWR
	 +x3ml2Odywmph2CFWQ+pLITKGq+h1Cq0oaiSlCWcrHy+W3+4akf5gjOC2omUKRbjv9
	 yrAujCrnLUG6CWkwSDZta3i+7wvqqVAtO19vIfE1gHQKTYFvh93T0gdMEeLSHQqARV
	 QdIb15Q5du74UZ45Rn0+/8U3kqO1HMr3pX6tg7aKHEsTDmsdk1BbC0wkQMU+QAyr3u
	 eNd+4K3Qc4SIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB627C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171432074275.12516.3115944957592080820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53033bb49cd803fd3c34f19e5d267ca26cd47045a4aedf438127930aa8d79394
Date: Sun, 28 Apr 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714320742
