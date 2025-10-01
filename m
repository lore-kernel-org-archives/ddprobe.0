Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C9B2F0C50
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759327194; cv=none; b=O/dE0842f4hElXCui5Dh16Q5S4O30EIPZ/ZIwmnvOqkZhQHPPpYxsXs1+YtmZQwmKjqFqpXrAC3VEQmsoLGIHj54acJrG6TCCG802LrF8hCnwRvGfsoQMZd8Jv1HrE9BBGxsM1QBseCdoqMJ/sMb8ej1Mq14gp6CMkgB/HysZyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759327194; c=relaxed/simple;
	bh=jZK8BOwTwncZaw0+Rr5738OUmTW/K3NW94WJdT6ZHKo=;
	h=To:Subject:From:Message-Id:Date; b=dLE4mQ8BbLOgnMhLTDyAJIDgsxab75dOZK2BQsmn4hg0xGKc1uZm4r+Kuyu1Uj4kjB7sflkygSoKTJCy14ZZPjsjf+6WdbsUlXw9BpDhrg/WHE1uFbQi2EPqCDR3GXRLjq3q037WIs+snn+Pjxlas0NM/k27YzpcE6QGmYdWD2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4mCfa9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4mCfa9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7014C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759327193;
	bh=jZK8BOwTwncZaw0+Rr5738OUmTW/K3NW94WJdT6ZHKo=;
	h=To:Subject:From:Date:From;
	b=B4mCfa9liBvY+HEkp34Q6+ta1qOUGs0KFv44aysqoWukCv+ye8hKAOGMoimBISkuO
	 Z1BjX4Z8RkKyqtV+4KVMg79bF0DFADA4gNfy78VMyNKA2pnDERwO3L7uYRJgIzbt3c
	 jXDdn9XxUs6Ne95648K/DJN0Jun6rWjIVqaICjmg5MlMUxEvuZOS0kcPYuCeH/Z3hm
	 tW4wv9BupWLj32VxCD5zxJ+dg/WUW4cY2Ta42UMHZms2jCc/31z3KR4OmgOIqhXW7g
	 fLChNdxpWeWpic9tyy844mWpMX0It/G8TNvGSCV1GEkdkiJWQWbywX2VZEQIzW/1gK
	 mrhLZo/tfywiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9426CCCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932719359.17504.17942094246755092780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bfed45d00e5b46a7e20976c53dc3b04b32bb2628234e3e7f52676e5875955ec
Date: Wed, 01 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759327193
