Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FF733E1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735972554; cv=none; b=AJChlkmh5AJkmiQaA4GfSjudPj/v3OT15GpKoL33vQq+n0JM6Zod940WC1FvhN9BQlE0iSVEZc3w2FzJQYMe/cZg/gusYBgY26RlLn6n2Zy3oFuJFdQR02SMHu0lwsdfn2wNJq6xQDG+do4gj988TRjDSBXQ2gJpY02VsAz9ues=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735972554; c=relaxed/simple;
	bh=e9DFL5vOlO3LkVSl/JrBpJODF0KsBkwLl336VVRUSvo=;
	h=To:Subject:From:Message-Id:Date; b=magXKPQzuvxt8VqBU51OkRdYROaCUjNeTo8neTDo4/eSXWbLV9CylmMG9ONxiwlOyrtRyQLw7XKwb8rSRZ7MBiAqqk2qa+86y7K+RrJBz7lMBbmUR3fYvSYFiWo+7QefpuTqPXn35FTuW82ze7zchj+AC999hTlbIuGkqJicKAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZxuZ0nL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZxuZ0nL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AB2C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735972553;
	bh=e9DFL5vOlO3LkVSl/JrBpJODF0KsBkwLl336VVRUSvo=;
	h=To:Subject:From:Date:From;
	b=OZxuZ0nLDwoBZesX9052qW7Nk2t93AII+8/plfPcBgHTu696m+X24a3d5UcMkIRGv
	 UQUZzpzvFAy2nPGuaW4aMmqDjBUXs/Lh7yxtyP+fehXn+2l2izylF3J/uYaZWFQ9IQ
	 pGHbg/OBKWZU6K6QdBpLTSU+/wz7GAnEMMACa6chDz5ztV/dw69xSFmBHvxNSDPpD7
	 +4/lkTuLefbVZFKmsB3FZX0IK5KsCARdi+uI5WUX42VDmeKGcW8R62YBhFQq/1LDAg
	 sDGe3a1a9NnwqAYe25RxJK0uCvoTXh5MsKy1txuIoOhp1SSj5auROQLYN7mjG8NUb3
	 bpZuq9Fqxaxyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB6AE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597255359.19839.6629891666310301959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fed975c3523a2eef4f208fa96328056ec3d64c103c290b34c67f4e7ee69cc03
Date: Sat, 04 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735972553
