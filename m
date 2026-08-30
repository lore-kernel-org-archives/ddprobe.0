Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F95CD531
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788066034; cv=none; b=Q5H1AGBlb91ruENbYwfxqYeWb8GxTsVCrZC7BRMYmo/x2L2FRDYThgeBplGNHD1VSNJIYPI74TE16V2b3odo9+moh/33uyClS31a/ULMjIBXKJaGahDkxk+YC3Si7+bu8us+zthxWAIo/rIFcXMvOxTaBIljgJl5A4Eda+px6WE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788066034; c=relaxed/simple;
	bh=fk5FZ7TeUNnQWiwra1cDd+hFpWjNXHuJtlq1i/ShcIM=;
	h=To:Subject:From:Message-Id:Date; b=OKM68trEDKtorHk8w4sg53uScxBE05couzYlDQAnhJdDY4liZ1wzM6F83osWgIthLb+4Hq+oM+Ll8SjjcD2RZFGnhPwc6lnePDTLb3sJYd1OOWYZap/DkOPAwzE6Fxyv+vEEEqe3/jP0JQKiGR4hC9A6DhDCuJCV0JMzpc9iduU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5yX3Wfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5yX3Wfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA071C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788066033;
	bh=fk5FZ7TeUNnQWiwra1cDd+hFpWjNXHuJtlq1i/ShcIM=;
	h=To:Subject:From:Date:From;
	b=e5yX3Wfk0m8g63NpbbqXkWkjpD4t7B6r9uGtrCyZqGozP2Az7LXpjAXlmKpqDaWxc
	 nvLGtTrsPUcaUo5hGLxFpkqliBo3we1AR493krzXKid0BjxghMghi7QrwnZa7i2jUq
	 R0c6EEdPUoqILx7m0E35LwrNlB8mq/mAB5jbe/IVVUWi9XzEwdJpNFrdrYowwsOTa9
	 YRQJqyOh1JZvvQJbU68xKl2H9PeXwfd5VLHkS0I53UlIQHS+rZLF+v06i8MnZQz6+A
	 rLHYAHGOPRBP9emIDbix1mHkRlvsy/PPsXGEVImfFh461vaah6zFlmrrY8z6PnDUm4
	 PU7qwBMkJiQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF1C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806603368.17058.7298704029532985066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ac3d7afbca18d19b439add9b7d707267de8c76f1dc5c9fc596b79e1fa2048bd
Date: Sun, 30 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788066033
