Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A4E35948
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754673594; cv=none; b=INmmzzpRwuBesw/asB6+9VvXkTR/ZztqbREnn6QMrYiAO6Kb340+TUh3jX8ip6g1nLQJnD7JyPcOTWvV3VKoveKKOyeTITneBu57oCk90ztKC5i4mKOU+lWXp8+OPVfrDbKYa6hBjJiYnytAp1l1HgXORDmbiVkft0Ae302p40k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754673594; c=relaxed/simple;
	bh=vGWnS+0h0iV5MmgzmM4HkQVfwdK4JMdOV3h5bt3yALU=;
	h=To:Subject:From:Message-Id:Date; b=ifYe8zVmt3XQERrDHgdD+pDV4txNxp6cFuJByZyLvku3FidPm4w/dvw0Z5icBxLd91D4N8sWnr/pKnIIx//S1uiBOZezqwDyVCw2udQGmWXXyx376hWqwPhn14E6I/VOytSlQEiejQ1JBZp9o8qR4TmEXqCQj+2Kr59K6OBfgiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epHNR5RL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epHNR5RL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A745FC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754673593;
	bh=vGWnS+0h0iV5MmgzmM4HkQVfwdK4JMdOV3h5bt3yALU=;
	h=To:Subject:From:Date:From;
	b=epHNR5RLFuSFArL2xUwADolxAUSmo64aUPG1SMp/qo6JtCzuugeYOTnp/T5+w8Qp6
	 YsGd5Wh1QoPuNi+SopkvKsjud47P9mzcltSM3AQDjL2MQd8TA15SFMgoQP+Yb1e1bN
	 WlzjfKtzNrM/AxQq8cBpeQm2d4TUFPuojTd+C2uGdT8gG3IgLgkLaumbPWOpTnfaUF
	 fx7R5lLCf8FSukmLzwHOydf4VlRD+Qz7c8UkuhIN6+2RiDZ+5L/PHoAhtHK5j6EkWN
	 rmOr7xedRo4GaocKqnOkxZFDgzetBmBHQoEjAht5lmgiVcxeo17y6JgJMQFSf5Up5I
	 3yZl5SP8hjzgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EDCC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175467359357.11506.11844534317516485315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef50c15864c2acdb1884137f4451cea2252aa05bc6d634afc7f71cc3ab6aa40
Date: Fri, 08 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754673593
