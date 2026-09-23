Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93771483829
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790163034; cv=none; b=uS0s4mWvTZwb+Tc+MtLtKqsoPZhMHBd8Z2VFwFf7KRbwqIbq8qiyY9h/l/giyUSfzrpfXgSIdXq+IvouneBJNrpq5zkOmEMfmHUn+78/KiC2N7eYAPhD/AvsfUdtLIlOw+te5Jy5Ugfk1ihe6s0G6HJRjC4dSd7d+pV1Gp2VR5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790163034; c=relaxed/simple;
	bh=c0sKyiu++sZblVVFXg3n2HjImR5OQaIoS6fKCnxqVJ8=;
	h=To:Subject:From:Message-Id:Date; b=ehwyOrTiY5jeZML8171u0WIPbhXOhPOwlz4nG7s/JIkEKaPYYpo/n2+qULwOJHfpjlj3A4Db6CzhJPcCeFsToYRtdcEFl94pAnxmPouxoqrpc6z9cVUqhkfyPzbOCxcPCHgz86go/ObbCkqxKNQoT6rAQ4rWD9SqzejvOj9THm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvXMqr3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvXMqr3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE1AEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790163034;
	bh=c0sKyiu++sZblVVFXg3n2HjImR5OQaIoS6fKCnxqVJ8=;
	h=To:Subject:From:Date:From;
	b=tvXMqr3ZDuWjllmAwHFrnL9V+874DVi19AN2FLPl28VrVbG9qq6ecdNNzuHi5urI7
	 G+42t7r1abTGMC+rqMUvTuI7pcw+usHSNWSdIWQF5D1mFncY6+uAP8UTplK+udLV3Y
	 BCbVc6yJeVzzmmrpXI6nUC0XeipPuBW0/g/cnD5biaXOW2c8eWw6HH1ja0pbIbf9PB
	 z0X+qYj3kfPCKHwIbL6G0I8hcYvk2lYYO5boBNr3+VhXUO5l29D4or2W6DyqhEtQ6k
	 Jp1hRpDV2Ojbz6Cp4tPa1ViUgQZnIrEXaZWd37+ndrHeRZ6nMVjk7WQGtOmyvnN4+J
	 aQDz3UMkl9W+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C285EC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016303377.19046.12901377797331979684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad05f3d45700a05e8fe614a4d7557a1b5ffd0e36e4682729652404c525631935
Date: Wed, 23 Sep 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790163033
