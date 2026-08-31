Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F20348C66
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788173434; cv=none; b=O4i+3JngB84q8KfyS2tqq/TZKlfjjdjNVmdV0IHdAbkjgdwvPN3BlgiuvtF3j50SpBEMsTbAsN0d2VNw9mDztzFVvjwOQP0Px36uEPeXteQX6iH5OHVbkiYzxDVJ35J3JOkaMUmO7oylDMKiDvcKuwhvYiPxdpWKhR7jKJSXM94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788173434; c=relaxed/simple;
	bh=PR0vj04tUSoEGtqG3omvwDyrhwiE2UH+nEmENUfQFAw=;
	h=To:Subject:From:Message-Id:Date; b=fKYLy5AClyUVe8CCyNtRD68t8UY2oks1vPRWo1n9VoCBy4M6bPlgwmCoOhGV8ZFeJBzfPvmJfQzQqsTfRftdL6qxA04Jsa5dWFWLDR/LR7nA5s4GfH/ZLgqcqiKL+jYV14a2mt7HN0435X23En1iT+M0aT/DZGivL1ktI0leutw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQicgUo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQicgUo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE55FC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788173433;
	bh=PR0vj04tUSoEGtqG3omvwDyrhwiE2UH+nEmENUfQFAw=;
	h=To:Subject:From:Date:From;
	b=hQicgUo0vbZzr7e8nw6RxvO9tQTbCvnYegh5cc/uinh2P45k/lCZdPS0gZEe49RkC
	 LekRxus6PVhPdse9p4Uc5lX+LFAHrzcT/dsNffO1599hnJpl5cbGz1UjTsBvTS7/hm
	 NICZP5GR37fK9xB8bfypZdn4VtQ0XaQBxpo6RT7aBaeHx1FMg0CyKGKwEPCfAneS3f
	 +YC5wA93og1L+/2s75YGAFE8Qk5fUNZMKXU0QQF+mWKGUdctzHOImET4+tCPlAsu+r
	 fIGu99KndolPV8ybNKgrWOGltsP9Nad0yEM9Y4h61VBeJWXLYXYuk4hqIV5hTkS65q
	 7ZzYDcfd7IffA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA859C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817343368.11753.15831026857258459450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a806a43102c1d96c3cbead0297a685418e0585922f8d4f8828d1e5cd06e0a471
Date: Mon, 31 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788173433
