Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFB8239E92
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751491194; cv=none; b=e0dS96bYFWx37JQ3Vu5hF0+OzdpELFSOsXOFOrTFHYFn+8w7vbbX66g6zicDUt90RtPct6fKsSBlOFUdjcRe+1u1RqE9CE0DlQWKZUYWpm5GU1iUy9AdIoCv46OpQcY3lNssoPWDebPbG4AB73MbdBacOIW62NQR/LAQ1mF4pBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751491194; c=relaxed/simple;
	bh=/N8D9DosZd1zr3WatZ0KMLTfhO5sJWTw44ar2xYduyA=;
	h=To:Subject:From:Message-Id:Date; b=VsL1A0tXVOyYDRnyvXvu6ww00/HG07hgx3JV/wLm0bh3ARBMLCxz5tN9afdnPkiw0WdYG4RVY7fWQxfbh6E8/Q1jlil9CRnexeAxexXRnb5JYyC3QwPKXFs/hJ8rU5HSgP/ZK3Zi1GNPFa6EQSsNakE8O2AhjXdO4k0lc0vKJkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aWAByrb3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aWAByrb3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CECC4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751491193;
	bh=/N8D9DosZd1zr3WatZ0KMLTfhO5sJWTw44ar2xYduyA=;
	h=To:Subject:From:Date:From;
	b=aWAByrb36LMeN0bA2bYvLBmAMonsinDhYmfhmGUkAxg60wRYS6qbHhXD444YWntiP
	 Q2d6FCee1BX+Fq/4rHFP7Qhxfw1WGwyLfiDdpowUvfvdG5IluFe6IVtdNW11fWdA6R
	 4xoP2DPSwiDMTucJHJTnKlX9i3ul1XBYZEMmuBGa+JHjPo36Ym7+/a6PRQgWxCnPSI
	 usaMwlXVBbhZILALtjiHg3nVr4iccxgtd0pgSUkgI9WJRS6uOIpFjyKN9p7I2ooDEx
	 /F4zT/kpLGP6UYIA3YPpWfL25YWRAeCVw6Y177csz9YFVRSCtmy7qwQrDxplCN23K8
	 5B63dpBuLcfFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9440FC83F03
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175149119357.769.7513148052487529927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc932529f258ea826bedf9b64560b51eaf864db804276cccd2831cfcc51e775
Date: Wed, 02 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751491193
