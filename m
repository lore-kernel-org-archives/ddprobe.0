Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7213AFBFD
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719125543; cv=none; b=iDzmk3UXEuLo0CMV9gsKhS017AlIAmINarvpnXYlcicyJc+or/ARs0IGF7Q/VWt3Zh0SkgBr44n6lTgs+BT4swzie96m8/K3Lerf1bRWusL+l2qZrFXl9a5CRQyeFRLYmy8zIxM5I5fYfjG3duA/J+F5/lErC3fsRJfGDd4Qo78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719125543; c=relaxed/simple;
	bh=B2ulV7k7QHYf7tpCbaiPgSpktPhXvkZN+7PMIgfGfnw=;
	h=To:Subject:From:Message-Id:Date; b=XHcwJvUXd+fp9zs6kGDTDr4p0sXEo89bvnf62p3iwjtc8mBoRugB6ZuuP21CkzJ0yAw1vxsJyNPf3SDEZ8xwoc+CasN3f+LnnVGLLVmJt5GPhi5g34HNk1coVc4n8wCnEPzJX3oJYbOdHScPUyGDfvGVRMLSPwCeVW5qhecyYCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWh4MU1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWh4MU1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E409FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719125542;
	bh=B2ulV7k7QHYf7tpCbaiPgSpktPhXvkZN+7PMIgfGfnw=;
	h=To:Subject:From:Date:From;
	b=UWh4MU1S6PQZvnlLIn4y67vud9lqWnmQfkWa5+oSQYCR3ZFbo9SktWP/C2zf7/4s6
	 RUD5TAjug4Sgh+aUS6MvQpuWoPTqgVtfAFJT5yIYNTe6pQqzFJYmtxwvFyewJpO45z
	 mnVbecisKKAqgXxicwMjDdldhtJHph3eCkE20CAPrSwGVgsaEnziwDs/iLrDv+udrq
	 8b8icCqmogGzI0R8IC8WV3D+EbrEBxRnHu11lyjgM6jafscTQF9XxMKdmegsho8J37
	 bTgLLEPtXrurmXnic4h7TMoT6hnR/yOGU/DIX1aiOxoLTr3zcQ/unKzk4vzCZ9cYDF
	 ivVT9LCalP3VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA0CC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 06:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912554282.27065.13869793766237151549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 917ce469debea2b7a5d7b803765b5109019baeaa4f2acfab3c6757633ddcaaad
Date: Sun, 23 Jun 2024 06:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719125542
