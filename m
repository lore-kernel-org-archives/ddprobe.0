Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC151EB2E
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728837954; cv=none; b=mg9ZQQo1wbxUHv3wAp7Ghehmprtf16wuMwoHF/lAetoRqzUPu+kjApaqIkMWwOou+rKILLUdgS+nynJNaDaSBqrRjd1gYdGEWqXZC5zyuunn1shUJgzwSY6FLcWX4MOCzjDfoVMqQvOlM/dYJqB8ETeRaE0UQ79995ZzOfgZxM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728837954; c=relaxed/simple;
	bh=/Wxmh3l3hNLBVBpSOUUILPPddcHY0oDzORVKJ0/XlXI=;
	h=To:Subject:From:Message-Id:Date; b=bxcpbdlZ2fQ72qufOMcNDFGg6LMT0AmBHVQi64wB0w3dnc+ZnKw6rCT9ZOGs9P7xreKhxnluOE+8phTN6Yzilpgtu7oWmAJj5817RhraEuUADsaADjNuyOIn+a5XgrccHcF1YLbMFI4PSz0jhwh2vjTKJ48/mSg/3wXPwHKfRU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5HyPZ70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5HyPZ70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD02FC4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728837953;
	bh=/Wxmh3l3hNLBVBpSOUUILPPddcHY0oDzORVKJ0/XlXI=;
	h=To:Subject:From:Date:From;
	b=A5HyPZ70d08NYSfLrZhVflyKjgZza11Ct5NkQhFdEFDSlyaQ2whqxsbnIGT1/7RmG
	 x7kK+Ahio96U1Vr8Ub1xya8n+QgydfbbyzhPIwspozzLYAO+fR4N2fBSU1I5yqn6tU
	 hGT+9WtbkAWSN63EgmvMFyc/PF4hms7L8nPFJQKwKU12vm7hCVxaAeixgJDz4zH2iP
	 RAU1EUT4WCeKjvTzKMmO7J4SEEZ3ytopVOVhOTGtgjkNtCzMHoP0X2MlxB2WV0TD4b
	 GECmLK6qPZWMac37mcTUmOfW5fIvSni+yh9Czm88YHdGyp1s/zIIKwp+HZpc9eeU05
	 prhfXxC2t6I/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CE0CF2579
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172883795358.21146.9582630156037871618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1241fe9cff9cd7d74d2b5eea2b4133ef639e1fb15021aaf63faea94ad8af9b53
Date: Sun, 13 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728837953
