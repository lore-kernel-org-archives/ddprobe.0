Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372591B4223
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771745094; cv=none; b=j0RUqH9R2NjeG1vNjnGpW5yCxwRibnQPNQxJjz+O9rbfP4X+uPI5E3NHPlg+dOTd+EILuSB5YUBu1bK7GtCGfUHZ+zNkcRmDXKrQ1pSJAxJ/fcOeclZCckVvhr7yngKUUL28yAWhvHdDN4cw3d4UejOskocYKgk9yiXiZ0AKpFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771745094; c=relaxed/simple;
	bh=G6MGz7T4QTDD2y91mBUwCusWYxZvnXxHYek9DK6tvJg=;
	h=To:Subject:From:Message-Id:Date; b=CTnNGpxAvrtg6jhSFMykzrGkYwdTX6lZDtKuf5vcCNcMZir5LaCJ6CkpUqTqnndU4fYE4LANnfLXQA+9d+8HVaUuSFe5ypi8vTeyPc3MziUESxpgjkXpsf58Qn9juLE3CXSSiM7X5k4fP/5LnFzQiJaDiV8UpPUV7bXetufw2O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dzG0GB0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dzG0GB0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E0CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771745093;
	bh=G6MGz7T4QTDD2y91mBUwCusWYxZvnXxHYek9DK6tvJg=;
	h=To:Subject:From:Date:From;
	b=dzG0GB0oPt0JwHWc18DusjYxFEQPm+9DMYT1lqTf2Z/Msotmly04B6SHh7kCnVDZ+
	 JMgoJ3RdSTYTPqLWJ2zAXzjCG2txYxO7FaJuIGe/SmIq6jxE22Se/4YFRzKtVejGTj
	 Br5n+tehRsbsvYZQGtCPSkWDVjn3dxRX41nLgn+p/YWebYOEqGqNFoYhQXSGngrxbT
	 SX7teHBoJ0gVze6hqZRBaAHIK0xWd7P1jWBScdCl/rLwHsxB6x4PvkX/kC3lRSKO2q
	 XU6u4ieubUun1WBtCkFSKdx/TsMG15XLbVlP2F1d7kl47DYiYmHgbmhBAmXiari6GY
	 m7FXS7bCMA+WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2897C624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174509363.19481.5161866505176714092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e75dd70fe6a7e64bbcec2d16b9caf681ea3478f05da1a6a69c391f6b55541024
Date: Sun, 22 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771745093
