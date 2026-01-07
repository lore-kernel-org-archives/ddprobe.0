Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768392EAD10
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767822234; cv=none; b=iTXXWC/2xwvskwRxN6eSGf6yUCRvRJmmsjkue2yDdl84MUtqEvZSC0WcwwYdSQZNG6f3v2pyNGviXAFV+lTj6Q80fDnfoH1hx4gLiwhsMsu8SFUzD7/PMaZGasGKqNzkbDbN1W06dbB3JI9xvjDdpNxnMzeXIM1LmgDN+8OvGTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767822234; c=relaxed/simple;
	bh=1wYsQyT6JCSQdd4CKchxSrWByiNNabrMrlBYLn8OcDs=;
	h=To:Subject:From:Message-Id:Date; b=O16ntTQosj5akKwnpVkYikmc1O2wCFY4g4pqAzQklHviR6YoTvpK4AWg5w70vFRlDLMhLJBBI+vmkorqD3hSJrC23z/VOQ3POmZsqV7RznnJg5G9M39Zx3FxNORaEJkEa1PK4eeQpHeuj2jhl5GeMhAG5qUzU/+LLli8sabswS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3n2KI1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3n2KI1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5297C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767822233;
	bh=1wYsQyT6JCSQdd4CKchxSrWByiNNabrMrlBYLn8OcDs=;
	h=To:Subject:From:Date:From;
	b=B3n2KI1J6nMMQsQ05EaxogVctDLx0RhHRwQ0UHGwACs/x+EfipnoujVCPXl4K0wgu
	 gmlz2LgfmAeLwmPrdzxxDDBjX0JYfAFva6oXs1CzvZKHVXAXDHxcOr9xyWBydIS8RX
	 FepiFqsQEUPZgdarMX0R7j5+e3vvcfsDGFVOEUS/O03KCOULAkV1HXrjayuvSDYUU+
	 oLlBouZLxjAz/gTFaXrRQeEtJ8o5vKN1eX+Z4eIEL4XymME0gYNEmCUyU/9MZmKgOY
	 4QcDH6f9Hc/YvOBdbb2xOYBJwI+UiKwlF90TdWX28X0EjgZOTOawOFJX0yss3msH2M
	 2FQZHjchUxWPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96536D0D171
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782223358.30806.10476986963811695437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e19849fe8e4fd679cbb5f008f0832435f6816b9da8ace79eb4a038e82da36488
Date: Wed, 07 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767822233
