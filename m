Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A524C7F
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747546194; cv=none; b=fTivxzFMczSikYQ1ivyHJFQLsW/nX9xemvSfVjwR/dRloDc40lc6sGp+c2QSrc02hFbTlJ3otQDNL6ALbTdMFWQ1Br1awGDcL5cK2CV7hnPzW/GDTF45GSq1ag5YJnnsz+PTxJoiMcjpMWgjwRUq4jJasjjEIOvxQ+TBjnWd+bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747546194; c=relaxed/simple;
	bh=89E1t8NvkGyUWX6IBw8Cqfe9AQHkrfIo1xgmusVVEv8=;
	h=To:Subject:From:Message-Id:Date; b=YItT7neDPpi1hqjlnUtKuXJs2AJF6O8tw/9Fycrzw+94ICw5K4m5mRS8Xdre2UvqFCQN7ydsyCsBk4P8z/ZBoGHtWANzwaW3B4fgxOQ3sQd1ZYJUl/0KIwvkitC7z0SDtoSCjNKJQb+YyttovNY1DIBnjf3uO2KlHfyknb2Lyxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukG8Q20f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukG8Q20f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7250C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747546193;
	bh=89E1t8NvkGyUWX6IBw8Cqfe9AQHkrfIo1xgmusVVEv8=;
	h=To:Subject:From:Date:From;
	b=ukG8Q20ff1ze7Yuzze9Gq8PT3LwJSXcaEWeaZdmnrQw8tGU3QS0uqKxRrSch2uawY
	 VoSF0Y/NvJHSAps8+KhKp6bbR8Sory45ekqXu9Y8Ut901m3+dCp2bgkud/QpU+K5m7
	 y5SFyl4CJMGL/29jtzUzreOuzXOqJloqnCGI69cYepxlXvgN6sAdPeVXXWPd2RcQGJ
	 iFjeIT0xY6w2ftkSy6nRnspb2NUBdYGRvWrkDdJ4VaMS9tZ3zIktddbfjnVseBVHdG
	 +YR0lhvnNgRkW+IvcCmQVJxA3B3AkDMBABdxz8eXKBSy3cObU5HqK4i7XM1c29ljao
	 oxC+i2SVYWKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94813C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754619357.17799.2713065234183292832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856d4e021590f04485664bd1482ffb3e541e101baa8554ee1691803c82aab156
Date: Sun, 18 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747546193
