Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546835CDF1
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738669555; cv=none; b=GnT2XnnbbayxVPHIrZAWztLjBfQiaDnINHUSUc2dnFQSU07Y8P9Ji+8i/HUygfg/VUbuLMGXFWcm4ZZOMQIqXShtB7Ry0aXDDy8cge9VsOjxz+ZVz/JkUBxPtsZWE9ULXfYkC1DVDM2wnX6k4vXIPemOykkbBeAwEFxcgbLSJXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738669555; c=relaxed/simple;
	bh=HRrpcNbnWSqwLSn6cplABjeDaMXnWAWPE9llbX3H2ag=;
	h=To:Subject:From:Message-Id:Date; b=pXwwqsofDepgvWuNQwwEN3IhQnUyQrtE1yZo6iIJEpdFXesf9iNd9680D7iw28qUtY+KUMNvPdfg1P/IErVixaAKr4VYi+QtWH3jP43w2lZJesXqggc8UtwKg9KLt87HIDHTKvKlKkYm1AxxaOMoKRpZOMAIBZ1qXMOa35wksX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l5c8REL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l5c8REL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D13C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738669553;
	bh=HRrpcNbnWSqwLSn6cplABjeDaMXnWAWPE9llbX3H2ag=;
	h=To:Subject:From:Date:From;
	b=l5c8REL2KvkBED8kIXz0khuWZfDvlW9ni/eDeBfVnr3gVXQGES8vo47U9phM71qiC
	 HpOe/LvB9HGAYamFHCoPRCu3yMRiqko48b5tajRVqwV1MCoYVV5a9hr75nJuKiC03J
	 iILYUg4VG8lKd87qcGlWwV4cH02vBllKxs6muuTDrOWlKv4ApsqAXSCWlSOlTSZTpa
	 RUp6GkoH5uaUafne+D9cZsG1PkqyifYPmj70vkATCMCbNFCNqDmsZ9/kwwbuT3hp+g
	 qHnwzcnGPXs09U6hcfvfKeoOlMhvqHb1WKshj8qGM+HAgcso6hdT/+fuZddrDgbhH0
	 O0JkJwdlnIPJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4CEC02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173866955363.5478.3417985105953499980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9706c4c790fe9c252e60cf04102d81a65f9b5cee0627757e1926928c854766af
Date: Tue, 04 Feb 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738669553
