Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D09B21C184
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745614194; cv=none; b=bPRQRk+2GZKgDbWRczqLPBQoVl+R80qKZELAsJd2k+gcHgYwT4x0g8TbgjBTdT6iawdUqimi680BYnqbL8agzP0LBJYd7GesuvTtMJmn0gYCnMjaBHk2hP5opj+7qImAPGDFwNTNwqdzILHicmKAytu+ixRtEtwPvpGzXxg5H0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745614194; c=relaxed/simple;
	bh=3ywTMfOr7M7ayy1XFVCJ1M+ea3BqIPAlaG6hH9ZQsTk=;
	h=To:Subject:From:Message-Id:Date; b=WYx7I4dhZZIpyNG100qn4rOSFC2wwElvcQeOQ4FVp4WyLjLBRw8oGoKkvTFQSkx/6uQJjqtvLkZLku808GfvQUYLGKDDxdEutr4dL4NjiE0mZe+UgOWDEceFRtL/WZZvoHE9320TpUZaTTuYkY/GHdA7uo6B/ZpB7VGFb4CwnGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGlICjFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGlICjFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1139C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745614193;
	bh=3ywTMfOr7M7ayy1XFVCJ1M+ea3BqIPAlaG6hH9ZQsTk=;
	h=To:Subject:From:Date:From;
	b=YGlICjFYcdlxK5CnqhBk2iTof7u+/Zl65HHX2sxonCpG55fEgMBauXnEn556M+WDE
	 f5KA4U0sDS83+8AfKVOPOzG8V9nZyCJjqAhGjgq6eGSRAX/pIvW+FeExuCrHoke/oP
	 cmORzhNdThQs31M40IzuERbbn3iTF+j1F/uktf6cL49UNn7dVCDnUMJxYAo1dAKkLO
	 indWip0Auw2tGNwCkTX3JkiK0vWsaTa6u3fRygaa8eZGVLUYsikIL5jxJUD8aAPnvw
	 TFXQW9JIqDOWdudsNoJW6hLIuNKSpDpR4epFyX7HcqQhFJQqofQP+PuV5bGij6U86E
	 DF5g0CCNurdMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF9FC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561419357.13370.17632710762467892897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0cf6a500e0dbb240506a17b89a8ce6eb931396a3f19ca50ebab5e63b46e60a
Date: Fri, 25 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745614193
