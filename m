Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E10143889
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719296603; cv=none; b=aLAGTDWM6gioRl82zIhd/+HG0wjGr7nuOIuoJ2kNW0cv41WeR96qBFihYOGH0R4tQmYMJHbbHau3wZp3dp6Ykdr0T5RsM3w9oK2PuSSaMBguAxSYl5KjNWbi+ABn23g4rsYZdyipfB/EFmxrPOz5vfKNDoJ2nZ8RcOP82iBiUHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719296603; c=relaxed/simple;
	bh=vEz4s6WU7MNg4adEISCabQsXyaktGXy9rPczpb5aUuU=;
	h=To:Subject:From:Message-Id:Date; b=iksHqjBXVYwyd1erLi/8znInSZqNaquZ9YK63pmizFIM69OKj0uAzXsincbNqRTFk85cXHWirXAibQUfpdHglBb04wTv6upZJZZqDtXfS8OLh3ewm1SdxVzQQjeEQnwr2NcQ6hW3R6KKE7yWhU3UQFsOO5/Zwm9MyQQjv39GtDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVXQNpij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVXQNpij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0B6EC32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719296603;
	bh=vEz4s6WU7MNg4adEISCabQsXyaktGXy9rPczpb5aUuU=;
	h=To:Subject:From:Date:From;
	b=BVXQNpijy7HyuPEGYSKwbGHtRNTFuZVat4UE5eqVQZhchFz7xK99i3H7lOFYXKa6G
	 9+aH6G5FKDH7BF/R54OibzCZMkDeDxBX2PW3SLp3FGmQeP0PqAfwlFCxiuif4+Skvo
	 a1bM5P1M+KisWXT4BBTb5oIcpgvw1H8qrdM0m4cIlS4qzZqjKOYjAMxXyXBF8hQZ7S
	 tGIhZ7fov3VVqEXmEKrgWRr4FpGTB+B5cMqknb7Nc8p4pO8GBl4QMkGLDFIW/Wwwc5
	 o5zkQSz8nYivvjHaeZQhz4iY7KSA8Qk9KQtUMBl2/2OwSRc9mzDw02ftHbck8Vgvl0
	 8UzR+jAwmrcCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5BE4C3064D
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 06:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171929660283.29487.12850008070607443421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d00eea731df6aba1c71bfb87088d42c38c5e1f951c5acd74cd5158c50813e83d
Date: Tue, 25 Jun 2024 06:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719296602
