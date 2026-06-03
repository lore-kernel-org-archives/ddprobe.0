Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009CE361DA0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780450474; cv=none; b=ORXR4pz0ugpX3CSs1hsx5yzRHH+OiavKInj9hiGhg/QUcjo121/Mp43yJnknxedQhZsnR7XhA5cIEQST0zTXhzZr/nJigJfkYjlvRhvZnEP0hWU8rLagJWzq+EMCo4Wuf26JmNhyPHH82xC9D0fTs+CEkW3A+xUjN7XkkaIYwwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780450474; c=relaxed/simple;
	bh=uun7RvNk7BXkwKFEPM9UgCeSNoi3VpS1SfDdnZ7Ymoo=;
	h=To:Subject:From:Message-Id:Date; b=DnERo3zDOyIuLeqjoOIxaDoH9uuOhHVImOc+qsZso3UUpQcgAjBZNOC0RbGnNMcLwhd554egThgTMZzPJtrJJoHAa+Z/LWnb8TBAUVCUw+ZGy9Y/TOkQMq+WrCQcecPpluqzxLC7Zw3sFTjZKr7uaNndCon6PEpmJRM77EHNTzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSN2XuJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSN2XuJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF559C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780450473;
	bh=uun7RvNk7BXkwKFEPM9UgCeSNoi3VpS1SfDdnZ7Ymoo=;
	h=To:Subject:From:Date:From;
	b=VSN2XuJ7HoqM7iVVvuqVvk4A/V/i8y0qgS/Yc0dVHJAzPllkst8rup28vK1Cj42Ew
	 fxKpS954kzwv4ToEN5wPoPdsx1FXg75DQpjj/touOTrwF2MwGF7vc76E1go0M0ZCtX
	 pQ+ZBp1ahw+i6cTLfJxS2l3H/qOhwjj8KKqFXnweKv5aa7ZXVl84Z7vnT+S90czWQw
	 kOZCbEOuX5KFsM2QyfWG31ckxDVi2id6vW/UEJw4czTRyvKHFzC+7ogVCcTrIYaLCe
	 bqCDY0zEDQxrRwZNRpFrAJYJ/hVJLd434B/6VFdLB62LuYjFjdJRKR7V1Et/mWAr1Z
	 utNGDB5os5zPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88DFCD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 01:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178045047368.28465.1683243878433960870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01c73004756c88447993d769b70428c32214a893ca74b2a7c1be35559f47d4f6
Date: Wed, 03 Jun 2026 01:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780450473
