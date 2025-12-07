Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269151D5147
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765135974; cv=none; b=nLCWYrKmpRYf4qgcMneWAlzah/8F0LpouHgiQbgAQwVK+lyiSFmaE2kXjI4/j5gGFPyHUN0brK27+sQJENLPfu7927WFK0ZJvxE0bZAaG3SoCoFnPaQH2V/IFC7hSQOztswva2cI8Dq3mG11v8X7cdBYjcvRbz3UQzLANKoiD0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765135974; c=relaxed/simple;
	bh=jntuvOWEizbFjVjhz86hpjrrbWPCa3g38BlYJGm4Si4=;
	h=To:Subject:From:Message-Id:Date; b=Y71YHvkxV2elS651kF6eZzyu8FFZQfYxn5G0lVF+85xKhVSTCYSoSbj2AjYdOT/YdeI0EHv9CgJlO9szr5cwog8lRw8N9O6YkrYluAM9wo3mh1lCiHrPaGqUvhA82C2i6aKT7UELGe4AwLMBk69zpfBZr4nA2jrYZvHhIIslfHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeUFlXAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeUFlXAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A819AC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765135973;
	bh=jntuvOWEizbFjVjhz86hpjrrbWPCa3g38BlYJGm4Si4=;
	h=To:Subject:From:Date:From;
	b=IeUFlXAmmkhp7fABkF6/Y7O2ZA0A2EoXVHTjnaFUumz9P9eetN5R+kOS267M01W5f
	 6Pr9Pw6RxoNWw1+9RRaVq4RHhLmT0WE/aHApILqR1au0n0s+i8ce4PKly/WuQgPrgz
	 NxIrxjT9cw2OGKUNdfQFeGTH/Tp1gQsCi3FUFX7/kcNO7IdIBX20/AODqEmt2tXGMU
	 nf1iRQevvC4n1o2dOPhoZHuT1gVJ/0WLXkQBiFqBsEexZDY6bVYag8+T0bKiDfmWzD
	 P5tPW3329neaF+rxYGcbSiz+mlbPRg8OpbkmTCtVeKEn8EpwVUX5eKkD0Um0ULa7Wx
	 4bTePuxQijtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C40D3ABEF
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176513597358.7700.1350558110862832535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428d01bbac7cc26016e72d008822849c091ac7395b05d7cdb6baae3e289cd760
Date: Sun, 07 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765135973
