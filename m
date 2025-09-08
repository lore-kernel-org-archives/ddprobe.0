Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255FA1C3C11
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757346594; cv=none; b=eY/IgDEwCkWPKov72ZUq5HvIkQNVpOA3N9zJLv9b0tTPUlyR49fnT/M8MzWoZkqfiX/b3PS0rR7W3RMJ/xmQAz8UVS+xYhMkCjyGYEs/DpxpvqqAbSQY4jEg2ht5r2WU0rcdOFRMoJ+nxA4cjROW2VueFMT+7MXCftnHNWQeyhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757346594; c=relaxed/simple;
	bh=FW7MGPDhh9hvTyonparZMDN/hkoUMoo9mPz6WxHsQ9E=;
	h=To:Subject:From:Message-Id:Date; b=SgWHna6QBQmKdDSYpmxpEZFxo16H7JOVAlu3SWA1yjTeVpC1TuUuREd0NOlZFrmmIeqrqgkRrCUzcnCmhYeLfRb0SkXdH50Qjqp2yLpiHrWY21sB82KGdWkNwnIGd6wsiMEK9/vMMuy4mf7xGg2C608/m5WaP9uKPJj5QgVctPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrkb+Rzr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrkb+Rzr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A07C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757346593;
	bh=FW7MGPDhh9hvTyonparZMDN/hkoUMoo9mPz6WxHsQ9E=;
	h=To:Subject:From:Date:From;
	b=jrkb+RzrR15iX65WdChaIqHnk0cp2ukIVylsQmH50e2+oWmj4Etl9XlbiCWGJvSrw
	 VTnuGHB9/A0ef27mr8eT0J+Ktvt+0rbYTcf3UGgmXhV40VTqBUSvTBAXtPNmUJQZW6
	 7BYj/LfcJmJVtVDz3gZxLD2/H6Nt3qrFyYbXoizM9aeSTwSwcppLmryS562vbBmWk1
	 asRCidkau0QzxQcOBWHSi6DuovIAsr4qUnzE1In/75yC6HjfniO55HFCZtGoXdjI3v
	 T/4uRFO+aP499x4y3t7+W/3V7lQNnIxInzwGsumYPyaTimF/5EYVmLlGBI0JVS8vUc
	 s1wI5wFzR416A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B78CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175734659357.7405.1546460904265235657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ced5f8d8b69977a7c4061b37545e02224265da8b10597194e73b9344f8a941e
Date: Mon, 08 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757346593
