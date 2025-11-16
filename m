Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D16817D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763272854; cv=none; b=Sl/hvUuX6+2zAj5o9IKaXXOcJwqaDX6E+YRXDH7QyXc3Z3ROu1rbEnNszpkdP+1UystgV/uKyp+PaNliVGJn2V3MqBtOMvW9W+y5kGWB7UnYoyJq7xmYLHDCmLTvGdPOFqYSy3QjB86HtQYoRzZHeLykcQy+TUkSenycH/+GebI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763272854; c=relaxed/simple;
	bh=Ud8e6pr6eu5S4QP0omg71iJcyieI1xNxKSjc1KR6YYs=;
	h=To:Subject:From:Message-Id:Date; b=fEMUSh9IdMPYQxk49iIi4qVlb9yu9ojAA1tfHVi8D0R+ITVSclwykr+TBeIDWlajOnpWCa+DsnneQCr6QxannNktODzl3EjPbS9M/hOPiOU8WfttMcik7jz2ymMihsroBBjcveptnBecn1Dq6IHps8omdXpObpQVA0luRaggaaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHqmfX3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHqmfX3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A649FC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763272853;
	bh=Ud8e6pr6eu5S4QP0omg71iJcyieI1xNxKSjc1KR6YYs=;
	h=To:Subject:From:Date:From;
	b=SHqmfX3E9F10Y5giZAzyP77evGBWQUB7VdKMDtj6F4A6/3G1h0J1jXQNGZ9y8xyGQ
	 YaYOeykeJXYdVPZLKO3WKqsu4SlGNMrYDw7Y2p9bvKqjBkyiiTr2kijhPi1k4uedJh
	 udiaJgLZW0IAgfD9lFhu2G5KK8MH/bbg3zEokJmNxxUFYSMWkr0QaNWxHgFZJ0ZOwH
	 GZBr4N4DQ4EGyPW732YPhVYyMYpfAlGoBCoIjbEbKnOTowdqzkbHIA2YgkwynjmJZD
	 ssVYH/4lWJQUUQjdaKcBzIpFzEuucCybhX2taLyd1IClaR82SP1EUybiCmzvXmmajB
	 i33WRPxgbszJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98025CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176327285358.16873.11821214941674073670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c6bbfa7148c956984c2ed64221097a2492b50b395a6219c9285acc9719934b
Date: Sun, 16 Nov 2025 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763272853
