Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F80156674
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714086143; cv=none; b=hRfS89zyPxyG73TlWIjiP9lD9eb8EHl9Nvo3k1oNq+CpeTBVQcW8B9MZjM2Hn5qEXcnrohsnUHRHg1P/F9UoOuDaPmeG6hCdx7yyDdZMSoVUDeGsiuFzYrGJSA4Ou5K6aHxq8qbwQrBrUzAeLQLpAky85UjAdijrrWwjUxHQtWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714086143; c=relaxed/simple;
	bh=kJCr2AQZNFEMTnz47svzIS7D88Bpp+RuZkFdxl9ktsk=;
	h=To:Subject:From:Message-Id:Date; b=uuMVjO1rwkZSf3MDqFPIYJudfohVpxfDIAEkdirXkcVKHGNCfSTwfovZKd4Ku+Rm85HXXVGAqumXRwskrH/TEC78i6ZAAsOuenEfsqliGbSYJSoxbrm4I6XD3koBQHbYN6f5Cy1sr4lQh7u2R+xmdmn4t603gnQO7GCOGsY7LZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlYGTujc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlYGTujc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9967C2BD11
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714086142;
	bh=kJCr2AQZNFEMTnz47svzIS7D88Bpp+RuZkFdxl9ktsk=;
	h=To:Subject:From:Date:From;
	b=JlYGTujc8uwYAf5mI0EC/w3kWbVUqMc9YU8QgGwq45b7DzAAUH8rXD/2cleBZ9fjp
	 0qWEszydlJ5U798iVs6CmkQoWA2E9OvFN5sNJTjbddopQ7O/v60V+jEDYn1Vuo6ZVH
	 KEkr84dEkv5IpCJEVPfO+vbRQkOWu+7g+lcI2fFDyBRl7qfFWo4akef2ev9M1kAF4e
	 dmESvKqQN3JzUIO02M+1LfsLbNermtVG+395sLzqJKuFz0Y3FpbqRfMecQ1MOgOfsq
	 Bud+imbh4wwhVF3rqMHj1bhGylsLeIvClnHBzPQ3TL7BnX6EPwYl/TJOVUQ3FDewPP
	 TFTQUTuX9uB/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AA0C10F15
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171408614280.11999.4882926638688996194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17e3435cd2f2a7245f4b2845792804c04b02b71c3e22d499b630f5af98aaec8
Date: Thu, 25 Apr 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714086142
