Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4076833F389
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815994; cv=none; b=IZ7nA1+P76s0JlKywBPXA49r+KmzAVRW7XKmGojqs4+6pUqHb215ZvfpsgvJ6mDQSy7C5VDVhIv/ZHNZKbbvga59kCPA606fBcm3KzB8ef62yxEozGqgWkW2StIXDXywSuaVz+lZ/5XMUDU0SRSDm8rPoM1Iky2PibcIp8xdj0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815994; c=relaxed/simple;
	bh=yQHBhBPk3+Bp3YB1GN5d8nrT66paDo08xukjKTAqgvI=;
	h=To:Subject:From:Message-Id:Date; b=O/k/Li4Ue9ALBYWOW9CGdMn4kPc5b2lTSyXGHTvXckaXGUXdMR6GtTOSS5HfU7PklmlRbJ6kKPrB1q8k4oUZ2khBtG8piieb92A+yz3YHZ3Qe3Zl3azzPH36h0o5W22OouPKneuCrdiWdNEAt2FugRoAleoj+FrsVkQnS2oUUDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcIF2Der; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcIF2Der"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8DAC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761815993;
	bh=yQHBhBPk3+Bp3YB1GN5d8nrT66paDo08xukjKTAqgvI=;
	h=To:Subject:From:Date:From;
	b=bcIF2DerlF6LfCYZ5kuBsE+zOIfeEq3tcHHvjXQ7LXEajfOqEne6zydZgTHaAKFz5
	 zVetVevaXggggmDG34m7X+iRuiaWS3uKAGQaVOjm9LNBnCACxXfyOdtkrUi8k8HFNZ
	 TJtLYQL8PDDQm/7l5kitjINY67aE3QcYPmpP7lFQS+1c4EZupggwbRGorPIsYBNhP5
	 2DK2PsMbfdIWqEF9Itrm2ayCz/SbCJvZjZNzkI94kwD0Z496Aibr2yatzEeYWXoOZX
	 HwBkgo/k5Sx0ITn+Qr/WSiCJ1jT6pEAL90zoRhm47LRt3WRRXqIv4EixotPV+YtcdO
	 XOb8nUguV6Lbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF9CCCF9F5
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181599362.3042.14266335010347484732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf79c70f104dc73b3071ef6ce67fb841c618bf3fa318496d02a008d4ffb1b3ff
Date: Thu, 30 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761815993
