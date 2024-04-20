Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D63138B
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713574823; cv=none; b=BS6CvhLEdEB728reBFeOFkCkxHgZqphjR9Xr8NqNXa93yiHwYbUzE9oH3rqvrxs4yHN0nI73CSuwYskaOCqrsxtm/mqRR6oO/gEhpon6t9jRDfU1SP2HhJHWjLY4POCgqqmxWYp9NCgMwJbpM4fOtwi6ddaXuxX2wnGxXI6SGFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713574823; c=relaxed/simple;
	bh=cwqjlm8kkjlNtKYeb2YWpVP6nYBkWEQqraht34zf8P0=;
	h=To:Subject:From:Message-Id:Date; b=AKAxN+d0gvx/utVAY/lEp2t4OnN1fvnVpgW/+0ccnuUbzBMtt4/5Qg13laZXTEZnftyxVSb+juNdGdwQu5cI3A2AsB7QQHoTNQg5Hpy2a5uYrRLGrpezqI0oq03u1vky/rqsGwLDBOFAAdbRPbgUwzo6bVedOVTQduZRJ6oycTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYoYdiLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYoYdiLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6934C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713574822;
	bh=cwqjlm8kkjlNtKYeb2YWpVP6nYBkWEQqraht34zf8P0=;
	h=To:Subject:From:Date:From;
	b=oYoYdiLR88JbQhCDGjppatDgKYT1YQBi6cfrarAehVRWkMUOTagkzCcJloqSQiuia
	 eJy2QrzFGouLANDsWdKdMhfstz4ZTTaVyx7MUOMZuWfgedxw5JGEdhF1cteO3wtv0t
	 8Xuvalo6HslrcwTkOrALDTn6Zkhwe4dIXa0FMxQtzXMJOmb1uVkeZAmg49aCsD/Thi
	 pY10EQCJ8EbBmD1XCZ3UHZB9ALFJ+Et5BeJoiELIzmVV5b8DdKHM4NydN2MQTbuuTN
	 FDQ99Yg27IY+cq/07eQMmSzaBWDd4xtKYFxcEal/w+yorFFXZ13NBQuEuYVGb3ndD1
	 WDQBsCbja7iDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C11B5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 01:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357482277.19587.8517675375160705933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a441ceafc64a91e69335189285089d9fbb3f44f7dd7e984167647f7da097065
Date: Sat, 20 Apr 2024 01:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713574822
