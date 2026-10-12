Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FC349B1EE
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791818434; cv=none; b=ow8Rl5SQkpux/XP4MQPe1y7tOhgnQsex2eKQVa/Pu/xRaAMCJpyHoqNsATLNpQHpDs4DJJBOEFCoYWlFPItL961WR2t6T5N46sGHl54dfV/osQ7fSPYn9twySq1CAkQqf9do1TRu3QuwC0v/HIfVx5Wtk96Wm7Ugf+patQfP6zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791818434; c=relaxed/simple;
	bh=hhpz5WyKoJ1pPGo0f4tpEeW7fdV/ybXRNVgb/for+UU=;
	h=To:Subject:From:Message-Id:Date; b=qWxlf5syALvH1Bf4alMX+oIAGzl/Zz2Ezs7bYnAkjuYMVGK8ev0CwoGvfXeD+qtSaJb/80JmkET0EXOO4UYNKfC1y8kSDOYu66AqF9K1vnYvDcO76z82fHh3oBMi6OmjiqAGdLVJbT8p4XBhHag8S6wkvZaNUtGdzWxPjU89kOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpfoQPRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpfoQPRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAAFC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791818433;
	bh=hhpz5WyKoJ1pPGo0f4tpEeW7fdV/ybXRNVgb/for+UU=;
	h=To:Subject:From:Date:From;
	b=dpfoQPRtGU8+8PAuXPQDpxjT/Uk3FEFMGoYqGVsSuq3inMMwUATfQnE5Uf8cBI1FP
	 CQj0+kdUkKlJ62hApfDDpxuN1RwyvnsByTEd/xv0aytNxcYarZhZwLmNRB5xhDgTMK
	 oJLsTt5cQ2CeGEg/H9XEFdkIFmVJLAd6DwAIKTwSL127apJJ7CZHqbh6cMNNMaPX/6
	 v2su0ZLGf0vH0VLva1sgaev26bTe1iO7mp3NdP17J5oLhSzQMQdGPUC/LrPeXzqn1H
	 gD73b/rfJk1C7tIA4Be9voDvV/kYUdDQBLNgvMBLujSe5lgTnjYfAD/xQjEyEg7wy3
	 w1xxirZdqpeqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD5DCA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181843369.337.6217425075431822670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c4480249b838ab459eedbaf4d212d61aca0720ba10e601b90acfc0f37aff263
Date: Mon, 12 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791818433
