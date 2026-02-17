Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E829548EE
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771329294; cv=none; b=f7KvG7LYr1fVMgBOpEW52LjnC/C2JWSciAsDo5i1pJFA+MGlBZQFb2lORVniPl4p4USzsjNq3QifS4ph7IyNW9YJDZQsU2a4IChnntgZ+4b2FXhLsGvTmBVJ+/w2twsjwbYHp5bc3Hw9ymnA5ObedyOFEIo1nZvaQrC2AupnGng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771329294; c=relaxed/simple;
	bh=6WQgUsNm26Kt5jvekp18d1mJ3GFCS8XqSeggY668hC8=;
	h=To:Subject:From:Message-Id:Date; b=EmbARN4cTWlhflfHMvt6/Bt5X3l/KM+SAtk36rS71T8CweezhFzZF8pF9AE4pJHoG1UkjTyuIrQLdL8mHKynSCRnb0HU1FnGPyxohOYOb8q0kd/Vo89818s970QzaTjNwdLD9U2UrPvFpoxDbxqC3zqz6Im1DglFSDolSsYaq08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzxWMj2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzxWMj2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8BAC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771329293;
	bh=6WQgUsNm26Kt5jvekp18d1mJ3GFCS8XqSeggY668hC8=;
	h=To:Subject:From:Date:From;
	b=FzxWMj2/4gYTWyzlMNzOTCzfbuYp1ZJ29laSnqfUVQR4RChzWfY855rmZSgZuNC9+
	 Cz3EkuWQ9Vrxt92IsQvYPL2WhAYdKKNhrc7wq69Ga3oY2+hTYpbMlcadAKWAneTdou
	 SIz5sDsmNx+q7ejshH0UjGOwmylhbm3ZAQCoGxXtr4J0zj1crVPz7NoC8FinDwZIHR
	 NEAYGwpi86J9Q8s7DSslusOKSaygJIaorTg/A6TZkBMcW0DaMd9kN867wFvGWLhKO9
	 sJh6VhkCjPLObmTUgOhH+5A4WT7GpXKH7WSoG2oBid986gHlaVNYZq+zgkiO0tG6k/
	 WyY1svqblVJPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7BDE68176
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177132929362.3403.9191206317854465973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3325b9ca3da712de135f66870141a11b29e40f6ee0099f044400f30a2db47d
Date: Tue, 17 Feb 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771329293
