Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B8A19755B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752688794; cv=none; b=RtxoWIcrRS+SiiENAOwf4722ohccSbE6rdNayTxOGxexrtGt8sz97HiIcklCdp5IXMo5cJl5Y/I3FYt2FQcfz/eeiOZ9TFjYTTsnk8DjQEutL3Fjatg5ycoVzPDAHrUdimr58qCtJd0YIU7Lz9lTidIcCe8mfMHbkxcWWKcpGKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752688794; c=relaxed/simple;
	bh=a8ufm1egE4MTBBvbS2OdWqYW9R8YQaskn46oxiAcByI=;
	h=To:Subject:From:Message-Id:Date; b=dngYBP0B/DvCquZdwI6weJTbdjOJ8Ty/b+iC3vf3HlJZyOtdczJJbdPddmpbwo2VijOE7eW0QtrIgbnel4f75DwqR/lQVMbJ4l+9dBFaCyK4/pCOLhQ0S33Cq/ZRvIPZMEGW6Y8LlpdvxF6HF6P2EDEdWMyUJyZ43jIouxJW+HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQmw7wKX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQmw7wKX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26B1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752688793;
	bh=a8ufm1egE4MTBBvbS2OdWqYW9R8YQaskn46oxiAcByI=;
	h=To:Subject:From:Date:From;
	b=NQmw7wKXopPmTuxV1j9pGdf6RCEVfsjtRIMzgdd/GPkcmBDo1JrtarrPmcAq3QpFG
	 Ax3PIO+NOX1CjF5GR+NSxRP3JBra8y0BcitlHwbJzVBhcKjQ8LLGVLAg3s0OyBxpCQ
	 s/tl5vYbfwY88uyRn4gWj4Y1OB52lAZmjxQhq36DKYErvHMhrmfdS5UVa+Btft+uOB
	 /3GmQV18Y0Mu25pMlS1+jZgktKM04xeNONU9vgynEFM/fyJ976k/2mt8cy3KdPCYwj
	 sCzs4xZm1z+eIQHcBxyJ2HepbMlzemOa7c/LCpSjOclg9Y3jtAxnX2r+MqrXGneMc3
	 6lCsB9jemrfeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE89C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175268879357.10317.17724490081182296758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499e6e86ce72de9f009f0fab941a54f54d4ce962f0d2df7ea962702dadc01393
Date: Wed, 16 Jul 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752688793
