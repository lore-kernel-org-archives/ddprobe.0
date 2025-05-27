Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A6C24BBFC
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748334594; cv=none; b=JGrPPLAC6n8Curgd2PjLYfOzkZkWXpQG8GQ9pDV8BVOoXvFbb4dXB3HM1zi7mxq5UOeNAiTEYGkpTDgw6XQlHXmf3IQLUJ1c3rrwfwUPKH57MyZHj5hXDE4NX+fXNFwiPBGA4TtVZLXorit3ucLlP8ard7Zyg6o6X2zWUDzcaoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748334594; c=relaxed/simple;
	bh=sGdzenje9SyvjI8k40b9MbttrM/oz299frkVu8TL1oE=;
	h=To:Subject:From:Message-Id:Date; b=V6VoK8eCULjKjV1ql117dDAtkR/f8yEVw/adjYO9ISOcRglBYt+UMo0Oc7XBWALah85b4hsAZCoKhI1iIuDaCvGumqn8cFBA4aXRo4PeU9olZM4n5ZEwm6jsh7aRg7znG376FtMVpm8RySZTf4JqAfnPaVhUp7N6giq7UyRQ1Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOqwLkiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOqwLkiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5253C4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748334593;
	bh=sGdzenje9SyvjI8k40b9MbttrM/oz299frkVu8TL1oE=;
	h=To:Subject:From:Date:From;
	b=DOqwLkiUA39p3ZrC6uN2PLCRswTlHdWbcfHSlSlUJl759EkzhC30vk+9oevn+2+pl
	 CwbL8JbjGSo02nv55ILhDyZkLSNBFHZrAcRwlNgKtDe1ix97gYQ+5VEXXitPgpes9H
	 pw8tAhkKsb1666PTmh0Zv1+u0TznmhHv4VZ7qCH1Vg+SqojtPYcqVi54rdYJPTLaT0
	 h1eN6G7Lv5LqjJDmsutuBZOUxx4eWyxigyjbj19EOK/xsLZXicbwDUfY0p35Uw9HkJ
	 hMhgsEavTbMYftRZLHvIPthyxBXQz52EWlI+HYH5gbOba1grgUfv0YpvmXtJ4s6CmL
	 WlEfPv5hqMN6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10FC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833459357.11162.7234845491274967727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1679111e07a60d28d4195d59a110c9b22dcbaa61b74d13728f5961289e730e
Date: Tue, 27 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748334593
