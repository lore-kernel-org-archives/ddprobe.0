Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D4B84DEC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715641343; cv=none; b=td2CnHiL/cTZzCmvnUiUX4LU7ZI7shLWqt4KwDkYaIALnxksTQRGz0tqbdTbM5RQ+HpfIjFqFyEm8cHBhZkheBrDW5kV+WwjvwFyw1KL4pXMt4fCNpElCGbvZKGrcag7B0dDdq6NS093GS1LqP6YbhBuYXItIYMSdYQTdytEYa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715641343; c=relaxed/simple;
	bh=pm968NqPiRnSej7HB+VlGEfddv0Yra/FGxmwyUyGKX8=;
	h=To:Subject:From:Message-Id:Date; b=TtxOiydL4zXwY5TBV/IRBbsIpOOOYfKPeFUhfoUi4qt/Ew19bHWWB8TVj8Stmd71K8mm5TDxNvt22rzxymhoht+5DRmcq+ADv+o/XtwDgToKbWojRL54ClhRe6+2e3BSIvJgbn/rU1HwJewluRTkyjaaQVAhzVZHxJO8fXzbsAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YXJo0HWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YXJo0HWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB9EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715641342;
	bh=pm968NqPiRnSej7HB+VlGEfddv0Yra/FGxmwyUyGKX8=;
	h=To:Subject:From:Date:From;
	b=YXJo0HWpwwxd++g7Oi6wQCXR5B1CTAb0WvrAwcV2ZDkGB3L9cQw8N3IQvlPtzzGFv
	 5sXfhkJXf1xyjOQZCPpMT0UiMzMBgKVjsfISd7FIM1uJZ5WA2gcSuHQgBr9SHneLpC
	 Vz69jRpM4M1ocs7RFXLRsskWFPAoQHX0pBeenUfUV/siptq7fDHBeInDAJBBNj4fZW
	 ydatZ1yaN1CGJ/lJghF7SJl9b9IRW8duj7x14bEeez5F/UFo4/bVIppQD1aVim3nVb
	 XrgjKBZMDv+4XGeHvIUAXbXvduNhU+E8cukuGmo92W8fhYLedp31z1Dy7OwcC9IRt/
	 tWT43k5M4nI0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94A1C25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564134281.6011.13553897888699447585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8400920a8e0fb8d53143ba4a9dc77f453b85e9b8da777b2775bc11c4bcbd7cdf
Date: Mon, 13 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715641342
