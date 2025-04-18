Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493242AE66
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744991994; cv=none; b=inPCIyK6N3F1g29VlUTe6le80euq39WScKX2rzaYB+57lAuLNmGD3yZiHMa2QTnYT0g6RxTdjT1eGnrwNTr/BOBzwHJcMFMXIwfhUgFeU8T3/z74GRND9uP/ah1DYbvt7650dcIlt5GnsjuI9o7ku/fT1AQao3sPgOv2pC6YKMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744991994; c=relaxed/simple;
	bh=x+tRJuTn+Q0/oCO94txeU061niqzh1f6EywJLShtb5E=;
	h=To:Subject:From:Message-Id:Date; b=oXXYI/TYCIDkRquWswvUeOb/bCPXuqSz4ccnfLGiwoi5FKAuSSW4wcXIDZwaCn5HyDDggU+bAMpx1mjQWoJBCzhL7KwY/lSEc0SQD7NWGEXP+xky/tmF0EzgK76vO/7xB9eavLAbnKvO29thUh2gPkdo2FMKp+4+8S3nbephaa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJZKF6gN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJZKF6gN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2415C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744991993;
	bh=x+tRJuTn+Q0/oCO94txeU061niqzh1f6EywJLShtb5E=;
	h=To:Subject:From:Date:From;
	b=WJZKF6gNUScI331TJySJX1Hl3qx+ymb3uBP5Lvb+xufiDClieoTeb4G1wRuNaQs+V
	 lzKEws+oBk8A4guGGD8MX16tyuM3SsSZxH4XBp/NdpmVlL5PkpVyuL/FzorUxfQAJY
	 6QEiA+iggSz/U7QZ/5nmUSbbXq5hp30zAXVFtCJcKWW4bggPZtwvVOEctjXRMUFm+B
	 WI9/k8An1grU6wyCLhKrB2wgVjd86pithulsrhuX1FBYA3Y91WOMDxA8iIHfWLJoH9
	 saYKuFvEuCnqET+nkA94AUm/zb0OPJnLkA8e6XIcuA58Tloa+vECqY674JfekrDMDX
	 XCfDAtnnsp7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF38C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499199357.16078.2445379097354087177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e78f1ade08a930d11f86ab8240c0b159fd6d96846a910b775e374d29b8bd0e1a
Date: Fri, 18 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744991993
