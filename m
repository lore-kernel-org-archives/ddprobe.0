Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4487225DAE7
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750859394; cv=none; b=HHx8PZNpQqkQ4tLdNmHzOHigzmiJ++SEM9kOTwt6OyVfsxfdtud2NXRjxoO0ncnaMh0HpqgGpIiB2ZGnuuHhigYkRlm0Ev1AKOLiPswHDSnaco12/y6bls0HLjt0DEtmmZjH6FGl6PYFOqnH3ukWdBRBHQwWS71V7hfUBJrYDy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750859394; c=relaxed/simple;
	bh=58yzAL33uJalyAdxMKizuQyDPXduPVo03JJQRrC7O+c=;
	h=To:Subject:From:Message-Id:Date; b=TkOjJhzVt2VYvbblIBz8zA3/w+6o2kFv3nKQCfOprcXoICg27qY1opYS2OYHgBAIONs0hG+n6Wh/MOmE3UynvBooZvRVvUWpD+LZu3UQcjG54bR/nu79sNYEN+TFKebfXiEYN7zaV0yKdFp5/lhMdtP0UMRWeTNnM+VHOVQkGlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/g/sCB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/g/sCB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA2C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750859393;
	bh=58yzAL33uJalyAdxMKizuQyDPXduPVo03JJQRrC7O+c=;
	h=To:Subject:From:Date:From;
	b=h/g/sCB0UUDjyiPXabN9ePC5KaqSKoYNyrc+WdpsGnTfxZpEsSWFRM6r7ly9ImYYX
	 ehX7aeVX3tnUdAl0NLJF2TKlK50Xqhlw/b452rdaaMvxwwEh0nL5pdQnbZp3eHGA18
	 /S7GyAjU1aeqDmDsa9kg6jb3Tv4slkb4BVYb8CeNpxH8HXcfnEStw+0GngYMoEUeTJ
	 dbf72qYlqliGFIRR6KHbws97WYolKDsd4eoOXcM2pwCia4gUtTRTvDLy0AiE/jl37h
	 eXi2CVlbpKdvJJY7zuf920vabMGz9pLDkdh5MMrhE6elTVweqqcrxbvU8qH0jB/9XS
	 DOIk+Q9vvmkCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F559C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085939357.26520.10560528138681757143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c81576de685501f96871f536bf07195d08754bc75f694931eeef4a5af69fe3c1
Date: Wed, 25 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750859393
