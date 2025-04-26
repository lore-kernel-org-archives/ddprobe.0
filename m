Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314E857C9F
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745705994; cv=none; b=HZo7/zzIHDmAh/ggAGjwD9JHrzVkTjzZzoWw8RoFuQGo/NiTbNk2zBgeMLmyLGgdQn1REYuPu5Z2J6qUXyYfLemoXjHa+tt4x6xPqwzxMRtnFtV8IQWpu38rt466hJEm3aAyIUIaAiVzzdMXP+lyVQMI+HAbtCIvuBQUEyKPTPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745705994; c=relaxed/simple;
	bh=rNA2Wc62ghJxlCEJjR1rIghtiPZAED9YtvvwjTNu1Bk=;
	h=To:Subject:From:Message-Id:Date; b=WWyXAij7BBJxSHDTr6m8kcB7XqJcMAtaBRSQbzK+/eZlKXORcCU4Y4hhYa3WoHERG9G7ymwXN3sAh+CTHFEYeOn0CokKyl+25ru18yYBU+1Hnk58HABMDiY6QthzyIC2PblRblyye4/vznTKekmlmIVaU7PxWvA2SlYjXyTd/AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiE8kR+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiE8kR+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CFBC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745705993;
	bh=rNA2Wc62ghJxlCEJjR1rIghtiPZAED9YtvvwjTNu1Bk=;
	h=To:Subject:From:Date:From;
	b=JiE8kR+FJknotxSOLjbY/Zz550dhIkWVYbHHioyupbsAwqDwwW0LLGJmepBo/VbI8
	 dq2vbpxqymfS1DMBdKH8W9l25ooTuaH3J+NxJ21cIvYW45dqOi65BEWNztLvi7r0Vq
	 /JRXV5sGyQ7XkiNd5ljbK4ek4tuuJxkPdGiPuXI+EH1E8t31cKbdZukYAcwYWfC6y9
	 igN27GsCUFneodcKL+iNs4f9MjblFAT+rupn8ZuYZzR0totKXfAdo9JPDmrwqFSL7H
	 LQ3caNSWzLv3LjEOMHzagN8DC9qqf1qfmobQFMut/5KRov7Dx5zmujyLiAGzDEq58V
	 7fZbGYZQ1X/BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91370C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570599357.13251.14491079910330810091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 133edd01ca4c834847b7590e9ca83e84654cd80df7a6ca8890add696ea9c6824
Date: Sat, 26 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745705993
