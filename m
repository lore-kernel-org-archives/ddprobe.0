Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7F2235061
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762528794; cv=none; b=gVhJxx3WQUTdrivOeqWBLAlEIDiFzuDkh9B/GFcKNcwZnGZr17ntevNnQA/iWwvoqh4OYwCHZIf2a03jtL8rINocfDTwuN42RFu7a49wQQboKj5R5dHhJm4D99OaJFZLKvIf8vj2RgtPgvBsZYJIBebDBL9X8oo9fv1uIMM0q4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762528794; c=relaxed/simple;
	bh=1K+PDT5syKxMgrc69HF8iTSvD+B/IlOzfYoNqfV10Xk=;
	h=To:Subject:From:Message-Id:Date; b=u0hqKeaVdJX5gAa+XyCM8QFlt41hht8Ohn55IvBuDzXSXPfVDcXT3qSvxhfJeLlTfAO4P+s9qOQ6xldioO0efGLhjxjU3DQ0ek4eQX3DHJvwl4h2Ht9sZiGSBYJJGTOhY7mOa1lDYO5BtNxRjTV7qENiY1+0jCTw4lS/mwptDyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrNqK6x2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrNqK6x2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB15C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762528793;
	bh=1K+PDT5syKxMgrc69HF8iTSvD+B/IlOzfYoNqfV10Xk=;
	h=To:Subject:From:Date:From;
	b=GrNqK6x2ZeHqmJMHeV9e/KediHTHfmMYWgBQllfNfgpokyzL6Qq+rzgauP6ye1s56
	 jQhWIq6eDfLPhR+NWx51SV2kKtiTiL2g2/bjQuH7wxMWgKrXD19qWzIw4SGI5JQbsN
	 BEoSvz9lG6xftZPKUy+Jk+InSgaAod0Qb8sI2oORnFOLjvVy0ZFm+IyR5Hk8KWhZR8
	 DcdwTZdNMTByEAP/gts/SH7yOyj0I6oMFuIUHoFnPUVytVVnetDZW72Obcwh2AlGQ2
	 TPi35zrpK9FYUQGFElEP9+3oxFL1OPXLUrCKV2b6bFAlzmRz+dRe34ToPX3ejYGznj
	 BXmwxRSuTTgJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E6CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252879357.28728.12114656881928390705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4bf1769ce08929252a1d8ad88806d8a4a5271ed72744d58880fbd9cdef22836
Date: Fri, 07 Nov 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762528793
