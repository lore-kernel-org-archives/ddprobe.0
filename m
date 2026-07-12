Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71365846A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783828114; cv=none; b=LDGM4PpE/nWeOxbDwvflLuJb8DNmkLxk3XwZa+HYVexIOS61YmGb/vQ1WPBymDWNXMuOXwoYeCnnIjPWp3JI9+ikfZlU1HXzZ8SZzKqY4vsYsMc/bc9rSHc4Obq2Gz8zJZpKTzcLMPIela6X7i7Y2fSjKZboeZhP8HvcGYhzFW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783828114; c=relaxed/simple;
	bh=I5HmMkfXdQVOEaXv7jMwUMkXbDJGQE0Y/GVEH3bGyZI=;
	h=To:Subject:From:Message-Id:Date; b=K4jPrgTbPveUcRWy9DtT1t+ctkPv9fg0RCRQOfx2vvnSnzgG+U8QY3umqsR2yoxlOefNdR4tXLhXvjfXBMQvf9g+vtqnDUpY44lYh9E2bKowYgiS2erJMGK31PahwYRu3xyjoe2lc3x81Rh0l2wnlthD2O26P+0+9iRk6JYM/VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAtLFoJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAtLFoJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3218C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783828113;
	bh=I5HmMkfXdQVOEaXv7jMwUMkXbDJGQE0Y/GVEH3bGyZI=;
	h=To:Subject:From:Date:From;
	b=hAtLFoJU3rWItl3QFBmdTLgtloxVtsRL7XbifS8pvvwE6JSUTpGC9ul2YjABGqFmZ
	 jO9SC+q+nbVl2vjpTudAs6uleiI0yY/VXsBEyOEtg0m6Oto/Kayvdndg9/5axvSApz
	 aNj5e+y3OLCQJ7bSd2pQj4DGRc695XLZ6GUMYeym1MDsW4EdA8ZkQHvF8tJo3Lp+cq
	 r5mBI95C+EycrGsMV+Hf0YLbcOkmFl/tm4LgU4wzbW6PIqXapR2C9pinxOeSs5TsCy
	 dIjYtw14+gdas9J93ELrVdwFPoOBXb40w1HhNPh2IQczbs7Cf8n1mjbiLQXIR5Dg3S
	 YXKhpnHtGv8fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA9CC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382811368.1763.10990638218114067811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1d42fb0fc308cec9bccec889eafa9e71f689486440b6f0d2c8bb5a7ff7d72c
Date: Sun, 12 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783828113
