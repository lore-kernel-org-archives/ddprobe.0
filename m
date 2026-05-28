Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C342C11F9
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779945754; cv=none; b=lObBxmFc5ccpF76GpFi6j3LwSeimtoraR8xGhvBtDIf7LHi0jemb8PiVSyul7n7ETT21Ov6+UJ6qi4B5oFaKUq9PiFQ4CrRMPdHwjxHKYLTe+e+Cltwc5oWVXR7mHb/jC+LGL83Ag8XwsmCA3TocEsOeNU4x06OROGQXemDygps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779945754; c=relaxed/simple;
	bh=R3uCteVs8HsD/CQDsdusdQzl3yL5fUwgf0jKuuFgXrE=;
	h=To:Subject:From:Message-Id:Date; b=JMlRRy2Upuy2y85hdRbYjL85nNTgpUalEkM4l/qg4AJrRHGOzt0nQHUbv4ugLhLja9dgsLkTryW7u47j6XluijYeSilX8q0ehHduEfi4yRv3M9Y2KU7UwhGhjtrFGlDwW+L921tijd5ATpguvzugKP0YJIUV2CxIbc043wHrWdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMbH9uVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMbH9uVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0851C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779945753;
	bh=R3uCteVs8HsD/CQDsdusdQzl3yL5fUwgf0jKuuFgXrE=;
	h=To:Subject:From:Date:From;
	b=IMbH9uVlswWoq4E2tHWecg9COsKmas5o9p6AvImXl7dDdDXXv+TZKckX2YLFKxp88
	 31xAWxdHcXXwmMhUiaOby/rO7VpTCLoEj9Jnv+5dk51Re6ViQcXaJWULclpdRHzOpi
	 Vt+UqrBlko50GCrDZHE8PwKQUrEZcfb+U1DZN6TZUYGxNoco5ZsuJZKAcgsE5Wl9mj
	 TYWOI+pp3jA4XSeBUpJM9epyUDGxGcyDJTvt75x4NJWGBZUg7atkGamp1iMFzCoebU
	 /xfPCfVC50jRIqhATLEBb0acuWRukxm6AedrHbPRSJ4fRltruI+bzT5tbbGMpC70lT
	 kak6jMQRRb4YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACC1CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 05:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994575368.26698.8481076312992184367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd2ee760c3a3c6e9acf9d23d359979b17ae2aef24fbc9fe4cb97a24bdd2644a
Date: Thu, 28 May 2026 05:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779945753
