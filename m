Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDD826CE2F
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767021234; cv=none; b=MenlwA2eGgGKP491IdKs03m8ihWbLwaFNduOFi9fIlkt01crxAiknJbrVWuqyOlMgTvJ96RHA+CgvVJzZh4iFJ9W+u0SIFKvMV6L5CPRafWtVf1iiAua6ckwkAzrox7lNvxV4vSlwy6bCbKODuovHX7ENCNCALPEixlqNmfy6zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767021234; c=relaxed/simple;
	bh=rz3IGmBbvU7RQ7GekTKFGbkMqor6/IKad04Ov8pgfaY=;
	h=To:Subject:From:Message-Id:Date; b=PBPbB5aFNy5yXckCf9oEi1xGKxRezEMhDZH/9OBe34Ro4HKsaDuwvWe7XytwBwm2U1RC1kQzjt3kTrgy1LbtaOqM0vSpSg7qMLrGHKt4gKfh5Lf2JSOysJ8iL2tGme4LwD+xfiz76RPYo6Sa7V/aIUFwk7KkW0BJyK3B5frSOKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5uVv759; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5uVv759"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EECC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767021233;
	bh=rz3IGmBbvU7RQ7GekTKFGbkMqor6/IKad04Ov8pgfaY=;
	h=To:Subject:From:Date:From;
	b=g5uVv759BuOjWCUbXPIMmDuGZIzjbCG/awwg16uqXsU/ATSkKrZeuAtWD8VT7YQBU
	 MDkXRHgmKjcLIkMeBBRQOukeZG7a9rThHiodMyuvKLo0dDc1ffgxMjYByrrUxzeH93
	 5gAYNTe24Zc6i7wmeGFCuggOO9k6HwsjqQuSCr6mp9Vn44R5tobO453eFursnAM+lm
	 5Gpeqj0Zy3MtK10ZxQ+/mLZ7tXrIPhjm+eydfcc0D0FYxq6DTmr6K7ipNYBg+IkCNr
	 9fKU6JHJMtsjN3qEWj2mpcZmNB9iXIFs+duIbBAph07movC7FeLh8StpZmtIlk+vFL
	 5dOYaOFj3jFYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AD7E92733
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702123359.26606.10534862766582248283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937e0a655a6bec7048235ba7c3c87d9179283f122d9d6ffd0885904245bbde78
Date: Mon, 29 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767021233
