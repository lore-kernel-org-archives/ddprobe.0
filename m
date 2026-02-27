Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0116F333725
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772171094; cv=none; b=GYp416ILJrBorMr18rJfQevh+rBtbHepgC+zRDOb9pUcAOcrrrqbsCBkNV3Sb3a0rLFEFELP1UrLy/yo8YABLmjV1kDGfO5ZPqAIZgWF0yJUUZowkahBAFuhFLPB4pOtkhnseeRYt6Rvq7+PQD5FDP5jPymN7dWQdPrnVT1I0V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772171094; c=relaxed/simple;
	bh=lKcHW9EruuPogHNGkm5HfNmu+CyCdhtldlQLoHNBk2c=;
	h=To:Subject:From:Message-Id:Date; b=r95aeAN340ER4xFo/Tq61CcxUATTcLlg5Pt9wrugwgEgpafV9z1Fz3GHR7yPbRWgy6Oi8ETYXRBoReLPLyRVUa8tCnjp6gfy4y2XbliKIV0OC+Ck03oEbImY4jX0F/KLHezfXX29G9eE3WoyTPT1PuKQOpYobx32tM9jwazY40Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dlusrkip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dlusrkip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F57C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772171093;
	bh=lKcHW9EruuPogHNGkm5HfNmu+CyCdhtldlQLoHNBk2c=;
	h=To:Subject:From:Date:From;
	b=Dlusrkip2eFKOc6MIBtZJz5jxJVNDcBuaVziopUoE/WXQTplJA7TyrSJ0xYeEc2Nc
	 S327ioBkcHmb5pLU0kfDwt8JXhEVXK3iZW90bAy1nlH1KjHGw1ej3PJOuUF75ROa3U
	 w1lc999lOjnyKQtn0SgZBoZGuZaGoYQNM1R3ldEhXSwKPUFCJkryy9NsJBDNH7Q4Gv
	 yCTn2C2LS1TV+0d8lpWb4Xjyvz9AsbmXUQofaAq74w2Y3UbJkBuc+gIUZIhJoz2bAO
	 eQjDHMCgvMFBLJrGJaXdRF4hW4dbu2trghyQd7qZBs9Yzbyl5mAzT99NeVt4oPx4dg
	 vxn/FfTRepTwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A1FD9E3C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217109358.939.11833068709874426344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db844bf8a0a4558429861239d133192e66eaf092bec446ad3a09051a7fadd953
Date: Fri, 27 Feb 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772171093
