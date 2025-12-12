Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A3B30FC39
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765528374; cv=none; b=o/bC5rnb1FXDAz96K5dOWlSH9y6tgtxErQuhf2WdvM9kglXwLEi2zbZyFZ+rd4J2Po/KKWTKBnQ6xIDqvlCxZ/VowNmCV54d1nAkb7pxKaK6D/fPaM/q8GFwKGavxIpAnlb3P56i1KueX6LMfg8xT8wdtVuLNy3OUCa3fFd7G50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765528374; c=relaxed/simple;
	bh=7wZUoNOKp4NORh1QKWkhhbtpA4qffS9EmWbCRSismrQ=;
	h=To:Subject:From:Message-Id:Date; b=sDOsrRj7lgjJSJ2sVEC+E1LJvUUoETGOy0zBwvAbfBBRnZxXX6sYipWcnVmP3G9bKuChPg8eY4uc4dSuZpXTmLaFprYpHJWXzHIoND3y5OvQQFKLiQzHBHly2UjGMIcpbF0tIEvM+3Fl0fAEu8dPeRY3fqBr0f5Mhl5Vp1pQJjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmU3Oy0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmU3Oy0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D95EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765528373;
	bh=7wZUoNOKp4NORh1QKWkhhbtpA4qffS9EmWbCRSismrQ=;
	h=To:Subject:From:Date:From;
	b=lmU3Oy0mMpUN7XMMPpkgSRbjI6Dlm84vKdCJYuaW7fb9iU8xGRiyCohILV88uvnJ5
	 Hw14qWR2d4oyOnQmebtRMXBYRCOVBaRfv+PTFpeGBqyUlW2t7e3lhwY5Jqn0wCsMmi
	 u2BMSaz8p8CeWFMkM7wtFd7erq/EEiQmu95GbpYiROIztXIzg5qyX1459dFAeSJ/Hp
	 BmIF2nj8u4V2guYyvHI4iPid56Qcx1mlwyZVdnmN8Zo7I+KAmWg2YSGzfVeHUpYhXI
	 rYonfGI3id1FxDVy2/BhG332cd1A1gkoSps2vi6jVw299yvPB3Fs/4LixOdBqQ1MsB
	 Gyw/mQ3Ubkjtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90318D44149
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552837358.14290.9737805882736583367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36544977ca0efc5af40603b6e76e9ade67893e52f604b22714aa2cc31a4351aa
Date: Fri, 12 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765528373
