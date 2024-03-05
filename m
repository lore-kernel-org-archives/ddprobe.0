Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF39417BBD
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709602697; cv=none; b=VILLfYbHVpM7KgmCeggYvks9jNW6RXKAXujsukQJBipZxVpqGOQ4SYy5EmbtN1lcm5qRUFXUJxuycNEqYf2IMNKEtsba+oul4cstRIWW5J3+alqAwIjpqlDEuOo/qb7EkG05XyFdDgskvpGnjqC8xUXho6GycAaQIXKPTPxZLEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709602697; c=relaxed/simple;
	bh=HPmtKKiOyEh6gx8kdyiX1buQKS4tUUAj3C4pgE1ZC6Q=;
	h=To:Subject:From:Message-Id:Date; b=LtFoonjif8sQ+wzJ+mSBU17xnz5s0ye8d7G6a2+KNgb66qNv22nkAe8UTg1+xRxZoIHZ04ES40HWy3CmaxTsBx+4Dggtn6crNl2jaTICJPECqx8BSB/gh3uKTfvLiJjYLHDb+XiOdJ7pf34ZOYDiVfeOiOSKBj3NmZ4G1hhoQjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vns37JAO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vns37JAO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A1CAC433F1
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709602696;
	bh=HPmtKKiOyEh6gx8kdyiX1buQKS4tUUAj3C4pgE1ZC6Q=;
	h=To:Subject:From:Date:From;
	b=Vns37JAOoGawVwoD9nyWgBWnHFF5ZkuSjY09wRQ6EJS42X0EDhoe8GXqWBhrCJEBK
	 YJnh4gEOo4eQd993GZY9IOw4a7aKgcGjPmOuMblVzRwrPbu1yKOxpIiTBZ+0QBR14h
	 AF5VqnnCMvoLjzNWAKPdNOksVtsa4X3XoWAs95KpECBv16WwHUrD3sVDTpAzzUV+1c
	 KpK1nq1TkKzlvbeIOq+EyQY1bi0pWeTC4N/lxFPvcvp3X38lE0T+5blHIw0thSTAfh
	 9MUzcewb5caABEFdw1pNHSG7AulVOvgvzUHRISAsTOBjGwcSquNqznMofbIypm1dtc
	 KewhRkzu5oFbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F106C48BF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Mar 2024 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170960269638.20352.13439238104145817116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152bbf6a610476b3e1030893d9f4b910c98c4716ad358e12af845dd0a47159ea
Date: Tue, 05 Mar 2024 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709602696
