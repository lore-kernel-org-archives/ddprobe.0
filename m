Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16089134C9
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710147497; cv=none; b=n6zoG/ZwuRzk6Xfcj0u4oryI39bJBorfvsruGrmf5c4WTRzApB9rIva1bH8V4wp9P/4zVHh6tcGErifa2alJgXgq/coP266BVa6KedN1F1qHk2FCuupY6kDI6823gAeSd7A9BH1YIE70rvfOV3bfLgM3ZAulSUXd2mzqkz5Cyoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710147497; c=relaxed/simple;
	bh=hNRRC0+McakYj8XI2PVPw9+OCA7vF2swIXoc3pSBqMg=;
	h=To:Subject:From:Message-Id:Date; b=W7iwQgNfosraxbHI+GdcrSMVwHdz85AdbmJMTQdKV3dS67wkzMQZZ6yxhQVVz35h3SUYpJ+965nipyoLTI6AArJtrS4rGgruj7qKyT10r0lWnjyo7HNfK05i4VnN6W7uBGpltGUyH/lLoJFkwMWP4tsfA7zNbkjrNwBtXIE4s8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3mkxhND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3mkxhND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF2EC43394
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710147496;
	bh=hNRRC0+McakYj8XI2PVPw9+OCA7vF2swIXoc3pSBqMg=;
	h=To:Subject:From:Date:From;
	b=d3mkxhNDwlGyT81QnmD5RFdYqjf1NPMnwpMICoj7yqpd8bJrsBLGS1ApIgpMWTAMT
	 ChhdBW8lD79CMIwVCJOqKfEEyPRl/9TK5YJlltLQH85sSHDzQNCY+m93MMG5ZU7IA9
	 gRTZ9WXBJLSIKq5GeKxPGIHRks1rNWNQpuQ3y+TAJKSu5qDjlSZnhyVcdC/6oEi9RO
	 IDl41MzGZZ2boPZ48oi38Xb3CFKp/TXwI96Or3ZyAnSxm3xTX4048GoVbjvvWUxpjD
	 b//mx2hzwyvnGDWV6eOMKi+PsJB0wZ9oBnBGiRiccGmhzMwBl0sVb7+atAizUa6nip
	 4vDJLXtcc0zcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67ABBC5475B
	for <ddprobe@lists.linux.dev>; Mon, 11 Mar 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171014749641.2746.3192284300935155440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e321916ebfbf8974547434a879f8f3d58a873fbed4c43b14b256ef7d20b09b8
Date: Mon, 11 Mar 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710147496
