Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221D919258E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767255234; cv=none; b=ZGJh7KUUuNuKQlTZkFhaQJfGvklx4+9BT1BNXtCvR4r5C21yUqyOSAtFZMHF+nGPsfoJ4qvBaRWShQlMVLAOjRuSXPew8itSKckuzV4w+hOzMTZN3TJLXW5+82KQ55gTGwkZeQePdapWOm5b+ZH1gPmp8II5Wz3etVkkn2C4U+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767255234; c=relaxed/simple;
	bh=8k/Dsz+q14ovbL/02nW/IAj+mcSN11fzM8W80i2IIwc=;
	h=To:Subject:From:Message-Id:Date; b=fKiqcBbPdsE9mpQJXOUevaFolAB98YbS+bxYVr6/6nHMCmeYXpjZvWABfrDrKrKhuYgEy6nnNXqhUlgZ+bI0IM1HxSXMu5uKyP/gLpiAKXzal6/A5DJIIuHlKPBUNNBEdrvGiuvkVoZvlnqElpBZ7N/bCNauiqLO0hRLE0jKHJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKztpiSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKztpiSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85C1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767255233;
	bh=8k/Dsz+q14ovbL/02nW/IAj+mcSN11fzM8W80i2IIwc=;
	h=To:Subject:From:Date:From;
	b=fKztpiSa5im1FE98oXYLY4rw6KNz8bnf3iro7TAN34V18R7lvy5P+uOj6/K5AIDV2
	 Lx4dPQbU4ps7m58hP65UO0ObHha2PYntfNFcgUma6rYyVXvsIN4LGz6OgeYVZZUSgw
	 +5YOTPxGhVZcF9UpVuKjf+ZDVtbqkvkIFWLtLD685dZ+9OxrsRVENa9iX58ozgBC5G
	 edaS8J3T0UX9oU6RfJ63MyNbSgLvCYZzX7xGp3JLZJDqw11M8NCXRLamZeOEN4EULG
	 OYSmFoHK2I109tG0FjAFJSOLY4a+fo/Bxfza60hN0jG409YQoJbX7w17loWjHFW/7h
	 pnwEKJnDXkh5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9560DEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725523358.3524.13929451408540188439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4feb9ad59a0c45705a9d5784522ac81b4d1de8755742298a75e996dda450fbe
Date: Thu, 01 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767255233
