Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671A4288B1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737684354; cv=none; b=bRDAvm/Qu4yBg8tWFE1ksD33M9F+GhDv8qjxjMrmeqWbL9YdNRF4esDd7Zv6+pcFerIknDkGFTCkbN4i5t+4g+j9rE5ARm39dO0GolxJHboN7tG2qKtQk7/IKSJOY16sSIwuJYFSIdF2GrE5y7Pz/90+gv639v0/iOm4Hih7gT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737684354; c=relaxed/simple;
	bh=oPB9HS48khjevazP0D5Hh3LRt8FXywfHwUWiS+5vSaI=;
	h=To:Subject:From:Message-Id:Date; b=O/eTzQv3NNNHhLHMwJamsR2wnqYrIToEnFczkCMcxL+VnRrlSlYt4PKSXv6udL/a6yKIjt29WfaB+hD0MWvXBwZ2OGAjDlks0sUSnKaxtorpWuXSNrt4VUaL7WKHLmKScMhlNjEzJXeQicNLaU132LVldQRtPbyiXt04zRXjMtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdm/5rwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdm/5rwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AB5C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737684353;
	bh=oPB9HS48khjevazP0D5Hh3LRt8FXywfHwUWiS+5vSaI=;
	h=To:Subject:From:Date:From;
	b=fdm/5rwN57LM4n+iAV2GFv0PfvUVea2RhyJgBTgiZlyl4fxdQy7F8+GnjVhRspXi/
	 04HMyYgYGDKothiS1WuZzOvW70lZ2EV17i2Jt0ephbhhTdynX1L5T9BBQAAmPhhOBN
	 U3lW08rjt3XNSU53K0S09HKXRe0vtrd/pYR7dWjSoKZaSd2IuNnXVo08f6pvU9Vtx3
	 gRLjG7xcmE3unvZQ+YcfYUeDQdN+5DtoipRX3J+OFPIiOQ6xmDMe/zHkwu2FgRTAf9
	 615BSLlWgoD6PDpVVFDQMvPniX7/9mjk7kGDBaDVXTV6Bzk/X0KUoYDiDKHh4oS+1P
	 i+wQArEuI6UEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9472C0218B
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173768435368.26496.1869612611735694078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb076ffbf5ba43cd323f05914403f6f1d622d20a8c3c4962ece89428d23b1a2
Date: Fri, 24 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737684353
