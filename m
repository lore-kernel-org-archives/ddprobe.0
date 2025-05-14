Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CAE2BAF4
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747194594; cv=none; b=ojktmE1GDadiPxAdqCwjVikGeqDKz092urYikkKd8p+On2VVb7U8VgQsp8a1TsHpeISe1IkRROub7vx1rL0AGfzP/HfUUnMD8h0tedtM1vyqB6/E5A74+Yg++I3MpB9qHrklX6P80ggRbXxWA7GvbaHVcciFjXIo4ntK0q5cRiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747194594; c=relaxed/simple;
	bh=C+tQrnmF3XvnfStuob9Y7czJutIp+BnAIR2bujsKyMk=;
	h=To:Subject:From:Message-Id:Date; b=i+y3m1ov3cFmGXeEY6K0edMn5tDef8Vgu7c/GIOUOhBngb/gR5yFmohXr5SPcoDsTar37aay/N1lJnqfMjva6o6HQudM+YajS6uNdApuCE47nHIBJrfX9ZhPOmzhh9wD26fohdKSZF5sW4sJpxXnFA2YOjmtdwWvmR+lSDudR1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qz+Yynob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qz+Yynob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A523FC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747194593;
	bh=C+tQrnmF3XvnfStuob9Y7czJutIp+BnAIR2bujsKyMk=;
	h=To:Subject:From:Date:From;
	b=qz+YynobJ8UQEnEZPq99g6kAPAc+304g03adqoR7zktXbpLJu1liN08m6zOw7Mvh2
	 sdhnb2r/FYdgIWi3MYM1OEBPr6MStu6dnIbQNpDppDAfoQnjUzJWCjj82mQuBds9IU
	 R5EWLI/Rkb7V5GtcGyFB7SzAVDsVk8dRhccJQED1uVsZqa/5PQkE2rOr7nFHvIXQbg
	 6BlxlVi7l8Zcas33j12Fb52lZoyJW1kUSRa17zT3PNbwHVJ2EKYeDq3l0T8UdSnMiV
	 rvsEVr8K2j+1MOOSoC5SBZ6+dG7tduTcFn4yzsdxaq2UlxOaIMLkURJ1visBaTTLY4
	 zcoGFEG+Og+QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9183AC3ABC5
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719459357.27504.12063535440450564037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5bb85fcc96ae083b9de409daeae98da428317950a9d62948948c94e83f3e051
Date: Wed, 14 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747194593
