Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4211854
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723077354; cv=none; b=YvYi+KmzJMO7Zhu+FTBzgHL1j+BN+C8JgtGnUJxQ6HLp1aGEUw+HzkHCC1AbUKDRlEtUAn5PiCNnNLq+hYO0+Fy7L5Bvw3xtkta/LmhlvKhykDVJVPK0kiTbSZyUJFOTg1HFDk9+qJdVkDy7+h91CJit+RH+9DeQLWWRreF9chY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723077354; c=relaxed/simple;
	bh=CjwSHQ0fDdkodoNTVcpvEyRtsTBAt1OwTCjKIbLJoLc=;
	h=To:Subject:From:Message-Id:Date; b=D/vsk1gAgdC+xUGJ4sK1X9LDvGuEaHJ8xUIh5DdtKS98uqz9E4KuISxx4ENvLI7z3gmK2uhacGajNQiYrq+wCdfv6QiGl0AjnApn/my9jmlb/Otbm3uQwHqBqJrfF8tQD+DSi68cVRP5bbwD7yoyNW3h+7/+ozFD0YR99fUh7gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dko53l9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dko53l9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6B5C4AF0D
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723077353;
	bh=CjwSHQ0fDdkodoNTVcpvEyRtsTBAt1OwTCjKIbLJoLc=;
	h=To:Subject:From:Date:From;
	b=Dko53l9YpbvDSIxouoPP7otXJeX2BUFC45HYZ3ladl+6QnK4mOdgFjEXqDNRWatoD
	 i/Z30nxqlj0oMxHoxwvQs+xdbeoRFT6a8XchgqAjjPZazZCXkuc3YJifLZzopfsgBG
	 Qz46Ur1W5Pck7bP4HLi7vLStnT4FnJENkKhH1aaDR6Zoy6mM88Aqp3z+52D/Vy5B7D
	 MzRKNXwTPi4g4NoHS88RTkm8qGloQc2pvuzgUj8p7SxAcbvGgVUPVDa+FmpUUNb8pi
	 0sXs3EuqWq3RrHR+YO+PrNQYKQ8yNHcp83qO4088qokjINlBHrBzKQNMCtYJxFKSEH
	 XzKBtzXLqnaPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98285C3DA7F
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172307735361.9079.10045916335586909997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c98818dd9f6109b3e01cfdfd8f68d94597277e0aec6fd6f0c7bca829c40313e0
Date: Thu, 08 Aug 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723077353
