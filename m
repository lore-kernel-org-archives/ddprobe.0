Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A60C846A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783828714; cv=none; b=S+MQ+i/a4aASR42nJUcd3o6cYXIDStnLYoX4fDcCEZM8syfrT+ic2B9+i77nA4hFC07XWR5HqOA67j3ruPuxzq6EV6NzcyYWVpoVUHcehtRy13D1XsH/DtQnXlW+3RDc+RhEzmwY9U03kc1Zpw+MpMHOtg1M/9pEaTM98yKogXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783828714; c=relaxed/simple;
	bh=Vl1vS/p2HdLO07LQ2kPCKgtZ37LTfK4dOWp6+tHZ32Q=;
	h=To:Subject:From:Message-Id:Date; b=VlM8QZJ1tdo305QvVEfhW57k6o3y+PD73fAuAUmcOJvupZy3xJ9b58MIbCTnydys3W5gRXqqYgFciAW6MekgacCVZ2NnCu/MMBGuNvVpFpqJBoVfWXQYntoipvBdEwtpmcSkUvLKIR2u0dmRz8Yrz2+AiglAQhhx0BqrmvZPhuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6tAnXLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6tAnXLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61F9C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783828713;
	bh=Vl1vS/p2HdLO07LQ2kPCKgtZ37LTfK4dOWp6+tHZ32Q=;
	h=To:Subject:From:Date:From;
	b=J6tAnXLkPYxh5rDvKKpiwbg2OejHqoel6R0ace0YsiLQeSbvKiUQPyUw3fs+ngJBp
	 YosMptljJEFxq1XZz95Yh6jZhM8XvHgPeizL27RWFKXHcscXPe6a337bnyOBZbAVba
	 GEJbM6bORmgJCJ0fqYe4X47udhKjbTqS8r++zZqS1lFgUiZdX7TZZ5DuGro1STXrpN
	 bvwpvSlUdjIziud9RBqYVBHMo6P5YO/QjQvyj5ONYn8U8s22/6SP8xMrVQp9U+oEpY
	 8cMSswmIAA1IdX4nUCp7bGwUv2pQFOOBC4mFK8+arGq9cYJzA3BJC5hj4RPwRUI5MK
	 218L6KSxI4dWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF0BC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178382871368.2982.10837701974847022299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10c85ac047bb6a821bfe32433534ac4a51054388cbd86c2a3e4d6abbc17e783a
Date: Sun, 12 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783828713
