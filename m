Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4130D3CE482
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779788554; cv=none; b=IyFWY+cVncZ5udhYGmVtj2UKksry666mWb4BdFLXpU4tuERBX1JNrY2cjF8pz0EtTGVKg84gkcz04zvBnsQDoXNnUGCP94aOVGuXgqZ4C0pfwE8h7ci40Qq5iwTvymM0/NlieP7ga9l23mAfsexC38KLlZrqRO9KWsnW2DvV01U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779788554; c=relaxed/simple;
	bh=KVdxlhcy3rSvAF+ySOk1JvPcqQo0Qzx4/rfwHvNuUwU=;
	h=To:Subject:From:Message-Id:Date; b=q9DHycrP473wFeCDeYTyFrw1Z9BswfpoQuvxnnbxL4RSQdllN5zMRNGIXTUxkJYugqMtNMW1/f0qHUAbMwoqDShWAWnwSdfK+Jk1sQ1TvAM9qqMLJEHQerxxIbJzX1XVY/oiOeMG5d5yJw8EbkzmO7YNbkOcvSPvsGJMQP07BWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNmmF5dM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNmmF5dM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33F1C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779788553;
	bh=KVdxlhcy3rSvAF+ySOk1JvPcqQo0Qzx4/rfwHvNuUwU=;
	h=To:Subject:From:Date:From;
	b=tNmmF5dMLWBTpGaBi3p2RvUT6rfPfUJp5ylTifFqZ+UijjkJHz7TxCgrgzdGUFAJl
	 /LSAkK6ZQ8AwMRHWIPyBnScbJl6q8arndcN/9YKzZQI6wFvbZT7jbQIxEet6c61GGj
	 r4N0UM+raHVzTausNjbe5figQtg93xE09ZftS/0l1U7j4Q6o0oksSaefTxex8mbCmn
	 nH3Y9TU0DEI0Pd8WZV5SA7pkGDn+a5r6k6kzwLAfPEH/pbN4+eRjT7HKDba+JaDR7l
	 ZLoB7GjvYeUe/w5n2O/NItyh7deXUhzIGdoSnAVgmrTimU/0yRsWqFm/hvimmIrta5
	 kzVj+lbHec99g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A881CCD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 09:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177978855368.12933.13273178110902039949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dcb88ed037bdfb3e5e2829849eea11dcedab75bd3b17a4edeb3c0bfac7f1ee8
Date: Tue, 26 May 2026 09:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779788553
