Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F7D285CA9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769172234; cv=none; b=j7sAUraI2Ac9h5EqyOUTgM9wCNiME2ZSTf8/IU5K6nO/SOW69DQUnPcwhmM2z4YifAa9JwxepoXMl+Uhxl2y/mrE/Zrqr/5S4lv54RM55rYLEeJIPcHlfrGiCUvXE3MMWCpvhx1tUXYgZMBunzR6jw8jE45CdWIE3Paf3yL6+o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769172234; c=relaxed/simple;
	bh=8hk7jVSaQj5QRENCmU9bVxnc4yFJ/jT++M1uaMWs/jg=;
	h=To:Subject:From:Message-Id:Date; b=nvLeAWO9iA91mEAA4zT9S+8PqA6pfzS63mN71x/BM4cNBU7TLL7xAeFceX8CM1lH5vOT5eOxEpklieOeUJUoFxyE6WTEnWtq9s3/yqYiggvMxXBefsWKdE7aS12d17PvqWzsjLXqhSYpM3MoL5m5h5QZ6qQ3jaARp19KOMDgmG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJoT6wrV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJoT6wrV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B06C19423
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769172233;
	bh=8hk7jVSaQj5QRENCmU9bVxnc4yFJ/jT++M1uaMWs/jg=;
	h=To:Subject:From:Date:From;
	b=nJoT6wrV+PR/sTI57c9yPDx2f1lB14MxpeeDCAE8wgJiXfGpa4mrwZ8IWaazK6Cmb
	 hpWqjn+uFpC7uUny9UQK3msM6CX2eF3QAhsdZllK1CZy2fvhuTjVG5LECvfQA1sjUh
	 SH0aB88BnZrXpI5gfnk7O8BOKr7yJQ4gk/8oRGTPxcYouJ30FlRntHsc7ltwsC7SPK
	 ohKCVNZQhc0c01orcnfJrKhaW9o9i4v20bCFDpb0EzjZnsvS0sU/XGCEGfxpOGtzJ/
	 UYnV2NTeknebRLayasZXUTEGNS5Ln0iVxV05/jHuhSOwXlJZZawcHvC8BFpO/NJf9f
	 SkWYl4vBaHixA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949D5D6CFA7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917223359.27188.2205963042670973585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25df112bfa444ec9222f98503288e3b6931a4df4cdbb459d88d5713b84d3df7e
Date: Fri, 23 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769172233
