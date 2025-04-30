Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2725F1D88D0
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745999394; cv=none; b=qdBi6XDn7u6CeCHFLRVE0oojkMY+B6FrmdwpOyA5tjJ8ttwWf3sMwx+oEiRFYH7f4h9ntomiJmsLXaqoCYt7G49PEfVtxxXxCxr1HOgHz1i6YKgAjYePYaLj10bQbfYCjwQT8Y+aM4bEWhXn2ubstDizya5YkKke2rvXnAgQ+Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745999394; c=relaxed/simple;
	bh=I8Flyyp6sjz1jmiYMM7Kek95o8RY82LZ5vcZwxRQA2A=;
	h=To:Subject:From:Message-Id:Date; b=AlpU/UO2viMODlTvWV4y/dFWnCmOPilcNU5IvuNafBgZYIxjhSy9Z2F567rHAcTDLXb9eRpG5D9+LZMvx6uoqWEISk20C44Bvrp6OCws/Pitl7A5AODfGHXYyTPS04b0bH0dY8HIOPcf99lrPmZ0w6SUyjTr/xD5U2VmSAlH2+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlYtQybR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlYtQybR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97E28C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745999393;
	bh=I8Flyyp6sjz1jmiYMM7Kek95o8RY82LZ5vcZwxRQA2A=;
	h=To:Subject:From:Date:From;
	b=AlYtQybRy2EB9PZkAAxuy7NYI15wL9Ynu7Xo9ycbDAhECJvQAY0h8OVfQJ/FZ2cBP
	 Qb5Zlbu+WVTX3S2lkd9e43ClEE+tXATFE73dpC9WQqst75j6OZuMJqLLb6HeQNdI+E
	 HpDRr7eFjuEDLoqM7qK1Od2wHht9X6ySkqafC42zHtFt3ucoOojmK9M7GbpYDmJUWY
	 mOzd5WXhfB8KoxJ3ESc7fdoMLTScN8mm0rSp9T19jJCG5/zKnsdW8qgD7OfumDHR2k
	 Bktv+8sPmnCqmbo94iHWKTY1BhRuYBfxWIq35JRH2O6mEEMKbs8yDR/w/vtXWBllu0
	 dqwNboFgY+13w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E72AC369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599939357.25379.11305219367425786029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f99fb2c27cb97014488c1e874e430fd400c6fbdae7047ac052b343308d17b0f
Date: Wed, 30 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745999393
