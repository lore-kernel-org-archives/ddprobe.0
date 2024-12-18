Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178B91FDE2A
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 17:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734543955; cv=none; b=Sw2hil+5MVB+F4HyYT7K9Bw68DBNLntAGap/rqmNl+IXL2DAx+CVTkH+LmUzH9rNvVDaArg08aj7kZL8556cwxQ8X2QWewf21j0KF2f/bqzCzUBt2OJxSHBzDH1zm0lHvwY7IBAy4hrrW5GX4A+VlZ+asp9NoMpjCmK55zY0IOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734543955; c=relaxed/simple;
	bh=e6We5nAUwOPh92lK4bJn2+1fBV9hQ0DSn4MjbRgjNh4=;
	h=To:Subject:From:Message-Id:Date; b=vFDGpOzk/vriBADjU9gp3NU1y74rAIXS9413BVDr+bVL46FyX1pfDbgLNT6lAGqC8XVFvQrs3q+4h2X0v4+53EZhUkoiBiI7YuQfeWgOj1Bf1NSq4m4TeWhwYP9wX9iQnnNd9EaPauWOEM2cJDk4AXGJGujVVi/7Kq4HbTTm1ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6znwxK1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6znwxK1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9A6C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734543954;
	bh=e6We5nAUwOPh92lK4bJn2+1fBV9hQ0DSn4MjbRgjNh4=;
	h=To:Subject:From:Date:From;
	b=l6znwxK16/+LFcXmwXTq9WWHyTmsdss8hTzthn+54YvomiE0g7PS5IOf39YxYCQBt
	 Rv/XEEZIfHvmsv5J1xMQml7tGb/FEqE4AQdl0RZRyPFQVtnYZR7n6tD4P9wfMSJX++
	 kZCgo+EaS9xXGkQ4T4bsKbSwUEMYDtdX2uW6e5zDxRyAgtZBTJriupOoYCLb/dJYGJ
	 rf92R7doSzEsSfaueaXY6cw+6ZuMQ0xxn+FbAbeeAiprZr+H5jGd4zkFNZVjuhY83g
	 t04YW/LEa/8EBqNYA71+lkhB33PzLzYobpv7rZmoxs41SVq9Te95J2LUNdjSHgkHb1
	 BiYsPvMwhnWyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0AAE77188
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173454395362.12740.15397369152262610471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59866eb37614b35eb209a1af11fb1440736345403729895dc2e20276b9436556
Date: Wed, 18 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734543953
