Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2121AC427
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734079554; cv=none; b=uyz13YXG14CJW1gCx+mIKVZidJ0wJP2pNbTnFp6km3+SJkIIzyIUebEpMz+KuTK9hJQArEzn1QVRUzKmdNBxREMILB1P7pUPfkXm4hDoUWq64InF4UZ1bc0OU2WitqXl2+fSApU69HQEC7mb5Kl4Gty7M/U9lD5WKc7W3T9/O5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734079554; c=relaxed/simple;
	bh=O6e3Gbox9NQVdRCrT8C98iml1p5CqkqBa2to5yf6iMs=;
	h=To:Subject:From:Message-Id:Date; b=Zig0739phKOLgbJoLjjYk5hN8AExJ7maQNobhFmosvCDpSMlGfI8kVqVQ34mZ/l42JsStVCmk5HR2tsN22beMqOXcqoWQaRksDL3E2wbpCo6q033s7txyTGEC0S2QQfzsUZwLn+DsC0yvCLQiKnLyz85OXwZiWjrYmt+CzXts5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=It7Ki8HU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="It7Ki8HU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3772C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734079553;
	bh=O6e3Gbox9NQVdRCrT8C98iml1p5CqkqBa2to5yf6iMs=;
	h=To:Subject:From:Date:From;
	b=It7Ki8HUmSCWvfoE8aPGPBqvBNCI959P3YiT0mSeGDDXjYvHo5z5ZBv5AM7GPhjh6
	 02Ipq+EgJnxdbhXTxhva7cTTQCBa2hH6Xa8sp2rD+qNVLmzcr7ZnsQAx54BObEsoVf
	 S+VHDgB2wra0NZcRgFlQMTAQ5qmM/2empYLR4OHPHoqEebI93HocRWWGJW16rnvSc+
	 L25+t5vLhltOpKmDb3UL5tL+SngTzr0tRcV7fDVgn3sYWmkx1yd/yTB59F0kBy5gPq
	 tW3tFxY4l0iyaXwYduGy7CUDTm5aF2jdjsk6+Ptn289O6lqINRLXljEoUnmJxNHBR4
	 2yhKR+ljFoYwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D39FE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173407955363.22310.10825332968070959647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946766bd3678cf24df4bceb5cea221de4e683572add93d27fcd52856d3fb7b9b
Date: Fri, 13 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734079553
