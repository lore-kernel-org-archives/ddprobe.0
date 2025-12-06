Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7CB239E7D
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765029774; cv=none; b=SQwrLqhmqVBX5L4XbZ2lljo4bUpSJNfpZvqO1mZ2wrEDEpqG8QVRX7EjhOlKzbfSMut4zLcwYcipgwfyJ4HSlcCAIHe2KyImIqmYiTBhTipq9xAHu+A1gSyzh5aB4WE76ADwbC9HI5iie7VHiGudj5/upsA2L1im2tntiwxrO8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765029774; c=relaxed/simple;
	bh=OrCnBP/0j5K6mj+rx/z8B2e+TdntLPsCSBuNcaBDZh0=;
	h=To:Subject:From:Message-Id:Date; b=ISLnrznGT4i2BIV97d9hN5TVKzD0Mlq4OkKAhJ4x82hYUDGOLtgJPqqMAVcD2aC/bQX3GqF7AO2SZq79iwwGChfvYfKguGh/KxzOehqJVKbSbah951oj82n/O098MEjK0qHQQ2bNW1xIoc2l3BYe7ZOJx6f06QyV1GoNbWD7utA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0Y+jNPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0Y+jNPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C84C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765029773;
	bh=OrCnBP/0j5K6mj+rx/z8B2e+TdntLPsCSBuNcaBDZh0=;
	h=To:Subject:From:Date:From;
	b=d0Y+jNPG4zgTW4l6z9CqqOxWuzt6UCMjBTCc//4bcZklgAHT38COupxENGDJnFQdl
	 WEYK7Bxg+bz1fo9DosF4iKivgyatwB8Hrk4qfeqGjoafow7mdw1ngzorKfVc6m9y0M
	 99r7sIMH5i5sVWtq/g1UH7t32zlvRNUubMSsBS8lp5oaAuxDDxW3F5Tqe+X9+1vPYG
	 aoiJY/i1yLr5NHZZx5B5Jkno4joqeXNDBgXeSi7X+cl4EISpcwgPGvNOtH9Xnf3HBS
	 z2f7xyXQoYqrS6Uoc/dxlWBdo/6Aae8bTA18PozNk+1Be+NgffxNlBVTuQN1WA3s+2
	 IQrlihjXVpDdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B69D3B7D1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 14:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502977358.31639.9902030271549454577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b4137acf1f4d37211d18d32ff6aa84e49dc409623ef978bbf638af86a15655
Date: Sat, 06 Dec 2025 14:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765029773
