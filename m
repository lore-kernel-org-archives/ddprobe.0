Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43AA2E5427
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762796993; cv=none; b=o7jYI/rLXp2NSY09s0kzLtjt34adLGJc66Pu/zqGLFaS6JR4lVBMcCXkSxS5DxxIqHKdZLgR+ztlGIqH5kkjCVU/usTIFoc+VtG4AaZJQBShWhX3VAmhjx/UbaiErRzs4BBkPf/2UrxJZBgKKEh8JulghxPIbhm3QxbKo/LLfIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762796993; c=relaxed/simple;
	bh=hxQCCpc465SuKh7W74nGugdRa6RVlaRmFrHhgOG5Qfs=;
	h=To:Subject:From:Message-Id:Date; b=CYrAIMjDjmuCsx3KKnsU/f19Ik33Ir4Hm/74V2T5XI43yYsxiOkxYjiuhvW7T162T8PJwj/zkP77EgC3iSdiKOWhkY7HFG82dxqZPX5fvm1UqcllQGseoUz+lKL+VdnVAVEWasmWV9egL2W2n9vZDtZ8krpQ+nIA0ZGLCDDubHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JRTNII9u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JRTNII9u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF4DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762796993;
	bh=hxQCCpc465SuKh7W74nGugdRa6RVlaRmFrHhgOG5Qfs=;
	h=To:Subject:From:Date:From;
	b=JRTNII9u3ArqIE6ENskJZurzUXrUjCtvNKIYM0AiH3rwbuWt5BtBILO8p9dsn+cDs
	 dsdzB1d0IGOMwan9dJX4xbRQw725wGa1vYHgJH6YFEdNhxcXjV9CiOdUJGoAFXpc/S
	 jkZN9L3vw5FjkIYjlif7UznO0loQo5N8b+Yh7dGRbVOvII4a3OCBbO1ifTexibn9Ay
	 0pKjs398xyL8Hz+WeT3MknL540wnmq8Oq2Xa1/nKLy52ZDsc6yGTbvXiw+5ypbMm67
	 eBbdZ27pSfS+WgQkmFy7JY7J9RosMlopnqXsIV/5f2m9oxTnYJKz1flSCPnK1qdLwx
	 gqE2lru9zJCkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91080CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176279699358.23157.6662829118886789330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94c952f27329c654dabb7b2b21dfdb8f1e486818754a0feb0c8bb5036401e30
Date: Mon, 10 Nov 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762796993
