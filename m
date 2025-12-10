Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A35B26ED56
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765368774; cv=none; b=qednhe6BeJoUjjetc6UubVCFbQWkOvQE+de/uZZVir2YHl2DX50M+VHPMieWGfwDmv83D+KXe6NTVOubmW94BBFXUqJLL9HLOjOeft0LqeCfN5OcJVZA02RWT1vwnYYDN3hg4uyHOQqpqie7HPntB55WR918srq1EFQX/2pLKmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765368774; c=relaxed/simple;
	bh=SfJZ3tVx7OjNS2uNVAgwObYoH8ULUV7w3RJGIkvAios=;
	h=To:Subject:From:Message-Id:Date; b=reuK+mSlrZl7O8eL2jrkUDpaCjHXqKmTGGLjYIdR8LByZzpA1KrQi1ELklOz1keMGsVntHtLMOTOJEeD+cSBEvs23/eQExHsSsI+eSOHvKL6YG8VRxF/1fWF2DkIRsZsa0jh2T2aCHQZzXkHwaTBSOi9bV7VObr0PK/Za9GyQNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1rkl0dQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1rkl0dQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12E3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765368773;
	bh=SfJZ3tVx7OjNS2uNVAgwObYoH8ULUV7w3RJGIkvAios=;
	h=To:Subject:From:Date:From;
	b=f1rkl0dQWvfDWUkbErQnA3TIb+mvrxKsnDjuJb66gJn6Wr+NDhhfPtTnICnS23I2S
	 2BWpYgTxTtIoxi0l6Mc5F2H4+TvnHydz74rQqjH4ITCHWvNxTcpqeDcRtZLZDzfACC
	 BrKLdRKTVc8UvN/tT2qU+1z7pHuW/b/SGZQIn9GNNk+u6pK7uPpFPb0etqLfP91s5i
	 ZhqNeFhen8o7AM9WoBzzTl8bD6KPS53xitJ5gizauhlf0pWPsNEwFgThkAZLJBgU/l
	 y8SUpBUehqyFu6aPwuCY+qy5imG9L4IZZuuph4t27LN+msewJaXlgeLbd7ERm/2mJt
	 5w2YneIhKOgjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2DCD3C536
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 12:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536877360.5929.4893826480967598041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2ace7b490afe1ccf53d287f764d543f114d162a6e6019fcce95e3bba5f5e4a
Date: Wed, 10 Dec 2025 12:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765368773
