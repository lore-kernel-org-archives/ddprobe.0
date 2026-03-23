Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3CF2FE582
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774301094; cv=none; b=qSdP7XWsWywl00mxboH/PE/RNukqkpas2GuYw8HuxmTdlZvs0GohVJOGKrD5W4nMcm7cJzFOwFUgFpHPkIYemZW/3Nu3HMxgkQNOBGOqwgBEdbzkVmPxcI81vRbwXPOaopODm5XXNScjL6bZ793upYMEfUTrfvP+EM6jTRyJfwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774301094; c=relaxed/simple;
	bh=wrSJuyAHlv5JsMCFmVCDibWBGoHZ3iU1AoM0iPSheqk=;
	h=To:Subject:From:Message-Id:Date; b=q7T+1Q1QYyVncakJW8/ECWhtr4SYj14mJJVnUQa7I6Gc5j+OJCp82f8kUH8T2c8EI7keh2mZXw3aTDwfwSc0cBAAD9XCrxmZgn5bcdhbBzPZhPVHIhpFdAWGIDZmS2aqiN9vQvebjDn5Wqw4LA+Dczqj0QEmWTeZBJbZIG5UHCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzMAaTtS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzMAaTtS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5A2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774301093;
	bh=wrSJuyAHlv5JsMCFmVCDibWBGoHZ3iU1AoM0iPSheqk=;
	h=To:Subject:From:Date:From;
	b=QzMAaTtSCAih5lb9598P7kY+dnNe8fjFaSr6DDf9qigsfp7ckONCSYL+66AANoIcm
	 fehVn6QsdN/mgmylz4Bgw/uPJrUEnXdM6tZ7oNjDzDfDpbHcv0zNkFGuFz+sy3D66p
	 sEPIZyq9UEH/4C/e9QIJU6oE2pZsWX2Vuv/oMom4ANxs8779r+cmds3k8kG580AagK
	 LesYnL3JqjQwvv0dJwZEI4qy+1LW4mAXVlOQnuMwBt1R6NdDds2NeoenWJ21wteLcD
	 9POAbRAoT7uCLXjRo+IbLNzVigb5eTckqH1POTnvFITBseHe291+q29ZkP8pd3rl8A
	 fMa9JJta9HSsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C5F483F8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430109368.24635.5977104229498026695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b595c7b63c5093c23c92c5d4564d89fa9c729a35b2af891d792149e07a5f5c4a
Date: Mon, 23 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774301093
