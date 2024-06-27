Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512EA13FF9
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719523463; cv=none; b=d0YCsKJvxkQpRRwlOV82tW8FbRgTkqbSQ6Ttf6TV28+S4FP5Us62HsGaBWxPU57JgsgHEwkfrbTcdGyZvwehvT155kESFoY8vtorJV1k33aZsNzzRO4kqXWIqhVXM/0ASIbTeNkwrSfg3BnOVOjC/iWptlsW5QXboPf78s+eJus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719523463; c=relaxed/simple;
	bh=uGS0q59npBNUoOniK0wtXmhbMg6QhE1lyuWrHq2BOCo=;
	h=To:Subject:From:Message-Id:Date; b=m2lEcq3Xm9ATWlt+71NX+eG1MBV4JXEKxNKZzvz0teqmdaAAdA6L+8UH8pQqNG3enuMMGKza0lCTFCTiKwZCbJfEaAt5L06jr16ybK7v93rcUvYMn5Nu4fbcWm6UuL34mDxQ8ozwkuzthAIEn6PG22ZpVHOXpVAeOULOvVbv9nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnjqnuyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnjqnuyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6457C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719523462;
	bh=uGS0q59npBNUoOniK0wtXmhbMg6QhE1lyuWrHq2BOCo=;
	h=To:Subject:From:Date:From;
	b=RnjqnuyFx4K+jpaooRnUHnm5iZKWZQtRAPK3dmi40OseES0TocGrkWKbYgklGpm1l
	 7O93i69GvRtgQtnUD34rvCxejOIOJ6w6+fMyl0i7zexAYE4S+1JXF9A4CreQW9Ocyk
	 cjQA8cP/7TdZ0gKp6162zX+RCKa5UNjjZNC7Fj6h6e5GJMQf8Vc4M8uWPE5hdc0DNU
	 7MtKaxfz+OLjqFqGfFHGq9Ugrfw99y9p/oL4JfVGYxouC6yl0HVkxra6UbIk5jUcTb
	 rE401oehS1r10iv5erRKDIlanuwkoi361jk6Wa0n3c8/dwIylxJRDr5Auan+lGXetZ
	 M3FbINUsd5h3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45E3C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171952346279.19160.4389615556544847053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ad4e170a374f1aaaf926f6b3ad43081a4f6d1b05e09bd560581fc116f703c5
Date: Thu, 27 Jun 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719523462
