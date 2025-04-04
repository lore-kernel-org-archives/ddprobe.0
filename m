Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5076120ADC9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743785994; cv=none; b=pLxk/9qC88feXveNJDsc8bOUYseGZZtjhPDV/lQwGBwV2P+YlgzR5woT2tF6Cj4vZJDytPuza7A/If/+QhwNK/8/uERKqRrXy+RUiOnvQFIO4lzF1p9I2Vd9pC56rvaTPlGrsEl1JMvyMMK+YysDKUEA10YZv42DcEZQORXS4JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743785994; c=relaxed/simple;
	bh=Bx6KCYWnrHiqzUKWzBqON/Tiho9CCMXRzV8ADsGsGYw=;
	h=To:Subject:From:Message-Id:Date; b=ZKcEvDg9tEyJsoaS9fIs1+ddscMmYcuv6HpkmfzIyoPULUyOeePLPb5RpMd0UAtgJcBCgBJ7u+OqMi4plDYlghqXl1tFgMmtJTB5SQkF6/RRF4Ga6/8XFZf22/vMXnbgmxkAS3UWnxjUav8ebzH1IEg8YaPLnf/Zz598zJvkBB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKmhmo00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKmhmo00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5020C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743785993;
	bh=Bx6KCYWnrHiqzUKWzBqON/Tiho9CCMXRzV8ADsGsGYw=;
	h=To:Subject:From:Date:From;
	b=pKmhmo000tT/LKak4neHjy7uCLqqKAU7z6gcg3NxuHuLlI7Lqezyzvd7FstRx/xDS
	 bHhI/g4iwQADo4x/YkcOiZOhS8bfgZ9S7724yfsSiEwpnWUKh9zTKk1LyFom71fceq
	 IzdK0/g+Jc/nX6cw0WGZwF8e5iKy7lQPBixHO3c4PIaejRixsC9jqsGNP0G3bGnevc
	 gnpf3U6a+I5UOHjmMPDKdMM4Y7l3aFOjeMDn2W9rW7YFIuFKje414p+rHxml1cF+8F
	 +9qbP1fN2lZrxQqGcxZyoO1hucerNew9N99i93eCYwVXZUYwhNh4k16mxAHYoKvRdR
	 Q7SzVgEGBh9SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFC8C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174378599362.22160.15041709472903281265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 669cea70f38298be2d7f1d5e81ca92550a3beb95ecf650cc93bd009c68b620d7
Date: Fri, 04 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743785993
