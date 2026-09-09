Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8424F4731
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788949834; cv=none; b=YVlY5a9o/EDSenZxtiRr2Dl7MqTXe+/NU5LpjJoXh+lOMQbkNnepaDHveHuz4dZkAt6WW2gRFcGBRF/1WmzlBf6hvkAOzrIcDGx5fD/uBoTwmOQBK8ekqgGwzG+kdTA0JKcVlfl9IRt2O6rHA7mEulnrk8K0ZwA2dcrRhDoLwq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788949834; c=relaxed/simple;
	bh=bnYha4N6RL1z7lksq+enzC3W2cHEk54ccBZvmQNp/DY=;
	h=To:Subject:From:Message-Id:Date; b=G4oECADjbh6PY5cxk92PfI930K9mA0Asf57AOA4bKeNpwASxsWGToBrcjhFpkOqLHWdN9UAGNRubl+XECSGmmZnVek7/R1lAtDrM+NlZ1eX+HFG6O7Ok0ilsADoQxk+fAba3MAbjRw2Jx6A/K7ro09AYovtTNu8oLbQHtGO2JpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWNC9mRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWNC9mRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0518C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788949833;
	bh=bnYha4N6RL1z7lksq+enzC3W2cHEk54ccBZvmQNp/DY=;
	h=To:Subject:From:Date:From;
	b=RWNC9mReHrq1itny+PEkg3I8eVkCMZVR7tc5Sc2xccEf7htaXoh+WXslGRvgPIHuR
	 xLbiatUrgz2jU8DQ4XdbMbQNJURwx2Uwvl974HlQfujcwOlcYPNbzTU538f9+uH4BI
	 T2jEOld4f52n7sFSrLqjC9L0VNHXdI8GSb/jS7D6QRESFE00CgxpNwCGM27CPZe47R
	 eNZ0LWm6PK+rFnvut/LsW1ed7DBUXHaQaq1+JV3WKl9Phh3Oup5HogJycXVNNvs/1X
	 JlzVD/Z/3/1ySLaC21BMmXSrKAoOJWGo9VxG7giPlfrdiEAX2oq4lND1Os+GQi7dXF
	 /nz//MsKs/AzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B2C79FAD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894983369.24606.8185127652252731279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe60cd80de8303e3d93b41c66c83b4268441d44f05a8674008f7019a5d4a2bb
Date: Wed, 09 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788949833
