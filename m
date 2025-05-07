Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3272C7260A
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746607794; cv=none; b=GRI/r59nbqpCUjOguUdGlKEQRHPREi1fxSlIvf9zOeDkXa4ViqQxJnsK0LWBkJTQgNCIya9p4YPrNyUDyFkaNykJipwJJC8R1kT/7xcinkN/g/BoC1+gtPXHkoegjCqcWf2cv4egji/BZQRgvBFiLaphc9373dp6hY5kfKuzL/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746607794; c=relaxed/simple;
	bh=ggDvdBmph4iZrbzbrT/PWN70JkHec3uBMamAVc8YdMQ=;
	h=To:Subject:From:Message-Id:Date; b=iIvH32NYrJzEmY29qpEgg0u4yINALvu+Xekx5TeOW8NgSPdC4IbtxyDerosqW9VfGAxKjTv46suLZwjc8HZGxqO82f9zzIo4WRY/jxyEwRk4W6Ltv6EX/FClel7tdO0OZZOfiBBeK3TpQyvWtghIPE5kdJmPK6A4u1kylrgcA6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1x0+1kd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1x0+1kd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA7BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746607793;
	bh=ggDvdBmph4iZrbzbrT/PWN70JkHec3uBMamAVc8YdMQ=;
	h=To:Subject:From:Date:From;
	b=V1x0+1kdXeInetYWz/WnzD0eaYBD6vW+mZqmLQUBHa9nZy3CWnYNKmf7QtimiBW7p
	 cglt6VoVxcscqB/nM7RvkHJuTzwGYa18FpRbnHwjCGXXwGTUd1ySFsJ5pq7q8VoZlT
	 nTiV7cOGjsW9xq3TM+BxHohS7Cc+wJO7p+s5khLztFqbkhpdufPupsbXitLAwhYVH0
	 IsDjuK775Z/pbqqB/vs+BHJ8Hmp27IXiK7YUIRC/OpaPhu9tp0mbTif9tNEftDJHnv
	 25ltmJ7o1gUdUHEbsVkyddwQuuJUxgijttbrtJeXao0RTFpFCMo9nuQHx2SZbglzzz
	 qtNg/aP21IuZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3CC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660779357.1040.729058609555429934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8b938a35544d00d9985f32258925872af82fa8d25b08ee139e7f179f521a6d
Date: Wed, 07 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746607793
