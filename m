Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C0E2F5B
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727325354; cv=none; b=Sd20nivTfupIznraGq+tln0zjNJSNmtR1TRAlP2BY7n9ltjEPrrej9MtTKjqqHFNaTLQV9dUe9gMCe5guRQ6jegxO2IvLseSqLEeEukVRAyonHtNEhiafNK7UoVzP8+AtQIgGtW5m4fOY+6u13CwjeD1gtMNW0PxAzuFhjhdYIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727325354; c=relaxed/simple;
	bh=w4iYGYTdtdYe9bwAOp4D2P58xGVOcjAgo71J/YDuvg4=;
	h=To:Subject:From:Message-Id:Date; b=TgzopyGw36hoKEFMkwCIY88FtjWde8WV2e0jqJLEO1OBwYNymmQ5Rp6toSEocOvUJtK5vzPcvIxGPBx6qbEFn/8CvQjdahm/OudpZ36ojqfhTpE7EXM5HYKh8wIdquVdbiYrA204yCIRz7eOwIHSYnufoC75altH9qhB0m7pTBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dkh3yh++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dkh3yh++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1950C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727325353;
	bh=w4iYGYTdtdYe9bwAOp4D2P58xGVOcjAgo71J/YDuvg4=;
	h=To:Subject:From:Date:From;
	b=Dkh3yh++yiRgyvM0LGD/yAibRVxbshBh1JvQP0atsZahNNrkMN4rmci7LFePvFC8n
	 VahM+9Kp2HRZ3XueE01hMpG55v8HWnMCp+zQb8fzIrAVxDRVUZPTFMHkputbYjx2oo
	 G/2Sr0o6QuPeWeAbOtn8n2w6PBTi0GAVyTIqo0S08v0SqKfqL8X/0ZPAabm0lmXq4G
	 j3BBrM9faDCaZ/nuYOLFxlVHSvsCDo5XHu6fiJVySOoDrGlV67sDMqy5NQw5RskJVc
	 PaG6mlt/VngQR6OVctc8W/hTsiJ8QKLqFdsOfJvAZbVxci0Rq5auNRfeX76YVvWoqx
	 Kw7dRrVyLUXNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A01CCFA15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172732535358.11505.3152302203249366030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2a6c05275d21918c05a662e4ddba1c77a81d0c566a608a8173c613af3c0db2
Date: Thu, 26 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727325353
