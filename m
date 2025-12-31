Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2861A9F91
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767194634; cv=none; b=oNCCi3MwakvbjGQlKfSmZ1RzXZg9JvXmYyS/UYZdmaXNLxnYt7OFRU/hJGUyjHjS5lklfx5DAff4Ttl0DKZshPes0nNst+ZtLXQQ58DDpfpBg0f2ZJn/nJjhsIEcX8XBle9YeEIXr3M802qlDjPrz7MalxN6dzuBvI2yQV12yCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767194634; c=relaxed/simple;
	bh=mtak1gpIMWJtKtM65Riu6jP/jsZ0LamDvB0A44g8gvU=;
	h=To:Subject:From:Message-Id:Date; b=XsImCiLqAh/7PFolrflVrB7JRagkUeSN5tAM2AYWi96Hr3wvZeuEhjnoq3s5iAnVg2lGMNrLmK+y2bvG+pDBQLuWYjUTaNWcYPS5znHKWrBSHvAC07SN3kbS2KDlesdiDURDrkSsWhbOwuQSz9esuRuKR51d5CNHJbXPQlMMwvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rP13QSKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rP13QSKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0106C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767194633;
	bh=mtak1gpIMWJtKtM65Riu6jP/jsZ0LamDvB0A44g8gvU=;
	h=To:Subject:From:Date:From;
	b=rP13QSKb5riju6XIyM/QkzYjLcmP5B8rs+poxrwc8y8GmOZUqIUZLcJJCcUr1UrjB
	 66NLzWATOWWvWdZHMZLnUplv+cDnlY05fG8ISGA+UH0FaiOFsBGRPDYxo5Al1xUVVz
	 ljCKQgXEP3pk1TqbMBZGGd7lzdhpTnAls7lsHUitHhZZPYkfpuXllY/dLAKM6ZOamf
	 H4eLGbdr4Veg6lHIxY4ovrNlgch7TdlFKUKnGgfMt+MKE/Vpduieo7aE11AwZAG1k2
	 QxLhFOkawV7kyl49UZ2An9F7pKa+1pV4YuAxvGLRIcLdi582QwDOKHTFqBs2161b2O
	 JuQpfBpH1DC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F6EE57F0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176719463358.29240.1894445270946666869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926b0749cfbd602228f71b58a3c7cd7c6632df93ec27cf9d6c1d539711ddb4e1
Date: Wed, 31 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767194633
