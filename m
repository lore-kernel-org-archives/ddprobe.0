Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C853228C9D
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756297795; cv=none; b=VOBQ8CQ7fZxqcBoZjg54fhDkZ1ltxVqfDZARw7+fWfdQde/CtnpFUgB+tSYziizBuBKRjzcJMWQlvmsx/dHC4yZepJPAim8Jza0JftvuKtbg5yNxpbqBTc4XdZeoIPUbsnCF0Mvj6yAd4YGmpsA3vY3jeBgVTkjbA8uCg2EY3rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756297795; c=relaxed/simple;
	bh=c2ciZLQmZRt/3e2w0p/KFuMr2eFz3bH4oI+CnGbLi94=;
	h=To:Subject:From:Message-Id:Date; b=o6sUJ7h4erzvberoCgnTSiPBsEfiBCURJK/RVICgM9MVTml+6oP1zGYWnXV2WRnu89T4JFlDZSqXCgRnhqrlP+NIeI5hJbr4bsncQNv5NgddcR4ZFen92yv/2TACHJnej33RjyDsVWU6yatvgZZ4T5GXzqhMdvSK+ryD3CT0K9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJN9pL9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJN9pL9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18FCC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756297793;
	bh=c2ciZLQmZRt/3e2w0p/KFuMr2eFz3bH4oI+CnGbLi94=;
	h=To:Subject:From:Date:From;
	b=IJN9pL9ouj9fnd6ai2xXCUzHVQpJ1AjrbIhlx1KKLiNhNK8zNaJrPj8wVBZA2t6OJ
	 LswtEuCS8eR/40ydrZVaomPe0Hl2zRpMEHcfaTDEz1B1c71BZyQ6V4cFjtXD/qfXZO
	 sJ26pdfcYALXJYoRKKsDU/KGPBTHYM8T0OquppByBNma13P8/ejT1RNyA9XYvsfAno
	 MgQMbbK5c4c5tjV0zIu6kHkWLY/7MNEQmdozLvgS/9RzE7+xnqUrrGLMprlfavEaZz
	 GjOqS58vdiW5tJMWiKkUN4MuG6YhmYG02LndDLo74K1lFz1r/m9c90HJ9EVd77pfHP
	 GBtPM0YiGcZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E683CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175629779357.6465.12613864167893643258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3041935c67ab083550b8d52178b35b7658e6e7c6715d77b831b6a1c2a12dd5c5
Date: Wed, 27 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756297793
