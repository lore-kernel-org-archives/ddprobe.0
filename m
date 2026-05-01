Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DB32FE05C
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777658254; cv=none; b=IBCqsQlO9/+UsvDoDr+xxK819SZJruRxCeBsGHXCL7K+2+eTh5iWgYolF3RbLiDW9eBkpDoNhsWRy4Lx5lEP172GBjvaZUnrOEfzZf2dM+eCqjm8InHDmPmbyr/lDcOw8pysMpet65xWN7JkmJUSLrBWBG8qiz8KVyFHsYu0Tks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777658254; c=relaxed/simple;
	bh=VXoUreCy1uPJQu/zessXBKJ+YZZ9w/woyDC5lMWvNog=;
	h=To:Subject:From:Message-Id:Date; b=GrBYoVIB7UHDiWUrH7rnAWuPbSK6I++g9PVAkgUYmJaF7YvrMW5eusraYxphnacn86MLzc6UAzp8SHqFTXXoViccUC5cVY9mPFA2NrDdK3KfATpJMa5dfM5WA0boyxua8XFYETG5gf30yc/ALTqLYhPKXGagHY212zAK4I1TFfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNhPyPMG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNhPyPMG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0EEC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777658253;
	bh=VXoUreCy1uPJQu/zessXBKJ+YZZ9w/woyDC5lMWvNog=;
	h=To:Subject:From:Date:From;
	b=LNhPyPMGEhYKN4gOYu4I9AGiVcKMEigqAh7UVc48r/2bzyWABju6kNqO0BfdoEk//
	 STR1aJM+qJ7H0VMd+p3Ta0a11yVN+flXwxf7M2GuwaWQWgtpBbU9jTvq/uEYfgqBrO
	 rVlzUlgHsxK/KnfNlQ4U4geQ0StbDI0lxlgtup9u+u+RLUOjWqqkoaJmjYeGOCHgq+
	 u6UynmID08g6omeYaXqLc4vV38Ss1UiucfFGUlx/llOaiyhzrsCkbAI7lID+PTXRUG
	 3iXvz/vZvL7N//kJC7Gju3eF9GvYmvgg18vr5LVfQtOwe4xXXic5XIAA1HUEURiHME
	 VrRbq1QBcWnLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B046DCD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765825368.10960.9456682116749995987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5f79c3436ec3dfa9ebcde796631e45846dfbe91627ea3fb60fde62c732ac86f
Date: Fri, 01 May 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777658253
