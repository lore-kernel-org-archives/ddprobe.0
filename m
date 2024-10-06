Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33957AD55
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728206754; cv=none; b=uCzZWlcmPL76Pq2hn5YUGKD3HDfyY5P9MBeBRW/1IZ1ytjPZltSt3UrwOQ3ft6wAix57UiECEBf8Qt/+OlnEKUpUWekx+qyT91xU2XHoIH+LLhkJX1mtoGUS963hdow4dfqLJtpjwU5iq0ySewEikf5xkyEt4ahin+W63B9Kkn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728206754; c=relaxed/simple;
	bh=azqfWjBrRY4yFG++jFlHUGVIpHNpLwHwICOacO+soRE=;
	h=To:Subject:From:Message-Id:Date; b=SYBxzf7W1jr1wBaBn1TFfdDDBMOD85WhjflMjxUzbCJhLllZYHFEiWSdTfAFQHeAjl9bOV4893m6NkpdydEwZ6Zo+njW9/JsprJGm03vYpR+xQnxpXNCJfBcCqEGgPKX0Nbn373aUDZWPjvjqDYTyEDtVXryitpUwXYu16JmXCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcNY107b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcNY107b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A8CC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728206753;
	bh=azqfWjBrRY4yFG++jFlHUGVIpHNpLwHwICOacO+soRE=;
	h=To:Subject:From:Date:From;
	b=dcNY107b7ovGD9GFl4ybNEBahPiXfhfoww/QUfk9fSMiPnnEV+72ZNKQXIagKUJ8h
	 Z5n9bfX1aq/7Oq9T4c/o8hSpjLK+g58W8LXJUVNvAbwRb/HhFlk4pZcyqTYs4Xznz1
	 jiAZTcAwZguy9cSa/3I5hHw+5Tguf+65owru/xJebWmh592ifjCH13BjSdoW6cSJC1
	 MMdwOmJ9xao1O7aagWuPTrKYQoHryh+voejgFTjlScg1rqIYuIocu9CgkBW5Pk7hqV
	 +gNhxA0a4hSrY+Bza8RKPrpVK31tmwrCFzmeJHP6fYpmY6akqLvj3rw0kTP5rUHwso
	 qiq3KTB5jqhKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9236DCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820675358.6834.1711871781516247861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e98870d4ab68849c3e5095d8371d3e7eef6f921a69122682a1fed88424b48ac
Date: Sun, 06 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728206753
