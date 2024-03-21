Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8D010E9
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710985697; cv=none; b=EJCoMRP9MrQT5OIVbC1w+f4en8GjIVtksT9D3ItbTgGTOWaMBa0Fpf1IUq6VNU5GkxC2ufqaqv+z0qWM5dxDkPpxz99I523lxgpdRp+O5qIq1Twj+/ePyHYXGgt+wdyccIS4o2G2h/K67E/vuMNs9ak+yH4jDmD7sx/JRRs1m0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710985697; c=relaxed/simple;
	bh=+iwzBcll67LcuxhMYbrBwuSXGdg40rZJAnYKi2Fw3hM=;
	h=To:Subject:From:Message-Id:Date; b=fxkea5LaJLCHvWi/hJYkeyim8us3SJTvej1grt3EKOkaiRdqD6w8txvT9+4WwGk96OuEqwG6ou8cfMyjxFJuROUQXKi6zfANW8m4zxs0oFX4i78uKa72jyxQn/9eIyIWzuJW/EAOH/LEG6J4GekbyDAjVZ8HsTANh1jkCIl9NAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2MTezEJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2MTezEJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC04C43394
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710985696;
	bh=+iwzBcll67LcuxhMYbrBwuSXGdg40rZJAnYKi2Fw3hM=;
	h=To:Subject:From:Date:From;
	b=p2MTezEJz0KGLAxsiJzzwuuBjTDsg7x8ducyOC3R4rrBL0T7+Srv0mCKFlB9jI8oV
	 cVvkghJLmwmpHQCTyGELQYzxomUHJKNDRABT0Rzj0tXq2wNX2oDAlo9MtSpQPYMWF5
	 fHgB0qYpHSU0w1K4dSZp5ROVcV2oi53W9bADD39uSQ0eaDNbLgftg9wW/HH1Y9Jk8E
	 x2uvxBp7C9htE7YjKZwpKDrMjNXy+2plVsIxJFk6314DGXe7rca9QKdvXiZQME5iVq
	 KtQ2NnSgpKI+bvPFIB54b1AY0wHkla9ZOM92c7mukuw/LsqaqIO/IIKwjdf9OWl8QO
	 d9ax2IvqMqSsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDE0C54E67
	for <ddprobe@lists.linux.dev>; Thu, 21 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171098569637.9833.7456542420665823912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a393bbe6bfaacbfdc863b8cae1daf234f4e5a5c41aaee67567ae1616ecee92
Date: Thu, 21 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710985696
