Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2032A1FBEA8
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767770034; cv=none; b=YkvTCB+HqiphKAPKO9ZHofnGYz7VKbIFAnmapLL9PTcAEIh23rVB1i2weFe1m2t43/zQq1RS/9DbBf2VnxDjtNuQE/3rhHsgRkVSLQagNYlIUzEjoI70l+La1aH5rKqS1h16Zh5TH7zJ/pFIJ9ABCodWnAVsFRtPwwILs/5o2kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767770034; c=relaxed/simple;
	bh=eqQab0UDIOa6lYgFwzlFbq5iXB9rK8nuJs2o9KPCtxw=;
	h=To:Subject:From:Message-Id:Date; b=R39HkXyjvI5wMYR9iUeobkLjOO4WuynVhjh3PK3mltPZJb5lfyukAp4MeqwezrVY3V85s7g85SnD9gJiCohK/jJz5ZBa8ApqFC3i/Gzrvsg46acjh5AWw3PrliHQDDxZNeF5GPHm9atDShU7LSCYtE5HQl62ZR4kQNpeSNuqzOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyPXAo4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyPXAo4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14F9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767770033;
	bh=eqQab0UDIOa6lYgFwzlFbq5iXB9rK8nuJs2o9KPCtxw=;
	h=To:Subject:From:Date:From;
	b=AyPXAo4nztKjcdCPwq2Sb+oZ7wU1g7+fFejTPE2c3CFcUfqGW85MEdhYBWJTEFavi
	 P0JAEptfu9dns7Z9RmTbSpjV2Wkco9sC8pUvPAM7dA1OK0NUc1pfgZzDmsqb1Wre+n
	 1S8WsJkRFGOudZ22P/mg2A7KRADPY4CpXGOnWpoPQyYbrmaehrFOwAmx0DR0cKK0am
	 tjF51AQ7SJhCqWQoju8riG5kz0ia9Ms9otktaPyVTfC42lazQKT2wRcAJZlzmh3NiO
	 jFYbEGpxifQNCADtg1KdJVGjo4JEcjlEtIK0hV1ya2Vm9s2DE7lG4V62W3F7w8huik
	 YDl7OVIRk6y2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7CCF6BF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777003357.6618.8376200016980326231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a65b184cf2d8ce2fcb317b55a371d2989455f6f0344dd783e9e536595ecf507
Date: Wed, 07 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767770033
