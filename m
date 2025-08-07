Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AABC8F6E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754543394; cv=none; b=jS4I4ERAOWqM8EtJqQ/z/w2bS0bUHvrAAKeSBobJRSsT+32zfUzp8IpkOG0U7vtRab61qRwtK0bkLmSPvgjRAEcj7NEI8fXX0IsrIvYy4R5wBjD7XVsYca6Ne6bMFn1/p0XkEkmlOo0ImXf9TUfGMLc7UbJSNzsWM7WMU2MHTU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754543394; c=relaxed/simple;
	bh=Q9ZgoeaptoP/YBBOyoZXnVc9u3sCXWlxzLgGSrP85G0=;
	h=To:Subject:From:Message-Id:Date; b=Or5qTBBqy5iSCYWySwLpa9946NK/BImYLzsa2suf3TJtA8QO5KwPhNWZZnVJgypWkR+RPm3vuyhwOQy4YnHf2EJvqs8s7eeKd5wJ2n3NEiFkSo4iBQd0PthwJNMN4lWAuB59CKoj4nrjT6bYArcGSICr7YB4J5ew1w+YGPFLKy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePVeJxPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePVeJxPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754543393;
	bh=Q9ZgoeaptoP/YBBOyoZXnVc9u3sCXWlxzLgGSrP85G0=;
	h=To:Subject:From:Date:From;
	b=ePVeJxPD2lkTp4NoQEdxGBIDx+Nvb54k+nkPyyRzdk/YbWN9kqrNN+vSev9PSuuYK
	 cf+zsZv4PwpSjaeGK96V0Vgexk2cspEnI0hJQoXsHCI3u63FsaUy9WXCuFG2xp0eMO
	 VJ7IixLq198kV7kedmFXstIGa08GAdN+i1OgUgUqWoJ6OzR7oNPWHf2/1RGtdXtq2b
	 S0OOIvqkDdm52S9HBI8czbZNuRVBiUpzXWwkmygPRj+r1EwAUII5rHf2RKekCWXnFn
	 BWn+89eyK7UvMgFymYJ722Le77sHIKxWmSQV7m8R7s2ugpHXHSi3vQzDeSXLLS+l4M
	 4X5jtNLc9AwmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C84C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454339357.32258.4928083697701413101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813d9afdd524210e62aebe16f732b5eff3f1b7714763652dd3a9352aa2849c1b
Date: Thu, 07 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754543393
