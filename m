Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0E81DDD6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721772954; cv=none; b=FoVw32UU4yZGyKOuFW80C90Rguq8R4bnU14SYsDBeqXhAhREY5rXMELfKvOTd5p9S0bW+8jR2ybASgO4dkn4+4jMoLKWXb9Dgi+fkmLrGrafHC4QjSWxfQDXDwpPLUb6rDzOWaNf6ulRT8xYdKKJY26xlH32lkkNRhBxweTy61Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721772954; c=relaxed/simple;
	bh=Ip69ZYA1HhvziYqL/3qDAyNeyUmtAyq7lhiYlqS9Mnk=;
	h=To:Subject:From:Message-Id:Date; b=GRodydypfrjtv+3FHTEQo2AjqEKyV67ZUa7SPKauUm/96Y7iO+F5WSpIKGMw+6Vt6D8gtQFSgNJ//ng0DE3/7JQRutNJG/WB0dKbcHMd/wXPr9OTzK5nTBie5vALS+hMTDCK+AcVujPIm0nnsEdNv9rpzUO5+wLXgiDmL03Sn48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9F6w6qF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9F6w6qF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD08FC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721772953;
	bh=Ip69ZYA1HhvziYqL/3qDAyNeyUmtAyq7lhiYlqS9Mnk=;
	h=To:Subject:From:Date:From;
	b=e9F6w6qFAjOwPJXKKOfFu/Yr+PYfF/ZVqUJpI76d8qd/G1gkUmTojAoyVT3h86h1s
	 8WECjdxH62w4FIuWh69O9C0ZRbepSHWpOND+tmlMA9OPfkxHifogFjquHk6Y4hlcs1
	 F8efZxqR/Bzl9lyIP4+7fTV1DZcW1t/Fh86nzcPjAtR9k325dQEl6dstPbYhR3XrBB
	 +6KLIGPfi6LTietJlDU2FpfGpVHkOghG6V4z9Lr45MMsEwWGRtljcoJGdefFRNBn5G
	 vVbfvhwLbmpXkAFuo70X3VA6xjJIHvAiNW0zc8V2LXFOmk3rNLICavOrcUmWYIvXt7
	 pgiPc9//VA8qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959B3C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172177295360.31306.5654476404405535988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff14501c0105049f74f8b64b5776f5d7ce665fcbed028cde492c64580cc032cf
Date: Tue, 23 Jul 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721772953
