Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA1D83CC7
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734414354; cv=none; b=SNl0HH97ZtPddzBm7Gp68psgbFUZr3LQbC4/KdEqKV77qVZq9WhRFAnymxzrADd5QGe8BYb3B4+0bn+LknXLrX8s9RXDdCwVvcZlGv9udtPNu7wI2yfEzqAVoyQyOy2LMvX43ARC2i2kCbgoQnZL4dLY9aJDETrcmm0K3e/KvOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734414354; c=relaxed/simple;
	bh=THDHkMItMJBUj8ZOLRvji/rRl7DdVEWutN+Q3VDJgW0=;
	h=To:Subject:From:Message-Id:Date; b=BDveticMGZVypTX6WPXiZojI5j1vMX0MbPX+UjMMk7Sc24Nh7CAGn7hXcxhe547qEgZuYB5ctlKglkfUQK/kAK8/ZkNstqTvkfneBnavHLvnSBFizKJ4dPOyvDohlS6IYyFCa3LyOTx+sVUm5Hj9CR06jHU6R2F6BrwPGaWQSqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLluRq24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLluRq24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD539C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734414353;
	bh=THDHkMItMJBUj8ZOLRvji/rRl7DdVEWutN+Q3VDJgW0=;
	h=To:Subject:From:Date:From;
	b=fLluRq24t43b4nZWoR84WRN8uS7n4UotR1Y6LU7mdDzZbR/MQr8t8IfTr8htbWoiY
	 BnNb1V5Bnu5hb/kInKYdO9ihyh8CKan6LcvXognLJgA/beDHVWi65Rz78S7NBJYD0f
	 aBO3K1CPjp0UAfwMfiAE0PByEod0aaeKUN9djrcPX8Y7gsMxmo7aBCWJrKyy5k4F5o
	 UpTZlkW0CDC6HE0mTPnWbCq5gGC4LAl5WDZkJn86A+JA5wRuIPErdZd4OhtLo4nKg9
	 BnUwS1MQR/QaxY+i0tQkjrn1MZn0/Z6tDnKgnT/1fuE+v7PN5HELPiXfktDA7N0FzU
	 QVlW/4pXxBQgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA47E7716A
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173441435362.10624.4926544321285333770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d820f09d9bc89445c72e1947479dbc973e6efe28b47a21c434e6b7773bffb70
Date: Tue, 17 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734414353
