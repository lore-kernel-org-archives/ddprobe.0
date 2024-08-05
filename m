Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234DE27456
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722869154; cv=none; b=td52mgC49SR4vXu+7E0rdI4vAoblCf2ZXplHvqCzrBaySdB0w8RJ/5oUQUdmQq97rapxTnqy7U6Ls35k27U5HhB7rStTkCGAr15uzlSdZOSMCNwCwxPcTUCq2V/H8pBHDkRvfGuSq9IYjBV1D451OGYtphnXVfkqvt6Y8QMdfCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722869154; c=relaxed/simple;
	bh=uxkaeWvn4sr24JD44xFpZKfJU3GqwKQoY4aQGtielOE=;
	h=To:Subject:From:Message-Id:Date; b=uKoNY0cYZG4u9+E214vIkSfGUPR5/oKVgf5zb4RVdNatMNyfiiNq1rjQjONjJLBgkYX3Ud8/aZJY/XrQj5WjhgIVLKEjL0vM6P/srMYF/R4hL1CLL2JynzOoi33LHl6r3Oao0UGoSx94mmOXE19e4ksCR505Jor3z/MPzgCgSFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMzc79+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMzc79+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A748AC32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722869153;
	bh=uxkaeWvn4sr24JD44xFpZKfJU3GqwKQoY4aQGtielOE=;
	h=To:Subject:From:Date:From;
	b=cMzc79+Lxe9N8zFlmlLBK+i0BPeZNpuHFqlKkNeS1jmAZ1WEgYqk3RoPWvyf19/bj
	 yoFJFfuIxWu8C8VBQ8h/3JAV536vGpan0LR1jedBwv5fd4yClPK1rZhlkaX2mbCmRc
	 jFQcEZcUO5hQE74LB8vmxjAwNkkiwPFqCzTeBglA8kqjdRcLhNJUOwDZfMPm2hGSSV
	 8Nr0VN/Ens+xPqQ/+5C02621ZSsEEpgpYuxDuDzxjQJZg49335Oh57KHW/n3vHyXQH
	 0W5v5v3P3IG8JjLP2WBkirnUCLbBr0gl++utNhYzo8IqMG5fO4zQhrxLOUE3/ATSn+
	 txVuPUtUh3Olw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9343CC3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172286915359.22431.10973884436425967179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8108c1586260784821a866dbe7dd34e2c09699c0459ec5b43af51aa48acd75
Date: Mon, 05 Aug 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722869153
