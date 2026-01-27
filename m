Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6C91E520A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769500434; cv=none; b=U3Br5uWKdZ/j2xv9Q1onJoWXmjwAF50vIBJ0Z4A1s6GmdI4FN6mGQpzN4EMyRmCdjYL0sEN2FO001q3k1BGSAQhw76tUT6uHiTwcA+bsvmNyNbQsG5sYZ6lxxxX4AW5Bidtke4udfGxZy8H6DVyN7Q5ut3gjDHm+Hys0KwORVp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769500434; c=relaxed/simple;
	bh=KrKg3SKCrBVkU1xPc8k8SSuERUJFABRKu9acmZHLigE=;
	h=To:Subject:From:Message-Id:Date; b=oKeQjzQEvmS4f7QCLbJmC+GdLP032gkoWGYGsp9Ow8WqfXx1FDXWMJ5JrxzS/dDTH1KgOkIszbETceBKFp10OcWwtIQSptp4/Mr/VOHCjjU5NLEqmDr4KZVdkqiIXHL7nA5UgVS6lmXc1OxUOMMTnZDpQlRIGbLhLOW0Rb7Fdk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKEkcGjB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKEkcGjB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEB1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769500433;
	bh=KrKg3SKCrBVkU1xPc8k8SSuERUJFABRKu9acmZHLigE=;
	h=To:Subject:From:Date:From;
	b=aKEkcGjBEXfMAmqC5tD3AoCDNrzcIKXYOeeJAZQMSuB5vew1MLEDrY5tJbAi1VzhF
	 yjNat2scDRj2X/CJaw4i0xnbm1/k+Qs9oT+a0bbdZ8p76b+X3gbuEqESrzdxDf10cw
	 S89nvvgGYWmJRJSWXPQTuO9J0mKdnjr+6vp2Ugk5/LOPskI7770BYLgG5lb5LVkkri
	 tP27RrncxD+gwHpxYvc9CGp/bL4i77CjyN3ns+CNVXHN7n7BRYmfWKhuhMYm4UX7Rn
	 oPMjgXZtFuXOgyyF1GYmjY4LhdRW2PnPkypV7t/xOmoilcq71MVKxmUI6j5lVV4ibp
	 /m0t4Iu3zkUtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97217D25959
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950043358.789.5881312065339845499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7bb6147e39a467003440f2bb3a220561db485e2a0c1faf7b0a8150ef3d486e5
Date: Tue, 27 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769500433
