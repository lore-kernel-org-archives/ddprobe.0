Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1CA36C580
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782053194; cv=none; b=ORDQObZp/NQLfquxbbPfucFJiaGfusXf8ZXey7zMliwe8bk8QQX0/ybGvvlpWMKkHvNe8VdD1/jft4momTZbjR4S5OOJPefK2Z1LYtvRKcpiYT1ozo5W7OCpB8yxkiW0BgpZh9zTNYGQJePK6Vsy12Nd1efQJr1C4wsV6EvO120=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782053194; c=relaxed/simple;
	bh=wVlEodHQErYwhvD66v6I0Dl38xjgBPeF3Dtf6/+Ynmw=;
	h=To:Subject:From:Message-Id:Date; b=I80LH0tAtt2WPsQL6FTREZ1gfnr7cWtRjjdTwMA6/R7xh4vkPAUMRbabJwpcaBlZ7W87jGKaw2N+c362UiyHDklqRbihbMqqTTD6TdhJgIeuGqW3EjZ7ek7bFVyP3Fn/suqhsQYyrjDjdN+IQLUDVgZC0KKzNH7+gy2L7ZAH5Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fblDJWeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fblDJWeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1FCC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782053193;
	bh=wVlEodHQErYwhvD66v6I0Dl38xjgBPeF3Dtf6/+Ynmw=;
	h=To:Subject:From:Date:From;
	b=fblDJWeYLvuhg+7TF3WkCzhe3zRiyByij5fd0BQXEkmQMzqO+bv2VavNx35x1hJma
	 PqKDIOujN0sdfLlL4fDWrLfkeCI1jIIDb0pwk/EJGbAA1tTj/JrKYfbxbs7uZeiY5J
	 ELHjYPHycxcGObLLhOQkxf7NPVvtcDULjN8WUZZlMdNvRHGHJWXRaXq1aBasJVnclU
	 d+RfZGOD9H9EH+xvGBV9CamGiUIrMxihjQpfn2SOqguf0pVmnw3r5l2PZ8WFZUlaFj
	 PBgT/mV+RoCTTe6TEKMEQYbFKReWNtxUIRs3h0gsDdIhrAfWpJ/mLz3qn56LDyHWOM
	 mcD1FeLZTw/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0767CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 14:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205319371.8705.14827238922536877281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b16110c01ef6d09c913a0c95a13c69b0ca380097c89e518da990b1cb9fee49d6
Date: Sun, 21 Jun 2026 14:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782053193
