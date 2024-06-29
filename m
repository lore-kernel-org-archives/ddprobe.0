Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426622BAF3
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719638663; cv=none; b=tx8AMAsS7gqr3xS6Y5xyN0Q93jXIOPmPnlvzM2fQpMJiDT7iUwVeqdJtNN0yJbd8NRc37lQCROlqsrrmAdZh5i3jDWvQ755CH4cD68882K6WqXLt4rOckOqV7pZsAXdav9bGu6cIhBzp2K20Co8Vmfp5nwJojz67GEAzVurMRco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719638663; c=relaxed/simple;
	bh=ymlH+SbzXkXXV8LB0hkShsZiGQ6x8n288iz9iHV8/Hw=;
	h=To:Subject:From:Message-Id:Date; b=cLbeeeB81ERcg3dPea8pMN0ytxXsE+Os2mgEYNwFWsPY1+jMetoCa5pxY7tnWasaHScBQiFR2wUh4agEIpeC0Ai+yEOgk3ttpmUE4MO2jvEbw9hs6b4PQvUY99CSljoabJzVUKnK6azbyYwLMxB3dHMB4wuT45wcUZmJvRJHsBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hwi4EuQj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hwi4EuQj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4899C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719638662;
	bh=ymlH+SbzXkXXV8LB0hkShsZiGQ6x8n288iz9iHV8/Hw=;
	h=To:Subject:From:Date:From;
	b=Hwi4EuQjFuz2bsOcndxT6ggKWuHYTEI02XsGlNv8pcFEjwizkg8K4TzIDYuERl6ZZ
	 t/VNwqG0s4FBa9laOTQHbMENvE5js7KvpZGr+VsSuQ5Wu9GUay+876DGWzZRhcpaRp
	 4ULe01+sukfYp0xjtpLfFaV5SLpMQQNvZcFUCiP+TPw3raQe7O5vkmVLQrLri41JLF
	 qtiqs96t4PJt0ZhLle/UvVSxngIlPb+9WTq4Syky7Jo6Ba9Cpa7wGbmkaO3NRBGlbT
	 phSM7j+SZpAxzG2ofsDyI56rwsov8scQ20fHBVoNG30zUz5kmT6yQWU1enrumOZAQd
	 I75rYNanhhO4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C412DC30659
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963866276.9064.16441692732256539494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f03d18e915a6770a71828ffaed26a8885890e84d46631f1f452631ad674a89
Date: Sat, 29 Jun 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719638662
