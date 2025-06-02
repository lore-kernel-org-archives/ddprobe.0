Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25F313CA97
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748899194; cv=none; b=YIqQWm8E3lWaRChc4+LrOCYp0D+3YCHgMB4sk/zvZ7hSbl/7w9rEdXPyLPNHNmfLFQfZkZgi0H5InjX0hZ1LIZJWSr3zxcajBXI8xhymmzRcw50h/zT2Y/KkzrehfrKzxL4vJOJyYOkB0inBlTsltwYqeKQRjSpQHIaKwBTgCAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748899194; c=relaxed/simple;
	bh=4XAuCUfYXLmEzx62A1mTz4WwtkYtgJeHO4dTX0NUTXk=;
	h=To:Subject:From:Message-Id:Date; b=P38MKPyUuwEgaRqsUG/3I3wiPg9wgmn8TVhcraKPspmB9T4ByI3X9Ndo4u9WTvegmEsDmeRdAGA9bAL0A/uUxo8USjrHk3SD2esFm9mBDkbNZ2PMZv5snkbw2u8IDAHMpd/OBpHGHCuV6mq0i+7QtFY3ugp5gMTZdyjovtflTrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgThKz9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgThKz9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8749C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748899193;
	bh=4XAuCUfYXLmEzx62A1mTz4WwtkYtgJeHO4dTX0NUTXk=;
	h=To:Subject:From:Date:From;
	b=EgThKz9IIR6wTDuet84DtSgKllnqrTgbU/GE9TOfCmNTzD8vXsbN9nvNAegdb+sNx
	 Wwz6BAQDfTJoC7JNRyK9FdXZ34T7ezdYKK3hZs6gxEO+IOa4lkTFbSdOWN2kNTh3Yb
	 DWObEtYalgIiqxg7H8tlytodfeqMwbxbAQEQOOlQZJUKa7CxYhpdPvpiBRemrZJpf9
	 0dVAl4sU5+Jmbc6wBPbMSmW8C/j8eGU2zwYYdjrZCLIcZKuEBk2etGmpWfEyJ3YJjM
	 xC6IMdsV1wjesExsbNd/joHFZ2GeOVs8OKmfal6iPuJYTuXaVAOBKqMa4RjoW0lPUe
	 vY3YQsTIEAXjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8D0C5B559
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174889919362.21402.10789486487396944508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6176ee57def1f0e1cd0b9c5684cac1648b475c413c63b88d0ae83e860a168f8
Date: Mon, 02 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748899193
