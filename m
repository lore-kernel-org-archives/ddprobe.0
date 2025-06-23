Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0FF20A5EB
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750670394; cv=none; b=spGbRqlESNkveJ1gXrUS1VSi6crZw/fyo+1tkYe2Hq8SJzrWZK6bgYvrzARtkFm+Y99ZAWLia4Qv66Cjf9ss3ASdLKP7V0ydAeebqL5tPUY8/wd7g6fsfCVTp3+9xkqZ5gkklDX7kYULTki8LuThfro1jC90WhrihpQi+WKCXzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750670394; c=relaxed/simple;
	bh=c1aPlvJcvRAr39GITpizR1nG54MlTuijCWyQlamwP3Y=;
	h=To:Subject:From:Message-Id:Date; b=pYwitChmh11IaRmCEwqw+ePGpnhCxC+wxlaHiOqcK9K470HOngS1vzLXnEcTmTxMyW9qc7VmMmtFfwqLyOMmQcys9Jx0nBaXKg/lVE8ZeZJGheKRRW9c7/DEpcAL1gBZCcF+vAMOYikU/IHaSYEGjc2zBbfOr8EC+c9cgmhOVJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9TdplMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9TdplMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334BC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750670393;
	bh=c1aPlvJcvRAr39GITpizR1nG54MlTuijCWyQlamwP3Y=;
	h=To:Subject:From:Date:From;
	b=U9TdplMQmRUUTyhioz0ezSTV94vs0vENABZVorNlXgnizcPAxYQItjtt178lCm2zz
	 k24W+rV1nVSAtJkWnN9+y/+RWbHIPxCnmDyAJM/tW8SztSwI9HasmWePQUkitq2ZbK
	 68UzN9wruC6Wstsb/7kR9PL7NVmMx6kv1mC4zQdelxc6Rr5jJHOhWclQ5gwJRaW71S
	 ODSMYUnDxKq1GviYZfyYUtI31PzCMyZGCRODXnCr2doZ2t/jMcOf7nPPQwODySk/tt
	 wVrBz4yVyzeMWSZd+QZBheNRYxyrM7j2eYpiy+1cGoyvvwoIKI4frYEbrDiDWoonOy
	 bj0w4ZT1hOwYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE8C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067039358.27478.15612553255700529858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea7a4277075d6691755f1ce12478ad6103f4d691887d63723b1cde8f5917319
Date: Mon, 23 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750670393
