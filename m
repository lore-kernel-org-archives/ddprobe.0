Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFBC13956D
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709034497; cv=none; b=ir+WLGwt3AZG5+KavX06Q/XHQ1wXvGWjv4RkDLw8Q5LV5C5yAHdbVrnlhCNSnv3BFGvoXGu1PTZafRnAwr6Q4p1Flj5TW3DxYaeSFeZb89nz1i6ZMJCb1DdIN2ZEg8KSzrE1PWYypwaZ0DF+xRJ/taOSKSQPWroFpoDQWosoFBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709034497; c=relaxed/simple;
	bh=oEeK5+fpVqkJW9wOsDxuKRb79kWebJS4a2LcnmQrWlc=;
	h=To:Subject:From:Message-Id:Date; b=XuBWU+sVs8nrjLf2getbthyYkGUaBMKOzG26ZFBFxlxPpYdRlCuy0tJvUiJ24xfp1hLi3DNXM0vvjo62QMZ67PdzBCZQ2zKV4eqt+8eyKpmXdSMseYmkKS/UYA8KZoj90tKTdhhyIARBMk4ge9zqg85BJy1K4PLsjHn0zumKxZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcnUCuZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcnUCuZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78268C433C7
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709034496;
	bh=oEeK5+fpVqkJW9wOsDxuKRb79kWebJS4a2LcnmQrWlc=;
	h=To:Subject:From:Date:From;
	b=YcnUCuZGtjZyOo9Vm+9NYGO6RO35JIWB0ytQdqzfMsr6V6C+MOcpVQhPzW+GwsRDO
	 KdQth/EJ7CL4iq9xDJ02RSuW9Z3FSdCyegwHH63gslx1mb97pZyhyW1K8/LQ1WBoft
	 GrKjXxzaKlNv0KU4L+YP8t8QZdq13KOpIMOYGDQgh4NIk0SAs+OVRN3FWVdecXV773
	 9kzBoYcdTOttpmZJmLrF1WWRfimLLQLuNfU4WlmYNXBRWVKn2mcIQjYKwsds+Bvkj9
	 Vn300PeHZ4uot57fYW0cg0UBlBoe0H3GYsKtGzjndtO6C/kmV6zjGkEUwDG44tVti7
	 DM2ntll77upDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0B6C54798
	for <ddprobe@lists.linux.dev>; Tue, 27 Feb 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170903449637.23361.2877002552007831521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eebda97cc41e06cbd3fe64ec24d73ff9c420d8da1659b69606691453393afb2
Date: Tue, 27 Feb 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709034496
