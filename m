Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281E14A23
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751262594; cv=none; b=sjGtAhsRxjN0DR4IBqCKYd9jnWw9nv1KKDyJrjbEDYiTYwgUCHbGlT5nxMYm5rNkeePrQlmu8W8GjgU1ODJOOOLVyVpXDb960x3qoSe2xDayhu0kmTRjCuEKPwP3EqDGGXZKqVzV6tht0M48prgDSWQ9qfTha9O7daNPNQWR7bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751262594; c=relaxed/simple;
	bh=QBhfI7PuR/pPBfwamRCZzWvb/PDNXFTnWlxFvhP3dNc=;
	h=To:Subject:From:Message-Id:Date; b=ljTyKwNFTFIv6lQCHJfWeG7jgV+3aW+6ItDeyfiyph6VXYcqLM3gaofHjUIt2Pro11r3HqgSHxFYoKBqN1uV/Z+7sh3E7Ia0WTkb+7m5dUVVTj4VRxb9t27Fd9OZ31mTRPz3bw73rgJwtg07aPyBO7Vu2qQ9ApDWKVyoT8aMFDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqDc/fJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqDc/fJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2897C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751262593;
	bh=QBhfI7PuR/pPBfwamRCZzWvb/PDNXFTnWlxFvhP3dNc=;
	h=To:Subject:From:Date:From;
	b=PqDc/fJL36i2fdSVC5Jkcyoc0WiBhmC1WtaB9fG9e4gTPgvEnDZJdOehVx7aOruJE
	 McyGRwVYkI6c2sXzNH6aD1fhc4VBwcbB/VnKn/32jeVv8E+3PQIw5pMnn1Z2t0IYD/
	 KQNC9XUn7+1x2CNX4gadeZwP5frC8OnWJIOcuNJsCMrnXO4Rh0/cz+5LFYn/xA7kVk
	 LQqRoEy7fS8aLYmstmS9WDG6KHE68520bwIyTnC2ypXvzx1ZirCxRV/J99fwsYBtIw
	 esQuBcJfZ+AMMOvCfxapzocUNBRPaRvS7WDx6OO1o3I+8d2qs8+d+2fG8s/Rp+zUv7
	 4lDpd4SllQ9oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9402FC83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126259357.8011.4821533648529423414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c19e73b5bc44c0a64b7f4e04511e3b0bf00dbfc70f61e2d2056ce68e0af4b8
Date: Mon, 30 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751262593
