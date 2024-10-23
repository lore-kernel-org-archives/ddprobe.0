Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E6F13B7BE
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729722354; cv=none; b=uSBlslXFp5XExgkSoC5dlkQjAhtt0LXhGKsPp2dbi9dxPum46j01hbrzw1sQamdaRknm2ODi0UDYxsoZkX8lgHergw/aiagENuo+ZchsYdqDP5H1vXH4DgB6iBHyX9slF9iIUAvBMwOepyQWQgxb6n5NWdNdiP8Zkm68m/oog00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729722354; c=relaxed/simple;
	bh=92VCZD458UVXdPau/uCFZRLZ3A/jAvhzkItLs0NpYZQ=;
	h=To:Subject:From:Message-Id:Date; b=PSOGVBE8ts4ho0W3SEt5aUlpUzOv5+gB7GClRhpMxWLwIOsSMVbS9WEnfd4FSzbh7Rgy8SD+muTxOxRkAHiu5VjmVB1PZwytav4hOoRbrzukJB6nK5jhc4AVBp7//hPUuQMTsHQTemeX3KqPc4lxnIUscfdUtuFlElA8n6JJDDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAnmVymR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAnmVymR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B5DC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729722353;
	bh=92VCZD458UVXdPau/uCFZRLZ3A/jAvhzkItLs0NpYZQ=;
	h=To:Subject:From:Date:From;
	b=aAnmVymRvbVwKXYYkgk9mLQtwnvquX+mldgoDLGUs6ngfiy90Z/Qrlj//Y2bylNok
	 TTaK43mAeu9+WyJlqIRY/wE8VsfXfV2PJOVw9VqIl3CCCDyZ8cBE+jyW/1B4nSCS3n
	 Vpyd9Ig2luib0nY9MHXoKAEG8IolKYburih2oA/sICbi/JqBaA4X5UCuN4CsOCWw0z
	 N+8bXsCHBkOF3xECclkCmmgybOp3tgzQdwmh2J0+ObcJptPFNbsRLGRzztiLXkOssq
	 HDhvVsr7Dw3UcnOV45zBVFob/ron1nfKPdlZ0eYHVQBTcwPyNmnPi2jjUw9YyYRPn0
	 1faRAwVFVZOxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9803AD0BB44
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172972235361.15434.7635114048343345953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd4311fc790e8499568ba36044d5ff333fc19292cb535db589d417dd128d923
Date: Wed, 23 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729722353
