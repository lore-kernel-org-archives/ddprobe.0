Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631601741CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 13:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721051663; cv=none; b=moVLPy+4QBFAEohsyjpCxo6+p0JmjepfIIcqTyZAv3cqSpwoKZdKH9nouf78XhiNWnaFL7kaYwvc7dsQCkGFC22WKZd0SvIPJsrJ2FXJ0xm01VAATVKFM2F7A+27cEhZz9hWJWv406T9rCGCHXJRTHZC8xth9F6SfsCXEOrTHYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721051663; c=relaxed/simple;
	bh=YXSjWa3b6JqKXvv0okyKqjrz7Aky9cvjgiRUpDHDkn0=;
	h=To:Subject:From:Message-Id:Date; b=M8D7b5XbJ4lGk28V8a0GltevwPABvgkNPZ6elZtrANrBorZJ5efmhOg1Gph5merZgcCop/ofqOthoNGp6FqpYUF6Gtb/OdhvmijN67DZpOXhSHRGLIkpPwD//2BtDZhV02s6mmxBpLoR6NWSho8aGk06NV+f7GPi/5icw2qMwgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKqUCd1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKqUCd1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7D3C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 13:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721051662;
	bh=YXSjWa3b6JqKXvv0okyKqjrz7Aky9cvjgiRUpDHDkn0=;
	h=To:Subject:From:Date:From;
	b=FKqUCd1grRTW6RnCcg3JagiLNNn4LlHcwCFdjUKQSk15iXTBpiZ3uA3rE1+TV4C3n
	 UQWvv8o4Jj1fu3YvAt7dTnp2lvNGzKp9vYsqHXidzDcAXgePcMJNLHoXbTENjNtGJt
	 V+WwzuoHWYjXeVZlBSxLTjlkP2r31oFaXAb723BdHuc9nAVImfyjX5B+g+pX3IlKV0
	 X0yf0ml9GS2kR6bHT4rthoNbLz4tWR1o6F6ebnRTR1ZPGVn9v9JtVV4OWzVxEVF30m
	 ziM+EMXa5LRVaWRsa7A/aOjJ4fMsXPBEhoRdcW1/WHYGPA+Um1FA2u1lWTY2pqnMPE
	 pThSA9alLctJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C647CC3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 13:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172105166278.26017.10173994721778656304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd953042a6cad57717eeb434b7dc2ba9f85a3a2bb6acecdaffa7e23ba37a8709
Date: Mon, 15 Jul 2024 13:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721051662
