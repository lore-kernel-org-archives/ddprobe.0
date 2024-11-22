Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB864625
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732237554; cv=none; b=IxU7taCefFq01DMpz7LpLVp0iCo+m3uQuqsBfP3RCb2KqbrAI4PMyHCgOCv4HgILAOk1YT7+ErVkJtKcCXjrmZSeNJHKyFtplTvl0X7ZHOZxhDxfwxS+Yw2+AmQcQ71iLXdBJQc/OHzHb2VGpV9v6m+Y9Yvc7J1Yawcchd9khaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732237554; c=relaxed/simple;
	bh=nNgZUKItX7K2XcX8wus63AD2H6TbbbdpCJdOe1rZCys=;
	h=To:Subject:From:Message-Id:Date; b=XEdOfD6w/lXfhbRYN1Vr1ED6q1pLSDeRpF8IgiJPx8WYtoRxKN3FOszbn1ykn88t5jn7qAz9cq9sDyxVX9jUV1+z3uHyqYFlFRRPoMv0GYlbTQNp46bxJTu+mFuAi5WIbjg5fGqROhf1zv4A1AaDUk/bS6b7vFPiQnuzCYuYVtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lys12EaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lys12EaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE92C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732237553;
	bh=nNgZUKItX7K2XcX8wus63AD2H6TbbbdpCJdOe1rZCys=;
	h=To:Subject:From:Date:From;
	b=lys12EaOOGWAbi3UUvwioeWsSkyGR2EhoPUXBAVUFQVbY0eti7vPg/7GCBe6yTjEL
	 Z91FmSZ8C555QH9T1FOFF/1tEMYxP+bEN5W+5jcLyjvpoKtv62qwALEjSFO55mnQmD
	 +MNLh0B1qFNWyC1GH95BXtFgGm9jICKsYiVnjhVlQ4jh6cgyNDLZ26FSj4J9PErO49
	 ptYw0JLBxKSsoGEwcvF4FlbG+Jq6qoinC/kIb3fhJJt/OYjB9QubcYcmUGmNfZL+86
	 EK5/iEIG/ZFifkanTyVFcGE2twPSll/0gIIIGYMf7nQHqCrHiP3RwQGYN6XuQGxvbO
	 fzLCTJgoaLf4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52CEE65D0B
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173223755363.12320.9381257120298526926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36da84b585319d69d7253ab5f189d769b382930532862c421eafe5ea8181eda1
Date: Fri, 22 Nov 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732237553
