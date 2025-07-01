Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C38241CB7
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751411994; cv=none; b=WyH8Xf5i+j23SqXZl4WvaH7rdzzpWECmjn0jnDhobjKV3HI2Q+bJjL2aEB6ceGcHfRsPCZFCTG0tJlsITr1VOpNrq4u9all+qExyDjyMSVotytT7E2pR/FA+/3pXPZlQyUJsQnWmZkNChBGmqT+XKOdWBZKTP4RhlLapbjbijOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751411994; c=relaxed/simple;
	bh=VFYWkuPf0pgjgXjLRXEFdp1fKqZf/5tg2eeWtc2yy7Q=;
	h=To:Subject:From:Message-Id:Date; b=QMQ08Z9XGHl83F/i+zNHmBJZfcg+0Q90h2lcMz56lkgtEp8tgRgrEzeeXiM3JB8ndJap4SZPj6PxGAgCBPQHgpoGhBSn5I3gvPiGQUfqwtOQl+sTHFS1XMXfOwdP8q7rshgVIo/wS3Bi8kZ86h1RbrM8UPfN+zmoftnsE9q/TCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOvtKyq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOvtKyq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDAAC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751411993;
	bh=VFYWkuPf0pgjgXjLRXEFdp1fKqZf/5tg2eeWtc2yy7Q=;
	h=To:Subject:From:Date:From;
	b=VOvtKyq10eW6vSnOx20SxSjFdtk6i/0BJdsIG6z1ZV2uWZR888FfvTmdAn0KUgv2D
	 VFvWwE+onBroc8Yn9lDf3/Bm1GJyZhFivATX+Z01eMkf1EGOPTwnV4XzTb/Jw9wUa+
	 kB6t7s/tCAqs6k9y2VtlvZEL9kAurW8wR3sAUjvAwR6TzmNVe5JR8T4lhmViVIHzwN
	 Rb1BNc54+WC5tKJm0ykNmIdH8ikvfbFU+dFCh/mQAu3uiauntwcLlMAqjUlrcS1o1N
	 wbXNSYzlHb0QLOb/Ni5bGXZAZE8vL3ZOfMNneUavtEra7vNCvtQCPdaDuPvyirWESC
	 iNizn9/Ewov0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F196C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175141199357.1490.11752078773308278158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1428ee8979adf45bf1ec886c8e28402ed5c5e066828086c41b6b9006cc97787
Date: Tue, 01 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751411993
