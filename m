Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB6E32142C
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755186593; cv=none; b=a1YN3aSl983cekkqsxWoLPSO5BugPKIlc9RNwCJd2rwMi25o24wzHETeDJ1n+N5Bj8rDTzkabRwruUglYCZ7y+wZvAYwrdoMJ+xIFZOhq7spg28c2WBe3rlvtdxShZL+E/z1WKIg164GZX1zOzdpwPI3cBBCik5I5pqwuypsfSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755186593; c=relaxed/simple;
	bh=c6lQDRmr0CzRmpuCKe07XsiGhBPt2hyKDHocX18PNS8=;
	h=To:Subject:From:Message-Id:Date; b=tg23x9SUVtO4bZc2eqI2EkofYciea8vvR4IDrlD/dmTWYQBDk926oLJbwjOepDZrVQOKRVoqh13oU/iZqe1SMU4HvvgFl54kL6dmggCos2bPNsF25WxW3JoEK3dReJSuNhe5Kjlo7OYJOG1QRrbBBBII6no6FTF4+slx6Cky4VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DyRN26BF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyRN26BF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F49C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755186593;
	bh=c6lQDRmr0CzRmpuCKe07XsiGhBPt2hyKDHocX18PNS8=;
	h=To:Subject:From:Date:From;
	b=DyRN26BF412I4YV4lfsU2WGiPgYw0hEk9zU0EDUUyEXip1khsZg9NvplCYwM8YLQe
	 4OqbN86DRh5WFpD89XyrlzzIYl8uZrgJgciONj8prMxnjW3mBZ69dXqEhUKNZxcJxC
	 2b6wv1d/+emz44JJHbsbr5E1hIxH8AG5K8ffCMzkXVtOy304a+t2AuqKl/ebUN6wKv
	 WrvMwP3sQVpKJoQf8H/Qesis5jt+/TCh8+ZzSZx9OjBZvHOhs5M4FziXUkaFEUFJzw
	 lYTppvXZspxHL6uODvGgUR5IJcuOcDr9AGoojpDLvppVmkiYTYERjF+0JUxrfglPkF
	 nPk/j7Ngkpsjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93110CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518659358.16199.12154840580202513507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46dacbfa73e01a3277b1e7faa0b489e2c708423215e4e1075b57f6158411661c
Date: Thu, 14 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755186593
