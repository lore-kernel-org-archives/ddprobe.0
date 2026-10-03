Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B01314A98
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791040234; cv=none; b=n9tnpqwA6Dyl0hwO8Rj4eYvQHuqoDgN1WoMgsTRLHmJrlhvbw+BU/Q3Y9eaGSAV9TPGZyr5kFqnB9uNeRXcDoGYZBZ7errdvBrHF47QAM4qbXuRmNqsTc37utbNRjETXshDAp+Qlv+Xu7WCE9dbG3uVUOWwvUHLIGxey51MWTTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791040234; c=relaxed/simple;
	bh=GTiYQj1K3FQdFi/0qg50TUszz/xXCY6aCneUkV1UpdE=;
	h=To:Subject:From:Message-Id:Date; b=MvARcF+dOxN+l3Np6USackkjbFkN7fD0oVkKkxDMv5Pr63fkb0JiriBLpbjhQgk6xKSRe+7NynY8NCOCSBVeTsLjkt5AEDfkoZyFP/7j7hyLbVm4uAzU4EGdDcHQUQUB9Zq9pSHDAkKVrtdMXUQ9NHMbOdOefJfB6/c2f338Tbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLDIXQHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLDIXQHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEB9C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791040233;
	bh=GTiYQj1K3FQdFi/0qg50TUszz/xXCY6aCneUkV1UpdE=;
	h=To:Subject:From:Date:From;
	b=jLDIXQHEzfgpW1AlMuCkUZzWf7circRyM9En3C5rTUC+lDrbzU2bfFd/aeEiu8VjH
	 vguJyg9/rk5UlNQCuNHbLbKL2aaLm1r3zFL3IwowqCa2lca2gBPbIeXTIwMRY/ww1n
	 tv43f9YJzIDaSXaeLVqFFhLwEQ0BhJtdDB3Cx4Y+hC9kFdeAX7UGDo7BzEQO7xzyVF
	 oVohzd0m9/cTgjEp16ThHVHXMBLFZEKk509aQj/Z4WQpRpoyilt2HjiCSnHlkLzGlF
	 uS8YSCG0hNP4o2DhBeSJS3NS7xhvEqcllUzsEaZm8rWEVoZ9jKd+qPZqUqm2gSVyRa
	 iasaYW4BOeiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB770CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104023369.17286.4490757843130595776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449724cc815156328625b4cd246c2f0c60ecf8d4a4cdb92278a59942dd6e6fb0
Date: Sat, 03 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791040233
