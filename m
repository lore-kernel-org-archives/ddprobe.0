Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E132581
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759317594; cv=none; b=gqw9yQL5+388z3QJ+sEyoPW+WFUd+/Ah8igrcsSKdcXSEGnoiVAIgPkjaafC7SuU8kH2CCiIVZMWRrNJcwAUs8G8DXKR0l4kgfyWVTpB4zieOiGJu1zkF7dB9mSBVEk2DbO7jzJ7YgyaU9HASZrK5MQYAkQwDpAh6RQvfUEcBoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759317594; c=relaxed/simple;
	bh=+7RL1od38B9T1s+Re/cJpjGvnPoU/wN0nMymX6+1kQI=;
	h=To:Subject:From:Message-Id:Date; b=VnbSki3iVN4vpFbZO7t1NVb2QYbWoIqxy9xorTqgNytj40sYbBgwnbHZNoFvpFpkh+TllqRyBoReSv9zV0VxoExbFDijMG7BoGddi2I+y1s8iCTD951untFMCTK42gz1ii99roo2riRg/k+iTrRYjbNEe1Q4Vkjl2X7hm5z4gxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaEra9wn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaEra9wn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1B5C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759317593;
	bh=+7RL1od38B9T1s+Re/cJpjGvnPoU/wN0nMymX6+1kQI=;
	h=To:Subject:From:Date:From;
	b=DaEra9wnDdChcP2DJt4DHMA+X98i9iOKuf6lZedKC1hOfbO5wYqtV0ppeEY8Lngz4
	 TPeCQwhENOYYReLbOY6HNlPuDDDQwef8s/JcicWLkzXJ/14LIVlOOYiD4r10h+2krK
	 iWZw+RbzG5obMgcjBcfLpK9pSc+YnmNU/ILOaudvUE+BIu0mSfneIfsP1VHbGisfhr
	 IzOIAzbAfrwV2gnObS2knI1yVZ8ZYuWBwh6HLD7vZDphnf1L24hK7uZ4kH1bUi6e2X
	 TdcbZDFcVdZcOPPw4t05xSJKXPzcHENtkBhpemwNWsyKHGc9/REBjtlBji/KjFrB8R
	 FkrA0Hr0BMeLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E9CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931759358.21909.7434763712237494144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863a37f0b3f0b9ab973776f450ffe852c16a69b610f102f0dc942a6df4d433c6
Date: Wed, 01 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759317593
