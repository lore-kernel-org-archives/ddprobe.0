Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448AD4A5ED8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789681234; cv=none; b=sWYIqBcWYn/Uq4yoWIv5fGp6yn0iW2chwl2xgzlrEetsK6MyTcHxTKbvAfB0oH5AJpZGApjiMmmNGyI4SS8mXmNbWaOmntmaD8f0U1TnW87c1hAvYexhg2Zde3jfHHGrHBHnHXcy3B/E1TUJa25SgX75Fs7yfzpoTC9Fv/UnQV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789681234; c=relaxed/simple;
	bh=VoT84s5lHZLm2miz/nOIdUqbRUMthYsUWBGNeZymBxA=;
	h=To:Subject:From:Message-Id:Date; b=PPDq0aV9OnmccSnvESkXJ6XTJNQP6LBGSIGYgta5jByzpzGeR3YeKeK+Cae/ese2XvoMI1SacpmA1KO5ZayzqiWIKBbamHScjgrhySa66aKD63Q0nx/lyFVmflL+6w4Y0S910URCqbnjkSLO/ZqgDuw5Nh7XwMaTGdeCSRQ4iJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jjt5ytY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jjt5ytY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F2BC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789681233;
	bh=VoT84s5lHZLm2miz/nOIdUqbRUMthYsUWBGNeZymBxA=;
	h=To:Subject:From:Date:From;
	b=Jjt5ytY0U6n0QN9AWOtQw/w2djBZlI39rUYPLUlj2JBb6xls/e3ATJVxaE2qmg6JT
	 JOBRKF/Kao7C7UUKgsjNqErvNACiokIqQtwNe5sbxHwda/EeyOoh5JjpXn+VWgKYuR
	 HU1OQ0cLP4UE7JwGUYmQuazSPbJh3jzD7v7+AqTpB5+xAQNhvDy2P6K89orbYJzAi7
	 C9OPHNcXgRDtWUp0JkuIm/ok8z+YCBJyqola982bHdHQSS6sTOYBFC6icCWe9nekE9
	 /CmvdRkbLwSiXnzrq/1h2EHSnTRtXfwtIH0jOBJl+yNEg/zu5IYgndXs8oCFHoV4vp
	 9KWiLROTCSgPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD138C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178968123370.5634.15958576553629790121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40752648f48720fa1233eceab828fe81b976f7888c1e14dc6e45a48346bd422b
Date: Thu, 17 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789681233
