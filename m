Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD94192B7D
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740761334; cv=none; b=DccVQfEVNe14tQ0a3fvZmQJQB1kS6ZQBkxz104u6WSBIv5ylpVdNFX9Flq60C+lpVKjQnAaA++KFhYyfigV/lWKtr29I/oq+aajMbNhbZIKOYTxe7f4fZ8hD06MBuTT+JGlrPrDzsAJj/retjAIflVLQiYBWt7OzasEHxq5vWQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740761334; c=relaxed/simple;
	bh=plFM+flYaV0eytRsQib1c2x5SLnlY79Kcn6PKw8RmgQ=;
	h=To:Subject:From:Message-Id:Date; b=uTevdAR1eei9Hgu9RjeFn7FM3xwNucZP9aoY3c2snA3LuTTnYFgYVQhwamyAtsJjUrtrW+pBLOZdciuNpn/HwbiWWDhCZVolnP3l523YSP8+Gr91ACYB5WzSldi63pf3nO/7SN4qwxG2JXFEnheUH2bvTE46a+pPi9HgiSCza94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFTMAwBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFTMAwBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7741C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740761333;
	bh=plFM+flYaV0eytRsQib1c2x5SLnlY79Kcn6PKw8RmgQ=;
	h=To:Subject:From:Date:From;
	b=CFTMAwBGs+5ustfcA1QIC3G+AWtsAgiKlgE4k0fCeNSVdTfRVZl6yz3H0QznpdhcS
	 abhwh0IMAemzc2iv9kwLcS8WI0rc50SQJHYmdGldn/1Cb7ia44sneHe34pDQbtVmPj
	 TZ51KVPqm7TLz8hD44V8fyzK0P9Is1hkvSq98FSeQQ91xcBk+s+Y1TK1g71bXjRs+h
	 ipT+884NcMusqiBNSy2KmyZlFjQTF4vBPuLVkgoUPNKOCQ1e8EmywmlpmFYt3LheEv
	 +Y8Q7PgeKSxcVBy/9NjPF0zj/3GZIy0mvhEk0ktKGPyO/+Eg6auDFcvA8TSNDuLM4I
	 XRzbY+c+5XnoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C8C282C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174076133359.16041.7089222134310639947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8cc8e198650645ecec3b6506a9194a3ef92bcc4f724084b58c5e6c58c65e849
Date: Fri, 28 Feb 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740761333
