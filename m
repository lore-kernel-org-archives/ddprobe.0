Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3215E8F5E
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749975596; cv=none; b=hEcEM3voBkXc51MCKuEzjKGyUR21JsH78Tu2EVwDWmsk/EQ64YlK83vrCZ/WqJSjWfJ/OQkMneTux8PZQ1qsA4ErATvYXa+TPIU6hgie0Y0EfUkLA0ZOIpYwWxwRSNDdOa27MnrAapRHiv9JWm5mOGzljT+vroMAKx7DBg6IKKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749975596; c=relaxed/simple;
	bh=Jh7Tcid31V88VxiYOd1bJCN/CCrQq7n9MTvBQix+OKE=;
	h=To:Subject:From:Message-Id:Date; b=aeC8N5McWRvXsG6xfd7lH/fLvEGHQiODr57FSOhCekX8AzlDreF3GWQULjeo2bH/pYXJFYpvnjgWItC9Z6BF3MIIb6PdgaS0tocY7hKAIx5n5IAWCgie1f8UarY4KjQGsox449oaw+uDgdXoPd5XrrTHNnDBK5FDKHoGWOasc78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBoyMPyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBoyMPyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA75DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749975593;
	bh=Jh7Tcid31V88VxiYOd1bJCN/CCrQq7n9MTvBQix+OKE=;
	h=To:Subject:From:Date:From;
	b=JBoyMPygm08DmiFzM4FEqHNPqLosoTkMygyxI/1nzM2Pw8WE9+Y0ZScwRR5cPM1pM
	 7Y2ZSVDwHt0cJ3hGbQfUSmpS/p0dCmg0IDa5DuArFzYwUN6OLDTuouOIqYPl+ytoey
	 T09ej7o57imVMg52ZW/yPWZQyPBV/KuYZpE7K2b9XjRkP86PojmNsjQo3aMuMNSnrO
	 HU6Ev9qO9H1vBSf7GU+kZlUm4tUya/Qnta4PxpWVxReqMOSIKoNjrtDZrkT13YHK+Y
	 LHgsjo3d/NIuhhoo1aRazGCJdWn2kW180KzQV84Ib1aobjpj/b0wvl+ELcxyl/cvvh
	 GoIwRJuAoA7gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B3C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997559358.30344.206584468247755380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121a2bc58a02a25845534e10b6c3f2d43162410191cc48ed1e864d2f506571e0
Date: Sun, 15 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749975593
