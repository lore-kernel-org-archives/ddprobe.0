Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537FC20B80B
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785577834; cv=none; b=gNid1zAsvlbAAuIjZOcRoOC624oEAcFUdDC+sUv4Ouxyln5Onu0DD2llHzRnPbETrcKlmU6eDIClmQYS2a692hqfaxJuaUJw9jUIW0rKYysmg5TItvns7P9Q7/Mgu06Plneq5o8viaQK2SAeOWELM23HBw3+0PKjU3FUCbsWCxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785577834; c=relaxed/simple;
	bh=FV1X7r9O3Oy5wK94Ea0Sk9aqwMvUOriMwEs7CWVUx6s=;
	h=To:Subject:From:Message-Id:Date; b=m0mDevhjpEK0pGOXnJKzJeTaNr91B2koS0fKfyeiAVrXZHh3Z7sk0CsBxKnn5eZ/MQj4UfGk0d74New2DBBzOhvK86ScX49U9DvUpTqNnSMgsCG7XrSHW9PyOPz90qlZK1LFkZrwBSOe+I4XTWW5YfvXSHBjDlvRBOSOykTEx3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEWkNHLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEWkNHLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D561EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785577833;
	bh=FV1X7r9O3Oy5wK94Ea0Sk9aqwMvUOriMwEs7CWVUx6s=;
	h=To:Subject:From:Date:From;
	b=YEWkNHLEU85bd6GFSL0K9ds2FGrkjaIJG7gDzIb2oOEd+Q3jpHBs8+gZB8Te8J8J6
	 cOwcYp4f8jtOtC6pGbarVP1ZDTlI2KyVjT51Ccfl/2jQBnBPWFeJXil0rqV46iV72J
	 i7kTjIJrLZdz9azVn2wjpxzGGMHUOzncw2fYYRrgYH1C8kSJhrpgTVkvY5DVj31FEi
	 XwePwM4a1nXOywR8prcDlPdxg0w2nUxxGLqZEBJATU4LsfbHDxeCr+BwU6aonPdl9l
	 9fkL3BV75nEZz82QFOPnljqyxIQFU6XWjLlb+xccbei0j8lSjD747umVdqT10SOwS8
	 7bAE1kboHtexA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC28C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557783368.20614.606318023665790275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721b17acf9f15b986360ad4eb456bd8df4c862806fad88cab986bbc24c9b29bb
Date: Sat, 01 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785577833
