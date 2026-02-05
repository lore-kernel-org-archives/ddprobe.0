Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E471A2C0B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770275634; cv=none; b=V4JxZAgXYoQyJ0l04tr9z+HfWWQ7jEjkHFVpALzKcqqg/7ugF3gM+Nyx/yjQ9uue2MJByfsO9bMhCCr9nWjHo98u/b7RBswTQcmGg1zxBQlpMYTnpvctSZqFk0nIHP3AP85GcOgmB6CM/s2QoAkmHWQQS4uO880KnhD968fWD9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770275634; c=relaxed/simple;
	bh=fjiIIiYMaAvnEHLAhhvgSh+QEVYrCdfKihdSjyIiIEc=;
	h=To:Subject:From:Message-Id:Date; b=YVPC9jcFLB4OJYHE93zNx5tIrbsSfHLmFB3pfx7ZSd51djRGNK/HFSioBwHTxP9ABPqKB6kUR5xxeFvCNiQ9xR6XtcvCU2GwAztSny+b1k4nNMw7a8IHzqqFuc4Ai2EBV2zxYam0dT2uJk/5h2RrsPBZbC6S08Rz4u8tFhCy+y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErxPdTU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErxPdTU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB095C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770275633;
	bh=fjiIIiYMaAvnEHLAhhvgSh+QEVYrCdfKihdSjyIiIEc=;
	h=To:Subject:From:Date:From;
	b=ErxPdTU+vcopXbXY3IfqPEPuD94enfSj8QIYCyQ+8DeihpuDJgPjpi+0v7UlTR0M+
	 PJam+9ChOs16EMIqkc4lPDvolaRLaE0pq6dVf3aFYKOFJv5oGRMubzSPwI8B2pGsd3
	 g/4X6EcOiZgt+Ue9HcNJ+e57jzRn+pA4VPFEI2ORT5Mx4G37ls+GETD1W+HOPpmuHr
	 WMHH3blE9MgWnCgM2pgSyL67l1s9CP1yNdtNkPXvCGvMw8Kxj5pxrRNcrfNtnXogHX
	 4inMsD4WyJttRWBLq9Q0b846qOEvFbjY4DHhDumtvboKDYurygqBI9zZeu290Y7ZlD
	 EB1qFFJ+POa7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B64E91286
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177027563364.17789.6892791164822861359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4c245e365f5af5f2ab532673189209edbd66699905a302a71c5d06f5583d10
Date: Thu, 05 Feb 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770275633
