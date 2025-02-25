Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434933D984
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740513534; cv=none; b=i3ouMZPwedyciPZG/hYWAWS9aB1/gA3qpOeJhcEqD41kmrOmowiGUjA504AAl4qeTd0i+4q1oIlpRas0RcflzxQ4vD6gJE7RoUVfXyIoyQwQqyDYMZ8rKggnsjjjj08OGAZt4GVZUX7F7Oz0o/EVdO75X79xEQ/jPyiMt/+JDM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740513534; c=relaxed/simple;
	bh=BQyMfR+pEgyOWvNGdyqajGjK8YMBkeIxSbSJgnUZU6I=;
	h=To:Subject:From:Message-Id:Date; b=oG9wXQP27hihApOMBNKfbzb5QQPLRXyNXRdK5IjB9iXNJOrEHxYWtCDmdXqHoCK8GucLp8MAA3g5vrj2W9vruUEWjub4Y9WzwMegQz426vzAQ8KcbNpowgVfG5iGPBxz8eO8Z0COxxy1xCx1hraAwzxALMQLEfAmdBWgcx7gvhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNWAQsr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNWAQsr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC080C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740513533;
	bh=BQyMfR+pEgyOWvNGdyqajGjK8YMBkeIxSbSJgnUZU6I=;
	h=To:Subject:From:Date:From;
	b=kNWAQsr7syGh+ml5aDa8LMNqFi5wlz6DUD+ssmpQexO6E+L8dhEUDOD6tFoaEr3uO
	 xwzyIzd68lLbcJ6DX27S1F8oxQDyZ4uKmBAL4oFNMTp1PxkBGFwpjSzUZxU43Xk68Z
	 vApuBQbysVdzaCud3+avAv7JJVtiYLBLYvpjYLCqJxiLK01mxWoTKvsXLB5Lla3Y95
	 sqadKTh/OWA4HFhqnrKuYs8GFhjmKpa5vGneGJE6AGceu8W27BM39DdE7U6W3fbX8m
	 KuvEqTuw4o+SselPnsPsDcKLgQQRXMpDAX399qjnBml1Bi0stDZUEtGpm989w6qSK+
	 tYFzT4dJPMCoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CC4C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174051353360.21400.15107360708967201549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f4b23a4d02b4e2d0a0cde8c6916f19c17f60ec023676a9179e4434ef8e9c3c
Date: Tue, 25 Feb 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740513533
