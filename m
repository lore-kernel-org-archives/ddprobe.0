Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4377B284B53
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749199195; cv=none; b=W3wxO9Cz0J5ie9zuc/Yr7Kv8aVOaa208MW5BtNMjNDwJiU1yFopOYuZJqtMGpGJf6wdAoB6kloGbYaP3U8iqiPg7HXIiNv/16ld22g9u43mmrWmkxWUxjHCTz6fj3zjHZQr9hLV8YEnUPkUPqMf71hdELvy3xgmgrOKqICcTq/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749199195; c=relaxed/simple;
	bh=+PtdNmQh8yDAsrOOh95FSI9XQoUKkDc40mb8HszLh5Q=;
	h=To:Subject:From:Message-Id:Date; b=aT/42DtxPVhw8oNuKZXZrMhSPdfeUSJu24sYJXgh2NCFPiWp4OTSuqjFg1vh8IZ4D9HrYWcxV4tBILmpSGQwdw/ydYz0T0dyiJ3OsN3YxzdamF9KFvwPnQH/FK9UvX9wEDivCqh8jx2bzCTz2BuZeZQA0WOrdd/CYaXupLyunjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeaeupQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeaeupQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00C7C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749199193;
	bh=+PtdNmQh8yDAsrOOh95FSI9XQoUKkDc40mb8HszLh5Q=;
	h=To:Subject:From:Date:From;
	b=XeaeupQTSnCGnAAWWYW6TqiuEkbGiULMmFZMnR2UXJ4Z27GLdVGq/H7J1mmYoj3C1
	 Xc7EwVKUIPCzMpjP06i+VntWe1QCtRPVssOLjuJOTk96oa5MqVCCLwieYF6QigxM5u
	 Xgf6YGKDWqLDlqqo1UkvrByHTAda/iud0WS/jggF0V47V9qMu0ZKy1EBszApx8GWCN
	 4PVb/Q31vlaLYG2i2LP5oht4af7JKXZtMFAXza68oCjrIiELzUHz7hWzv4hALt4FhJ
	 09GpauapFGldsY5P1oSH+9TjMRCwDRLmWPJSxfNqRqYzn/KbVO3bTEL0dhE5qYAgkM
	 XakoEgtZj0dJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024EC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919919358.25202.2981444906341344016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b2c5e2b2434652f793814e33123f777bc9f8e6926338d4f501b0596b43f026
Date: Fri, 06 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749199193
