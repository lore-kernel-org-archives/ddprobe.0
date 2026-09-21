Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6003548D860
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789993834; cv=none; b=iL06l9pPCR0CNpd7mYQHSgEyrQOyHJDM8MAU9aSLxFPU3IzxJtwdS2KfTXp2SfxOuQBIbg7J9f9kOHljf44SoTaGsFkNakmMB9TCdDCo1YW5ogC2qRKzbSHdIoHD/XlSaXts8Pgf1N5qXM9p7l87sR7fbMQ5bnQzc4g96MvP0aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789993834; c=relaxed/simple;
	bh=IBfH9faFxvTybnLLJ5TWbs75CeOxzucOSg+OpkYXXRg=;
	h=To:Subject:From:Message-Id:Date; b=KH+qMS+zsbZH7DJd9cfThTBh0m9/X2o2J1+q3ZhKDCPJ1x24WM6x2r/HyW6LocV2JgmFzHDO3tJiADCBuZnJ1yrew5HTC1WOiIwnBcR9Z5/sQSNY6s/ysbdYmJvPRTCd/L9FPID7sPKfTS0sAwLy8UC2RGJoMB5CK/7wMu/L+ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmOa8Jlp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmOa8Jlp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0A0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789993833;
	bh=IBfH9faFxvTybnLLJ5TWbs75CeOxzucOSg+OpkYXXRg=;
	h=To:Subject:From:Date:From;
	b=jmOa8JlpYIbvueOk/bugjYD9it0MBvK0Lzai1UFa3w8K1RAgTg6MWXwQucoBmEgSk
	 rjxA9GaVRSh2w1P5ysMCZ4/+5ropcYOdeIGQQ3gbkFRkK9hs44fgAk7FNjEKe3Cmrp
	 2gGVuZVFZTMZOV5LDT7ZPS/GWuZmG//79Yy+mfZXJvOWDRWWYR7jFY14wxRU/DptSI
	 9sPAi9qVr2oO9nP7rdKzG/Dtt+0OBo3ZAMfvgBlqJvvlSumCeJ0eyU557Q0oFdRtAw
	 VVG9AbyReEwNaPSAiEDjOlg1mQb9uErx0eD4FCUNyeLoG+qzaoqkf086Vv6LENgc7A
	 8MXBwkUeA4vlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB040C982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178999383369.1462.6536483475162576461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b68ee56d845f3ea00546e9eeb9985210bf1984fbb0b7ce2fb321d47b682c79a
Date: Mon, 21 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789993833
