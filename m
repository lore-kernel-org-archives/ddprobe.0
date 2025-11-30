Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208FA36D51B
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764526974; cv=none; b=asCu5ulgA5OSZbe+/00WOgteIsQ40zf2skj+ONdnlpVbVQaqKHvDzGu5VvOJkdsaofzCRjrgAQ1KQDu484PQv+jmlrJOFgwLsDXBhSs8yu5oSbpQNddp+63AhE4Ykt0bthmWYE5TevU+qQhlL9TMbB780nO5Id89oYJEd1BDj4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764526974; c=relaxed/simple;
	bh=uCNw21I7PDKa9fKQ1Xsj5q3psXlTN9z3BBKVs8gVqg8=;
	h=To:Subject:From:Message-Id:Date; b=CF+af0UvqdY0hUXehHxFgi0nsSfskKyiHeGPTdciCbrFkgoSY4UwPNjPwlGACxN70tsl8zJWOD3AKCiTGOxAwPKMMy2Hh9lJx35Ij+dHhTT34mMF9gXAqOnTVoyxiuxj+pranwFgr3/v1HgYPunsJiAp9+lCPIcoylUjek6DTuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lft1dyQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lft1dyQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB142C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764526973;
	bh=uCNw21I7PDKa9fKQ1Xsj5q3psXlTN9z3BBKVs8gVqg8=;
	h=To:Subject:From:Date:From;
	b=Lft1dyQIzz5fU2V71tOcYSMd57Mk3hZie6duB7uAEdaOHQlVrcMYMXvwAa0l2sdy7
	 f/oueVc5OBUadU1NSz8kqa51JlsXXLMDTHsuDNt96A2e1LpDaL4JC1ymoP4WnoTMYF
	 fDd3CXjAf3ToAG0cOL4RNMaZYrhn69Ng25VH6bSJ8DCOhqoL98Qis6claXrJ216yd9
	 irJUZT5yQT+H+ryifhozS/CWFaeBIgsgTkuooAfccGMrR4svUUVRF5T5RHa3xco9Bt
	 smaxrj1vnza43/psU94n8oyjU0l71sjmMl0rLyQkQ9HvRzSRwAA+cMrqk8REfxR/s/
	 QwzyiU0/Pyl/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D86CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452697358.21360.12778565298491425839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ee1ebbf61c827b7100add0377365cf05ecdd4ff8c975ba464dc98e02719fd2
Date: Sun, 30 Nov 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764526973
