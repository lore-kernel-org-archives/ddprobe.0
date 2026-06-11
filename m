Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D409355057
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781164594; cv=none; b=NTePW4SCCR5RPFwQBzTSut0XTjZiuXRY17goaCnct1l+P38SYZRjO3pLP+LiyC6fQD/xuVoLGdMMoGl8Rxsogl4CYj/13238axLu3O12tCNuL2mDPu4obxCyZHn1uOzF7qkzQpaMZcNzTJPIhLsaLsTJqJBTzgxNABaC5HPFYNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781164594; c=relaxed/simple;
	bh=aEF5I157/UnIJNAdCQOyCFOVoBiRF9x25+aw6YD47b0=;
	h=To:Subject:From:Message-Id:Date; b=WS7/fIa2Br8o8Cp0kJd0xdHKOPXV4LRyhg0RKKDvIWy3xcpaUB7c5swPcRXqWmHOp3JUufMyLE64/8tAthBZnP+UGiICAj9v+ukztVQ9voW2Zooa1oI9aE5VF9XjuxQaMRAcxfdjYJp60UxpjXORSHqnzJPZ1rApSpnkU9/fBk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsG6Dgzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsG6Dgzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4A78C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781164593;
	bh=aEF5I157/UnIJNAdCQOyCFOVoBiRF9x25+aw6YD47b0=;
	h=To:Subject:From:Date:From;
	b=CsG6DgzvyqJs2d79XgAF+/9Z+BmUbaPZj9L5BxeUesh7HUJ5+sbZ42k+SV+r+4A7b
	 aws8ispl4H/PmLZyb8MUUqGZw2HjWzoQg4YRIBJVKLxwzPjbvEkt+a9DXWib5K8IRl
	 JQbg11qOeQAIpuxsGZxG1gscZjnw0PUn2FC0mVmeve+sI1TvN7IxHwXh0YhGamL1FF
	 HUAn5Vj9x0XjwZ7UdMk35SxooZj46NvhHsEbC2NtkLmiTdo1AbKNe+XdUx2siSw88F
	 6KJDyx46HVK3qwQ3sHHkjAVhp9QQBFaZqXlhJj6m37e5O+f+TddfYgC+AsA2Qutn73
	 L+yzaT1G9bmAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3FCCD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 07:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178116459369.27374.4750529213412453785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 737b2af21baacb05b852eecb834637a692954c987841c6703a55d2b044d72974
Date: Thu, 11 Jun 2026 07:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781164593
