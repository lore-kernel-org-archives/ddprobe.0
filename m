Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26120369D6B
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780057354; cv=none; b=AS22wzmtLkqo6kgy0B/JEL5a1HS2epJzTTj3FRbiviGdWrTQvGNxq87HGciKhDBw9XxBFGmRF+X9eZ/0WzIdbDSzMW83m8ytnJ6nwa8XE3rMgqbMg6NWyHgKHsnRBBkGmIrJjL46tk5O2PfE5tb8IniUr2OfzkDAcvKcHFjX3qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780057354; c=relaxed/simple;
	bh=179OdrlgxV6LSuzmg7Levg7zccOrQNILc5m8UgzUEP0=;
	h=To:Subject:From:Message-Id:Date; b=HtUJt7cKf5P2NxnzqQQsfYzQs2pjkKbO/EBamquObvMcSOqiXY7dkWmVuO7LB2BXM7jdCxQf81/R3kMLp5NZXiIoECMURZ/F+PQb/5qYdWwxu5LWgl0E+/krpLMFBuXNZoaWR90TCGZFwBA/9LdZoUGxFOfF84PmlRc2AbkBAeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rn5Z3MNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rn5Z3MNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7081C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780057353;
	bh=179OdrlgxV6LSuzmg7Levg7zccOrQNILc5m8UgzUEP0=;
	h=To:Subject:From:Date:From;
	b=rn5Z3MNJJyVvpxwRIcbW8AgxWpll+tg7H/X0ySvEN5gMuhwhQ9e02+4lYNZ+vLctr
	 fJZTCW7snhi0OMKQzan4IMDQVOwOOzhn7KwSSYDyP2IVKCzlnAYyFFCWgGm6b72ANW
	 oLgCGDf/14C/OsbtIklQzFCD1a7DpXwr9ZGTXQY51pNS8P0qR2SYdeAFHjItQZEfgd
	 FHrCnHPkqy6n3BMR6Zj0oa9vz2FNPFgoPSR2TjbGJcz8Nqi/ObUQ76PKAsmP/VXYz8
	 h3qnZs7ZLC7HRU+WnQJCmVL2pS/eD5tAgh2VeAfb9L2rQGuhOS27NUA+H9l7NfV3L0
	 ucNnOtwwbHxhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE07ECD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 12:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005735370.2710.14004540363961097705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c47cb08f6472cfe83656dd0fa727027797b83aaad8815e2ffe8b7a4470aabff
Date: Fri, 29 May 2026 12:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780057353
