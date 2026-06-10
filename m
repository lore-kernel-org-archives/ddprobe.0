Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4674D2DC331
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781070934; cv=none; b=oBAEg6dNphhwI8+ZqkVb4JcXWbPMHWNczC3heh8QgY9q+rnv/qnnW3/uqWOFYxGa+jUPJdNFyqngBXvHwzbmdQ6+I91Qa4rmnH2QEx4Onet96gyMVCZFUMtwsUs6FeBemVveXIfwx9YyscompDZeyGH64oERIEPYriEa7UQou94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781070934; c=relaxed/simple;
	bh=tduzm2V2ASPlBr6VDknEYqPB1K/mXqbhLOXyUid4vFU=;
	h=To:Subject:From:Message-Id:Date; b=IPA9ubM/VY0AwB+BgClCoCC4a4xRhqq2twlwMLAiwQ2BOtGHMFZVFhoJovKla1Jkoc5F6x7HM0V1Lwg50z8zmi6hjp+cKPpGWuHhMkzIZwLhXF5x4Zjd1fr4FqUUW8Yyj0Pj/Os6z54lt+vSzf/NXqjdF4u7kob5mC7K3JrWED0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhD5izf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhD5izf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C4BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781070933;
	bh=tduzm2V2ASPlBr6VDknEYqPB1K/mXqbhLOXyUid4vFU=;
	h=To:Subject:From:Date:From;
	b=DhD5izf0ytxnPB3e5ay2cvPj8ZlIcqUmFlXiADHnuzdqYI0i5s0airGI/ZY+/UMtt
	 ByNhw6H9872qEWU8a9327O3jrFMhnOLXopBdiKj3eBDwtwSjcYzwx7GQZu+lOlVhKc
	 A99TRW7Q7TxmdWUMA5eViduH/JXYecsplzGEOWcP8VZHYq+/5fpTVkgHMLEJZKBvzn
	 5q42OKRm9Pjm5WVHZNlEmy+/ld0ezEA7895itaAcvv9eRDEW5ouYCXZzIAdJDU275K
	 Kj2mOOWMP3/iZnZWULjVV3hhSfnPZ9W408I1GionZD8/ttvRdb4rtikGkwYDvH2b5v
	 c2PEC2pZS2yIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD71CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178107093368.28461.17634198574218674723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d095664d5e863ce4c36b530da0e848fa54d25b6b33e061cf79c643263dec66
Date: Wed, 10 Jun 2026 05:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781070933
