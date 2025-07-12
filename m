Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E26374F1
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752336594; cv=none; b=vBT0mQmktPbwDEPhsvjcu+g8+PoJy33oQ7erfitwyhiDb+6iKojoFIoyaWXo7JXpF2GK0Z5ppe4gAK5luLvq2uOlHJT86S3jD+c6T2NWltKcKT8aMh+OnRdnem112eKzjT1x9Lh7ybLxJUD65bvfsyBKfWexBbPqQO7GeXNMVPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752336594; c=relaxed/simple;
	bh=9AU0g5dX3pBUq/pkv3fg9EjdWN00Yn2afqpo0AH3yLw=;
	h=To:Subject:From:Message-Id:Date; b=ct8ED/TV4IyRJfs+krZH3TZhPJ1ReuDnVYnel7tLbHkOLtuodeksEr3IV9OxwQJlDjBU6voVEZN/EIsA9EZ1gVC0CpqQsoB2PTjFAwVWbVXEWffuhODLNv//egUUh7D6afdz4vaduu0fQ19u17NqkY9WU63Yn837xbggDedTsUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJT02opr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJT02opr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD49C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752336593;
	bh=9AU0g5dX3pBUq/pkv3fg9EjdWN00Yn2afqpo0AH3yLw=;
	h=To:Subject:From:Date:From;
	b=CJT02opraENmku/fK3mj5THTvMMCjCrUpj2HWm4lBA7WdkAT7irU1kKeszEVZboGx
	 8bpuP8g0uo2Xf60xc7I0ibvqmK7/ReSxU6v4y4pga74XJdFf3RQkVvCj2Z9ofx9O9D
	 2DvG0vU/nBW7p9u7HQFz6uHbC40FnVsOiLG55PvouLgzjWPOvyiXqrw391/T5vS0t+
	 L74DCu4cGbQxCvVW/TPROtQtVDnOX8rH3HCmDhl/iIXqsMHzSjbuOTakt2OXcSRHla
	 7MvcmGk99Ly7hX/dFzkzYYGj7R4vuzTgEBtNO6OZpJfynGg+ivGVHxYxTMUgcT4oi4
	 0V0oXR6bRfiGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DDC83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175233659357.21085.2997433608838218088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb7f2f2effacfe099456f22a7007573f135005c2d5c8c7b5a6a35afd96f67fa
Date: Sat, 12 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752336593
