Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5B6331A5E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765807974; cv=none; b=LNn2dYxuYW6pZKEec7+ov80wmViFtoj+WpsahXJgFhXpzEFNAU+CSZVMxEhY+avfvjDQSfj37Sz8DWQRzQNwsr49nYfFxEaAEJnZ5XYR3O0QdaXo8fFMeA1xBm3UCvFZA6blmFyH1hpjuQMWJh5cHAsHMUhnK5qP18Y2dyIuidY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765807974; c=relaxed/simple;
	bh=k0obYjwXJ5qBZY+7cCuTKOJeMKNxQi8bHwyegxtJnno=;
	h=To:Subject:From:Message-Id:Date; b=HLhfmqLN4/vnOmVOo1WJ3tA1axEs1dTxJPnL0LzVQpPvwKVNeyRxsJPGlthOxfhbm4kX4JsC7R7CRvHcv8+OU/K+X1YZ0UAr2BRafAENj1vM+TQyZyl3irXl2DDAvSs1D/uc60ySLlVBKvpzI+l2SAJUk3z0YX+opaKENVFpixQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0vldswI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0vldswI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF8CC16AAE
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765807973;
	bh=k0obYjwXJ5qBZY+7cCuTKOJeMKNxQi8bHwyegxtJnno=;
	h=To:Subject:From:Date:From;
	b=u0vldswI4TWZMlMa2MXcr/81zk/aa6O/4R1MrJ2QaVSbQ2kyIsDJcu0OHR3D9J/Lq
	 bE4YB/dxHs8xuxvOo+4wpqwFbmGTF3H5OTigzd7Yyy1TOYjyg6217k1wxMR14eu6d3
	 uMvyRegH/vvQWxLPoQSypJO86RZ6A3FnRYddrCbTwSHxYsOZz0/u1wmj67gcsZ3iWJ
	 oJWYtGddJ+XpEifkc//g7ZCBW2v0JXnwnZX72jxIjk4vK9RV5wYnRQ7nul3JmP5bZC
	 N0SeRv2YubmAts9W7xtVixgydau5oZBqvN/QfbalPOGb/WGuioepvUA4cggtbT6w00
	 7Fl4w1ZKGu65w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0DBD5B16C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580797363.11710.15249011635793169444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b435f855683088d736d523d82172e94b5cf5a7efbfecc46df77d6e4fee2d47
Date: Mon, 15 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765807973
