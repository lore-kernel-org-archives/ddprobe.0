Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354D413E02D
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746757794; cv=none; b=VKV7FpvbdTV25xr8TDu34+P+0vnNMKlhzx2pdTnFqhMDarIIW8eSqYi9vm/QsrYjTjwpVK5zg8xbPk+8aXiZJxIDphFFkvGm9Az4BTTdeUTzM/XkWp+ECXEqQY6nE5WYY2ZarnShuf6p1hrXsT4quEFaW3UVCN92+SliJ1AhN9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746757794; c=relaxed/simple;
	bh=P3gVuRfFNSNnAW8uqRua3Zh8TKyvRHLMV0rF/D6JOU4=;
	h=To:Subject:From:Message-Id:Date; b=YMjB/GwJFz+ouslxzCA5Vaz2YNtD6NTfPcFDR7XJDJIvmy32k/ZfYpaJtxn9Ii+Mfw8Wr3AtMl0/j0xhOuQo64W/dl0/8Kdz8TFv+eG6D6BeroJBkkPkCAmYliRLq7gQykgzGFii8J9ugg1yofmezbi294XQ7EQqNYDXkceMTHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SF1BaNjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SF1BaNjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0241C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746757793;
	bh=P3gVuRfFNSNnAW8uqRua3Zh8TKyvRHLMV0rF/D6JOU4=;
	h=To:Subject:From:Date:From;
	b=SF1BaNjoUpvhFizFuOX0wEp3yMjzRpkVtOjJj+/Gt8lo89QneCQ7CeEiPyxGYrUGr
	 IvKjPRvzBn1eGBuY0++lgEPacbVsAKTvJAoraBSuYSsRIiABqQZg2bqUVcduF7XYgg
	 yQnnoEMve0Kn6edRo/XJMCLZHzNwjerHmv/VI7sO9GUSkm0nEdzpG62LEkFUA3D7kF
	 9oRjf0NohlRem4l7BnolwNCxlB45tG2tsJUATbiTvlZiHFhYilxj5+4Ub91hfmxOfD
	 3/FuEDpEXxEVYOiRixFAtizkKWwZ1RfZV0KkCHZHjAidV30WJlSBAjn65W/tLFSzW1
	 qCU8od82KtaXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB3AC3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675779357.5735.8804098643301154970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e478185b4a8ce7453676bef77c48b46c9ed6b9f431afcb55e7f189bd042bef6
Date: Fri, 09 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746757793
