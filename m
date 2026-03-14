Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18418F507
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773455694; cv=none; b=Ge7iiToLfNbWEE18HBZoZdzT2e7RteaCl2mo5a9VcZLNAhWYGZ5g+5A3Xp5LHwZ7Zv1XMKgRZSe2YYfViJNQzEqZlC53pMhTJrlfcQI0U8zl/0pG62tmgRir4e7P5vDch0b+y9ShJGaou4uTNneOkksDSmbctwIFZ8EaZLwWebk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773455694; c=relaxed/simple;
	bh=kpRsrGeySpq92rldWU7+fuWLcTe3sidggsSio9E/c7o=;
	h=To:Subject:From:Message-Id:Date; b=WMfr8jmblv/XEv8sI+QBJG+2A17Tk9T2WvW9rIOwQczPsU9y3wxYPueH+dBmVaf9fwJrovmc8B4YXQQfhS99Tx+D7LmHRxkjR6645eeSg2jmbbAVSVBoJlBbhpoVDcZJA6MbGwMHZVeyUS2AyZFzaveUa8IZb7FBmVzU03Ytjas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srpUPCj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srpUPCj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6881C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773455693;
	bh=kpRsrGeySpq92rldWU7+fuWLcTe3sidggsSio9E/c7o=;
	h=To:Subject:From:Date:From;
	b=srpUPCj9oCOA2pRhIhCv62oeOZcR3AGTGa0w2Dj+m/tdypEvsbeT4FMqzzbohgLM5
	 kf2YuBXk/+j0Uwn/DJ+L8xsNtq9Ntusw2EU0MWhgFk1SPxV0kuj14TP5zQW60SP00n
	 NWHdO5smbvc447hwn5FUhZQElc4A1NjWaMgSkExZkmKYgzXIvkXG+oa6z74LFotH1u
	 aeRW8xgLZ6Gh3H8pg1XZqEZLkz1RPdfGi6oEWmCIGATbzL4zWr97K4o8G6KeQyiK5C
	 hVjSWR7Fpz952GSzBxHpellBfw+H3B7bJqPCya+WyHQdrFO3m4kfM9pq3BUvFhcUVG
	 Ifwb/0EHXa/PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FFE107BCF1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345569359.25687.7874573993328811332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f696897e9c9bf5f811b88242645f00f12bf026f5c1d93e93052acd733cbf63
Date: Sat, 14 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773455693
