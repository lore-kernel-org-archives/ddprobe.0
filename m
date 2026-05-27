Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AF728643C
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779856354; cv=none; b=POvQgOofkYRF9w3reny/4uu2Mc+DCPu/2YPZpR9zkBSLYxYMUl9vTGnwzH0StvwwomQFX4rswnrsumHIE/KnyAMD2NQJSHWEmkitZMwOcJhYRzw5W4FNz4F1Hcbm14ZZHW4y3AQFu9nXVxgmG+Y+FPJLjartUvfcQIRToZzXZho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779856354; c=relaxed/simple;
	bh=Ddqcbg/p2SU5zEm1+nmuOcOzer1/BmY/Nd5QD1HeOmA=;
	h=To:Subject:From:Message-Id:Date; b=JYZkNhuofnu0bJTZfK1Q7h6EktikETJxi+FfOQUKJ1nMigEHxPBPajlyUJEU8UsGGXYH5QYfdpEqwmLiGOg8MhkgJpCSvxKvz1eWvCio4CHARwqvT1xkkP4Mq8yuIWGZy0IHQzRsvdNn2EkqWa297L9MOS5LXus9T9tq3D5y9VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p9gwYYtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p9gwYYtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C902AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779856353;
	bh=Ddqcbg/p2SU5zEm1+nmuOcOzer1/BmY/Nd5QD1HeOmA=;
	h=To:Subject:From:Date:From;
	b=p9gwYYtxEH2fwsFEQugZ0wbP2kaAxb0KscnYM+cMEM4t6Ampl6p10D2T4UrqiErfH
	 Z5hXB3OBZX6XYJZA0/0gVRC2xciewrrnO0lAPgWVNlk4Wn//huiokKd+3mS5hNG1cX
	 lkz6erio5krDfZW5XHUJvxflvdRm7Wpblrs9lNH3hyO/kUxlHb4/JGnxd3AnrmCFg5
	 MUWa9GvX/Q2yg0CldklJZMmpzJUdqRPhCHShIqTfVozG/hJfDY6Vy8gLxMLN9/vrWh
	 REdgvldsrXQ6CRiPJW8+bN4Dq0RHhICjnhTME7TxcryqWa1mX48amS6hMwsDqeKP58
	 ZieLuTi2hJdtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B217BCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985635369.13833.7823451445203603386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08160e01cce64affad4314bd0f85a3834000360dd34b0ed6a9588d91be4923bb
Date: Wed, 27 May 2026 04:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779856353
