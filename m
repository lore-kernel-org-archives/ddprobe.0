Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422E3186A
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742275194; cv=none; b=PdNofd6M/QHDgj/78ny2MOMEunXq+RPzfqP2DHyY10H5i58Wm/4qQavipahKarqkN1xL8QJA3a5y+wJ536kYYuY9zDUF8cp+6z2vlGdIM/qbUnylEsQjlliKXFRAobWavebH/axPJil+nK9uQ+ovQ6giSyQ5nH7PL9U3K8QEl4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742275194; c=relaxed/simple;
	bh=5Am+ZK+cLVkEB5DUJ7H/JJoRNxHURUyg1NozgBRys0A=;
	h=To:Subject:From:Message-Id:Date; b=Q4nKyBvoyd6XZ2a/OUAxc+7gMLpTK8yWQ3iiOna66XhhtRs59c9omvMUKQiJOc0UaFxvrNoECMDBxpsqyNh1nE3Svob1ymLAQ7WrUF2ogLMG+RSObtThVTHYc8AjxTN+V37lx7unzuPafBa6iLnox78Brtik7o+zg7U48rYovdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHrvBmYF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHrvBmYF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5087C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742275193;
	bh=5Am+ZK+cLVkEB5DUJ7H/JJoRNxHURUyg1NozgBRys0A=;
	h=To:Subject:From:Date:From;
	b=FHrvBmYFRC5gWtGxJ0RVA9MEAS8EKuSrdEK8HupqYdoFrNTaMz5W6YtS8JX7wkn7n
	 KRca1QHUGaF2/61yOJ96PjOicTyOJ1L3lGA0bD+vTiW2KSKASQtYW1+rclU3vX9WYr
	 yD/pAQInG435l1j+OpAUzKp52GoDKNKiJyKmCW2x4uubqSYL2/28y2TFX30xYKB72y
	 tZedz3hd3+h44nKt/3lxQ20cPh2x8dzNw0UVlIjyyeeKI+gIFG7t5l42BUMnw1XvC7
	 U/FHvd0P1A3JB3orb9rMarbMo5XQQHxKxIdeHvkdHBwkFV8UMMrgNKjXXAPNtsNNn8
	 zrP52iyFH/Hdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9D9C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174227519361.23602.17231772851692265513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5d9d7e314aff289fa6124bb9ff4b867a75f91e1b0609464c78342feea827c89
Date: Tue, 18 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742275193
