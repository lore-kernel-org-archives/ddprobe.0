Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E331AAC9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744444194; cv=none; b=GXyWGWlEhV+3jxX6C+UrLld0tgy+kOC7LqEXrQlWGNay/9wmpwzz1rQ5MxadmEuGsnOpuXwhuYD6KxANmnoHjiIq6jymdcKInnMbwBWbHl85gUbhcLE8Xvlq5xKcGhJvM018gM+FaWUF5YzRKS2hqk2qcK77vmRsPDA+8pINeFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744444194; c=relaxed/simple;
	bh=6N/h+n+00xI2tOiwHb3grP9ktuYGH3MlOCQQ4gb7pKg=;
	h=To:Subject:From:Message-Id:Date; b=DBAHtIof8HdZlj0WbjWRYobfDP1xRotTdJhor39DSj8GyBEdk5bWrejFa2lcy6WBT8H8QWOWXdZPgywRpXJwdzFYCYK0NzjDs3GowGSYd1WEJt621kpwZ8cTSPAYV+WPUlnkUgu6Xfw1hNchM6qwtP+GnZA0j2O8LFWyHTOVFck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/XMPpTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/XMPpTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D53C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744444193;
	bh=6N/h+n+00xI2tOiwHb3grP9ktuYGH3MlOCQQ4gb7pKg=;
	h=To:Subject:From:Date:From;
	b=B/XMPpTTAfoOuKkfZWCrdG5BLInBn0sGA1QWGbcJ6cZksZFFbt6BwwGklwOJc7uCV
	 ba+qBLi1AmAHVKvLoaSu5CVfOK9kPPWFOpw4z8nfDGl8gp99OQjLYcZ2Jjh9Y0nQa7
	 Mbj04aU7rnvPZOn/Eaz8wFp/vfa1gBGHGjZ91RTo0tVM3YlMQtgKI0wxJAFNoB9f3q
	 R04ZlcVUCE9yDKrNfsb32UZLQQ+OGofb4VNegSdcn8AhJFFA2RIPjAfapOdTwEfiZF
	 3EB/+0ZzRF6f4OSZvE/z9UwaVTm920kvNcXR7ERbg5xUDEv4V4IkISIqYKeRQD7xNT
	 50qNvWH1HCzDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0EDC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444419363.14533.4072205580349294326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1030934bdcccf7eb5972a3e2febfdc3ef748919cdf5c7f52cef06faf20a190d
Date: Sat, 12 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744444193
