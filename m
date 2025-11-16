Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15709FBF6
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763319114; cv=none; b=uZVaGVIMEn+ZEE1YvRQ6qhF7gu2gH8I/KyvEC162rOjsDxLf/rd8iZsndKnqDeJO9lsGoJi0KSmok7jMy3cxcFZxwj4EHXUFzAlqMis10kO4DZyhaaJdDSkdLNxGCIbHj8DAWbffoOdNNSKWahS4T90NRu4Pq0JlDgCb8/MoGbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763319114; c=relaxed/simple;
	bh=s39epNDqRlGZCL9g400LZPUW+tsh+tRyPYAo0YlXKtc=;
	h=To:Subject:From:Message-Id:Date; b=takwDkgMabLn73aoJNKDQaYzWSczgbyNip4MqtTRA0hF2hr62aiDZr9taGrQIRBSWgtWl+k4RsfsA4459QvV/gmrX2zI2AQcqkWoS2MAC3vPk/h2W2uAohe0Z4CVJWFmehtsnmSa/dtng8wJy7sthh1ScmnLMYO+0rUzLktITs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGlDwsu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGlDwsu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F691C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763319113;
	bh=s39epNDqRlGZCL9g400LZPUW+tsh+tRyPYAo0YlXKtc=;
	h=To:Subject:From:Date:From;
	b=bGlDwsu32rz3dzZU5aauNSFvTwKDyPQConZ65sa5eRs8puaHvdEFMH7YCjkHPeI6i
	 nnIb1c4TtBWSrUhhSooY+IK9S+UM/PdNRYM1/2J++Th2aAgINXLTkg9qn+AuIfWAop
	 K1q7hqYGPRV/C6bx57Kl2nY+nbj5+wzlMUF4U/jfJizobk2aASCnhxnNakipl8D7rd
	 p5UczX5NhH8arzKWHmzbnXy2sX+OMNWmCbcehc98YckeJeWFjEKVETR/WwFu/JgGwZ
	 hYFDRJlqQLVN3n8uAE0mXPQl20K9pxNvD2Dsal9zusuJZzokN2LQi+aj6imTvB5TXy
	 bLVv+H984WSeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923A3CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331911358.12760.9289936756238643123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c64b0cf6c9e42f866a1928660a95d771136642e295c618d088c6d90db65cc96
Date: Sun, 16 Nov 2025 18:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763319113
