Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147F12D192B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765480374; cv=none; b=eyp75od/0ynn6He0JboX/poQbFLXsqA68Fb1yPXeZLLg0A0JG17+Fc31E3+xPetCyKzy3u94vUhywBhHDiuKVNTEuN/Y3a/+HgNixevSFxQgudzog+213DI+nwW8sXHh0WgFf9FRvF51Lv7a4sdZrGAfxTl71OnzuH8o7tlA8ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765480374; c=relaxed/simple;
	bh=RPti1mxNsec2a4IVnTfkDu9jTKz9fnQlztCrfRs3h1w=;
	h=To:Subject:From:Message-Id:Date; b=i7ZWKfBDBJl883jlpZeqHb4FiDHVIM3+ZF6v8g0795cZpYXtArkzgzVc7UL8Yegtr/9qSHEKiX3QLkgZwINz4Wnipa2QLP6qqnRFPZPfUVzpSIlzaG7iRieIr8ZoG8djohH4x6EI1LsYd/gmB6Al+3cOOH6edeBBUVPWIYxjSFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cTkYSqAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cTkYSqAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DC6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765480373;
	bh=RPti1mxNsec2a4IVnTfkDu9jTKz9fnQlztCrfRs3h1w=;
	h=To:Subject:From:Date:From;
	b=cTkYSqAMihPgez+NdAazaxkE3sV3z8B2ee7yQId9mABh3xp2WufZpVO7ZU72sJ6VM
	 Z6sM8lDP62tO93Yhf3eTGc+T3VNtl1+a8oCZuJ4iuQliSfbSD3KZy2hTTTZp0Cemvi
	 5dGb/px27UOOb8vBpXV4G2bT7TkHT7QtJBfPk8OFfpJnDKC9Odo13yBeeGFaYJ6lij
	 4pCydpRJiswsSUfmkhpA3nuZRJMVuxrG0wLIhxl0Kv8P9hfTqegEAuZXe9lUftOw1Y
	 LHU4rvqmNWzeY598EHXh777vxIb76YhDTaN7tEfwpHNrYzXy7tsN3v+guztua2q6tU
	 uB3E/OL8gHWmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD9D41D7E
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176548037359.4380.9012045232393869917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1323952f4ee7fadd41bd2cd3b5894f7743bf3dc85bb1428120d0474a06172b1
Date: Thu, 11 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765480373
