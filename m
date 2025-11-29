Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E75711CAF
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764384774; cv=none; b=rAf6xi4crsY0DrlCgEdqzZtR35HFup78wrALdAdQSEqIbRhJLFmUprMFUwhPNi8Qw/YAM4z41wQNuNQLfQP0Drl5T0EqE7ZW4jD/zdUhbnVFYrMfHXMa3JTvof4NYT8qYu8708w9TQfYrDrNTDii/PB8eF953wmLwCqite1+QbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764384774; c=relaxed/simple;
	bh=VThu5uzAX6/qKYuBzRA61hBgF3jPqkL1WOkV7BMNwfI=;
	h=To:Subject:From:Message-Id:Date; b=qdnrw9tTpLf3rn8CI9AJkZhWY+pV/B2CH4TROIU1VKUMWxYzpBr4MAMXjikJhpz3Oxvh05jsyOzXEVRx/g7+1jdC5edeD3SHpbGPn0DEYoknWB+nVkEFlMUjZj8PobkjDlm5Z/pjPTnpO0+BEoy5w419A3OwqoQPc0qakmQkpf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s0YyFs2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s0YyFs2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9528C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764384773;
	bh=VThu5uzAX6/qKYuBzRA61hBgF3jPqkL1WOkV7BMNwfI=;
	h=To:Subject:From:Date:From;
	b=s0YyFs2kqpD68HrU1kuopGPfDAJ4QjWO6cCVeToUWBAX6wIZm5aNvHxjW5C6h6gwa
	 GYrOt2gRLjgNX3MomLnBYsXqAHxVpz4mF9eIJB2Dc+sO2ZR7ikDDpIciyjNLUvBAdW
	 bzNoyHmDN7NjHGiCVMK88B7MAruDwOwdnD5m/VGjw1iuV7llmhg11GvdqkSvsl8XO4
	 YFHuLz5ficPa1ciwnkvzvohIIB6rM+xbwDMuPDSStuX3f/2nTp4ZWjtgFZiMF0udzr
	 WH1s+SbJCljr5efukZOh042lfjY9CUb8ftP1tGaf+5OaGUnM3QB8Am4H7cHDUPTGuH
	 jSfDZ4pP0CA8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EE2D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176438477359.18996.17746487353866890762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e1d895f922646c84365906e78e2bffd59b2a8bd295eca4a6bd90e00107cdb7
Date: Sat, 29 Nov 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764384773
