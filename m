Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A607367B9C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784884234; cv=none; b=u0vj4f2KCmjfmZKJPZO6O+vvsHJ4KHAq+eRqJnOWlKUKbJWwCJgy0s9KP91uiTWxVT2P3k171ZlsU89Ka1xPeF+vb7XotxgBkrUj9hnNhennrAdol+7Sy9OECk74NwX8kuEV8jqEjnUwwST3koEYj48wdP2hfBJrXA2qZyrK/Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784884234; c=relaxed/simple;
	bh=bp4mpvsf/CcQEoVKCQGJxkOZblhr+nfyC6jFpBwmZVs=;
	h=To:Subject:From:Message-Id:Date; b=UAIS9BMG5hfwToJxeJg7YijWafmT5icVQtIIvag1y2wO+NbBacf/kif9x0VegEEsXTtI+lQTNP8vsdKaKTu00uKNycKi32pQu8Z9p84v5tWL1C1jrUeGZmb3pJFv4tUB5yydli3o7cY/MdSYLJYREcro4peMbrc/oz6PL9rmDUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRSYqM/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRSYqM/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF33C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784884233;
	bh=bp4mpvsf/CcQEoVKCQGJxkOZblhr+nfyC6jFpBwmZVs=;
	h=To:Subject:From:Date:From;
	b=YRSYqM/oRWM1k+hOGmJpqSq8lAG/3LxH6XXXhb0jE1rNlUC/rUFxnqOU/DIIJa4ni
	 5rZ0Bsd7cqvCY+KSXNP524kXTO4+2ZIbIxjkACr+iETqItcxtiYxa6lc9OgHkhMmuj
	 MIC2ejPK2x4V/GlDHykSqF7BeUG74DpvlMzclaNSHQsfA4+sLTgATvAt1YdMyRiBPy
	 BRRk9nmpFs8KWY0tAHJYwoPBp58QrDdmWcPaXSh+bF/qIfBda0yeWfD96R2le2I5LX
	 j8RjUOa2RdqKd7yM/u/AE/o32bDhgUOHevVbmlj3ZRqzkr8l2TlPrL55eYRd+nQZg3
	 y/6QiYBGFqzLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C6CC531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488423373.12888.4023109497739199049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe9c603b4b4fd4c4aaeb997c9a17aa819269f71e5a41bfaaf65df3bc7c2cdc35
Date: Fri, 24 Jul 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784884233
