Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BE914F70
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778439634; cv=none; b=qAqhpxxNzD1SWgtAKdjTtUeIQ2NSbn11iC6HTmxZR9pBOT2BHZNQRKM/yeDIiZo+4rx3vjXcbj+tc9aItb0sX7AL15NZoUcUT7EZJYCqwhtgZurUi0bp1zU1VH1uVxI0y7uyUUBzDl+kUGtzn+rhTmDDL+42YjvLkrlTKa2LXyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778439634; c=relaxed/simple;
	bh=7C1LeQU+dKHXM8wXRdB18CuvETI60eoprD+3dtgqDXs=;
	h=To:Subject:From:Message-Id:Date; b=uQmydxNGep4Vn38dO3Lfsw53QAJBMyNV16adNwuryo48h9gjTKwtKqTuZFLQg3TZTxepdpegqxrROoCH5A70AByo8d7ETt9MWQmYIkC7B5SqB06utu0GINjpZtEMN+tB60Q82IzI0lrw3vyylC1bVUNvJKwSyXeQlGfDH234RL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2/uvPYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2/uvPYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFE6C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778439633;
	bh=7C1LeQU+dKHXM8wXRdB18CuvETI60eoprD+3dtgqDXs=;
	h=To:Subject:From:Date:From;
	b=k2/uvPYojeMF/7spJmJ/GPL6r2vTgu/Y+cl2UvwQ6OUq2P7woTsUISdVcBtFu1Qko
	 64fJD3DbOb87hSZt/SuTgS0vFYOA9Z1VJQAk2RvcgoQDaxHK8k1a1Wzu3SmnUxyNJN
	 emxmXy9ipCUIH4rQTzZpPHEY6U163pf1SWrgKCDwAQpObdkCMDQJECe6Mm60eQf50m
	 BqGeNTr47xTi85R11eKs3fgGqVAmci3EE/iPnPQUr4GyJ3BJi1KXuNmY4Q1rM3MQwR
	 zfg3nd6bUbdIrt9rWEu4vp3GTzLJIFBRPDWZn8jNxpaffifueNHUxpYCJMOZ9AFBKr
	 k8iqzGTzu8Z1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB63ACD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843963369.32058.7757108634494522654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3612218aa1f881beb9d8e72af1ee350d5b422b502d0f6d25900ac5d8821d514
Date: Sun, 10 May 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778439633
