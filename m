Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225E430F540
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766589234; cv=none; b=Xxgw5ApnY1m6HsBuIJjF9M3pySXJ3YUSNSkJdkYQA4NKanT0JdPfHA7sEAT0gpisiKufHHssG9u+TYNi+BQvZP4CHn+gM8FYMgOJakOGLzXW+AmD1xycGGIvtcJZLqfiSiFgNIL/KKscp2sEkQs17no1wVTEVYmRBMZAMbrTnpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766589234; c=relaxed/simple;
	bh=59OCZCZkjvPd2Np0JdgmlEYAOrG7TD2D9sA4YwUB7Oc=;
	h=To:Subject:From:Message-Id:Date; b=ummtbpDMeBRoQqJ0JR7eJYqnJiVinU/DU8ppUwmFqvoeTfEpJxr/3LvAFoZIz7190zSFypDXOSI7u5W6W0o+fBeuOgjYzAdPbQKPgwY0/uLHWzdLO0nQ3eAyrqSLsSQ/O6H7v2ItnCoQMqNCq4RtVd3No74xr9ZL+NTd9WArbzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtYQppt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtYQppt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4483C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766589233;
	bh=59OCZCZkjvPd2Np0JdgmlEYAOrG7TD2D9sA4YwUB7Oc=;
	h=To:Subject:From:Date:From;
	b=HtYQppt8bnxidoDzHIrHXVU0ZRcnhIxiTHHzZ7c+0z8SoTs3c97pigCj2YjSEY8By
	 dzmJDDBrnRzKq0OAO+yVoLnStkV+u96h1Z1c5e1Urjmw97HBlLZMToAra9U/bmURdV
	 XF8ef4ij7awP3GDH7bzJxsTEnZYDDinQ7x7EvCZQTYRHtsa7/p3yp9rPzI9EaHgIm8
	 zzwjWmQmeJ/FwYHMBLT8NrFmZ+EK8ygrCN6SvQzsd0EonOkCOyeZ0TKWsC4FfD5oFb
	 6FIJ/gKbpuLb9FQ2nCjrte4zTn4qhL+iPhDMCn3EqMO32O9KHv16L0nzer7XW0x+pH
	 OPrvNC383Gdjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90668E776C0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658923358.20020.4298687227543260155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4aa0d178209848a964ad9556c8d9349d84684820a0076997e9d69c1e4805b9
Date: Wed, 24 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766589233
