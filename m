Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A494F68A7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790854234; cv=none; b=G92InBI1x+Ny5kzwkpSw3OG0sOV4ZI/nBo9EnADp2Qg0vXjNnog9lis8a3NAlJ5jIf5lxPLn26xA6cpTngFRxOlmrijkX4wU9sgr4uviVYoR3VcfmEqKGlr26WOnnpaS094JhEH4wBw4dSicLD8JkH2AkUfqCfwY3407KNFfx/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790854234; c=relaxed/simple;
	bh=NvGrPwLi4DHYIwuVj+fynjTa9YzWqnPsFb7fzE3HFw0=;
	h=To:Subject:From:Message-Id:Date; b=YJ0lpDD6W2PlMJzJFdRZu7JU8NuurP2RkFI9HUf+ckG29nBHtbqWZbcMWGTisr+8+UKr40f4qbsp6kdLySFTBbgJdkQ8WTHL0GNtTgXy0oMvdpJdTgjNwKxy6ofMWNl83LXlsjVT+MLhG7PV1KcCWTexkGBFWR9/bkwjyHwZ0Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2AruHXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2AruHXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF80C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790854233;
	bh=NvGrPwLi4DHYIwuVj+fynjTa9YzWqnPsFb7fzE3HFw0=;
	h=To:Subject:From:Date:From;
	b=Q2AruHXN+KeL0X4DKvK9IK+4M/1jUIHAR7nLhMwywrHBTK3HD/HLdAQBZwInZ094D
	 wejP0VapONvNPSUY/2MYGWVSx05kea+TLv5zevopfHLG0U5RUL3Jlvn40H6/1+0ScY
	 UNbrFHWJdRf/5FWYKR4UP9JsTvl7vOV4pCwrHZhM9eRRbLDeF1/wbcC5xlLAWw5jS7
	 fj/SkK/+yNLT9Q8Zru702fXduRCvRleYkNDZ4HIjoZYOb97hMrKtA9lXpwlzxJlfZa
	 7Woe3aYUIz1BnOup7Q8acSh5GkAmuoEccIeiVl6x3Jmsyom/t1Qe6YhazD3qnGnab4
	 J4BVbO5zrSRwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8DACA5FCB
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085423368.32170.17250788535710478697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b18767431d2ca3980bd647987d17acec47eda6722d05d6f9c1b8beec976be3
Date: Thu, 01 Oct 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790854233
