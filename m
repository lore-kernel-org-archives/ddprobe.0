Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446C940A940
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790158234; cv=none; b=D/qG3Y4s8rXw1VJYp4ni4++gCuQb5SnfH3L+vdWOWF/4DUwNt+TPwBnl6kJqG9+ymduLiFFUqw+r2rKrnLfv+xshoI5oUGaPgBYNb4Dl5V85nO6g/ObfhBNXlkqEK7LqySFwg1RXULtlRqqELWoOw/qOPLfyondawZcdZc4csW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790158234; c=relaxed/simple;
	bh=z8DynI8oIzkmtuZen0lo7AsjeqB0fWyzH8BqRqE8G9g=;
	h=To:Subject:From:Message-Id:Date; b=LCzvIaJS66IFe1R9LR83K78Go2hHEot/mwcyvE93Do0yzrwmh2I9+W0ojIbkD9bebP82Yvdinz7jp+OJa7zsRh5O9d8B0Vjsln3aWMoV/nziORYwQSSyFlaEif4KLVO+F9aAR3RRuh/EpoQsR1oLSPqzR7C7ck+DiMTyr4Pr2H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6nCK27u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6nCK27u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29D2C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790158233;
	bh=z8DynI8oIzkmtuZen0lo7AsjeqB0fWyzH8BqRqE8G9g=;
	h=To:Subject:From:Date:From;
	b=b6nCK27uuRJ50GQud5bV3FZCrRo+B4SGMkHAY6vmACCj/I+jZ0nhMVCbdv99kl87u
	 iKz4aNc65qIrQF8APa1sJdUhqPoH9gw8T9N2OqcVIB7KRbrrKZwvGgaAxh0cz5HMmX
	 W1q0ngJVERlU6Q1C8VYKdp53JjMTHojCd/ZUhbNHWpq7FOj7muKuYTw5KwbQBjYqnV
	 ZikQfn3lpgxqmb86YRlCrEfU6naCPE0LEJmxo6o8tjBUKYPMbsT9WYZX2S0z+g1wba
	 6m00H3DFvU0F3RPAzEO6kmv5GeLdvDSPVOUMhsGddqYzbmeHuVkRbAQpm+myCivXkE
	 Wnc3p3s4/GJDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE01C982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179015823369.7068.3984135720284006146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6b23bf4bd41d3598e966b526a0b72b3cfd9a0a63583ce9858123d7dcc667db
Date: Wed, 23 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790158233
