Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A6C2CA9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735793154; cv=none; b=MnnZHWde81V/4b3JlIDET7jEK9OKaNnLvfLJHZXdn/TU7CIaRXv6zezkeFq6rmmlEGS1yctEUkcPsYhk2EcAoBipuBYmL9GkL7zbYEV9LFdG3Y7W8raTyNqdpmx8Sf+6L9BclIinDy1jUFcjRuMoUOToAO3q/8UIJjbdfoLgY70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735793154; c=relaxed/simple;
	bh=dMcxXCejRjiZKTLS1QzIF5WHzYsGgp2BXnMBbHJRvk8=;
	h=To:Subject:From:Message-Id:Date; b=lCtwVRfYbqQYjx/FeSxtXAKKVwkXiXdT7qC3Jl7MOrCaAFXifG9aUjEm+tGLGAsvvPRbmVkIOsWG0NetJezZzua5zsB5uB0QX1KGwbGifxxvYh1L192ygETCUOLDcyslGkLJrNILVGxXXSa795z/xwI3npxOOkybFEjO4bzzbWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIY5lOfw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIY5lOfw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D6FC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735793153;
	bh=dMcxXCejRjiZKTLS1QzIF5WHzYsGgp2BXnMBbHJRvk8=;
	h=To:Subject:From:Date:From;
	b=jIY5lOfwR3iQPllcVEKrkiEYxNZSMfkmXHnD40rrg5gJpUbDOP8SS/MPdpOByUGHE
	 Y8hVDV7zatmQiM1owr7hJo2fhCI0eB7g6W3NVNHSQtbPukCPheia0p22MlDLNMW2o/
	 J/mSrV/pVp9BYVlw8M5fM1GngTqs5QjiQ6Iixi4kjZKn0d1mmXbNkAL/za47jN1zqM
	 V9XOMVPP603LWNDxeVY38g4l4N9wnGuL54IX6hFNnp8rHUz7l8Z64uoiAAbSSGug6S
	 dsHqTCpaWUpCAvSwFXtr7L41EJLX65obNsudHwzZKwlRwqrF4odxHcGkFApZMlrvSf
	 qa0PUQQLohb0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9859DE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579315361.10851.17562577424683538468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb2a6760c21e3b4583cbfdec52dda86f6a496478ddc16dfbe02bfc8995c2657
Date: Thu, 02 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735793153
