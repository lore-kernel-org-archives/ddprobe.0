Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D3825C80E
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766353434; cv=none; b=fDJPQIJMUp+sGs2aFjYSYjpJfnvKP+Miq4R0qRuOK1epaUHoPFrSR3Ow4/zoy/XwSm/HdEeV/g221S7Izj9rnJLp17YNmiT8DlC+Bbc/3AqdnQHhIfbNI7XBn9cgK7WjXUpOAFkfMkjH/gVcvEF5Tky7YhEFhB0Nn6Rb+O63zE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766353434; c=relaxed/simple;
	bh=o2IWtv5g0lOAgzKy7DC5KeBBrrZshec8HcOUAqZ4QjI=;
	h=To:Subject:From:Message-Id:Date; b=I2EyUnNyPTvZm73DhW25fS4RIuuPoFTwMRmJPxNkeVVIsKMDG5LMMdvyUKuN2cZ0hWWovScAmUKl+DtR4skb579u4BWt213ppS/pCw1l5V01WBT2jERhg1P6KfjChgqSGgQ+J72ub7yzHdAlyi7AiZRPPw3cL6fszedGHyJxEgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpqFEJG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpqFEJG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8082C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766353433;
	bh=o2IWtv5g0lOAgzKy7DC5KeBBrrZshec8HcOUAqZ4QjI=;
	h=To:Subject:From:Date:From;
	b=YpqFEJG39eQXbFtmPVI0crD7BB9J/IQidiWMvWuhstzp8cU2gWRZDNFEcu5HyOyao
	 uIxOd2I0RjLC+L1zpzniHQNSMEjV+dSHuNvcpuCsZprS6TWY2HDw7+EjtpyH7K46HE
	 t2/ezq5YP0h1uP/rjUEm8x1EEJihn28yuN4gjas819wuaNqynII5Cxxu+PJ+9G1jd8
	 ahIie9jUNLkuHEvvF2sJSkc32xN4sh4upRP3p2DAaLP0TeK+JknDQ/cgWpum47DY7g
	 HLbdBvKDoCx4JERlZNK0QPn2AFMpNXsMk0ezWWR9ycYvIn/bsdvPjHcNaCVKwT8kPI
	 F6taBUMnS9C+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F1FE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635343358.8828.4046296685486248552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8fab00559ae5edabeed385d79b4f007a51533ba57861a2b83ca92cc565cd33d
Date: Sun, 21 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766353433
