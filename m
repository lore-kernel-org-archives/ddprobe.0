Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4D1194AE6
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778978434; cv=none; b=ezGZPYtLzQIHp/ewKeyUKQpx+YWxK7/7JqrFpyfGdXf81noMqrRZQZKVRlrhnW5boBHToteTyvAzvqYglS+cy7FxhtYSflcMl4VjiUrXy2g6+vw+a1tKUUZxP23nW9iWzM3dVn9frNb2kGSf2Bo9KwE99LMUTWVzwarIlIGYcbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778978434; c=relaxed/simple;
	bh=Gd/jBYDg7eekowrjrllg9gQkBmuGKgASBXuk4bM+mc8=;
	h=To:Subject:From:Message-Id:Date; b=fC8W3MPT86dEoUjhqRRvcyK7mKKfBJsASNqh/Re8Bb9yvV7M5SsXnI4Fjj3kiAnARBNbiWFzLQ8Dcof3RHdk7WJTXchf40WmLxsHCV+8VdrAZ5RNdvL+uZp/NmrT7bjtaebG7NqAqV64O5HkcCDByIW7Rrt9eZoaE/SlaaSmFoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIaJfhHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIaJfhHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBA32C19425
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778978433;
	bh=Gd/jBYDg7eekowrjrllg9gQkBmuGKgASBXuk4bM+mc8=;
	h=To:Subject:From:Date:From;
	b=SIaJfhHIKLUEvnGV618y2jEBM0500SIre7L6a2PGYRNceoFAjQqpUXHffTKMyTOMV
	 wHLMKLBguEAWruG5rm4cA6mqVQTxMzSyODG9cDF0vXZzMuB9U9UGxcTo0iPLF+WamE
	 3ApA0hlBic+Cvx9NmH86LkL3E8hASxL/+EWo0TUxgoIzW1pmu+1afA5lwBruOyXDr4
	 S8SWc5CpzVEmMLeMIlilP7qwMrTuOI2baCUXgb1hMOqinL63YgcL7+koTvB122ytxu
	 BRuZ8kO36Y9hxWuPRaB0uCBx79zXuWWn+d5Wku7+VqqW07oiGG9dufXovXZ4CQarj3
	 oo1UIsecVXbNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA22CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897843369.10338.3588932291825302196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc5daeec9e6d3bc8d517f5002ca429ec8127b8ce354c624b0920b64a36830aa
Date: Sun, 17 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778978433
