Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593CE1F1534
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782499714; cv=none; b=BdKFQ65iB5Skczdzo6OKlfIkq0M1+npqJy6MLju/UvLB7ugMlF9fHNkbgBrwy3V4tx0TcI4x7sQLrchgYBkkJqufFOdDwhvTgHVpYfhGBPR8EOOLBcsTtVSQdBuOdX8oJKN2Dhf3m6bUbx+A1cLjoojeh7b36jwmrkGrO3j1sOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782499714; c=relaxed/simple;
	bh=xA9hgn+q/LwfgKr7UK5fGzZzie9zCHArKrUfxK1NE7w=;
	h=To:Subject:From:Message-Id:Date; b=X6Nj3dU/K9y3vZ7aRSKFjLTMSB/lKHxdo49b0bSacTN9YiuvYdfmTIyKFS4yHS8agyTwTI05oG2rNMBBeC4ccu1w8yQyEj3VpA8qRRQbWX3VTLh7g5ZyYb0uiHwzfPf7ikfptDnNM76BjnFK1uirCe7vFIR6yBkXh6yVDk4ha4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwQ8dsVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwQ8dsVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD621C19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782499713;
	bh=xA9hgn+q/LwfgKr7UK5fGzZzie9zCHArKrUfxK1NE7w=;
	h=To:Subject:From:Date:From;
	b=EwQ8dsVnkemqgM6h/BgkHtSnkBhA3HkYoNEvL/Aa+SWJIIB8NBMu5WvEBJV1qQpMf
	 VqVzSI8XUFwKGySB3zj5OOc85B4teq5ZS2WWlBhEIbZ4cGN7sbO7HNkHWraSZqX9h3
	 flyWdWWeBc0m8X7vmFGHvelBJPrgocnr5dW8dH5alfU3YjWB+OvTtPCwWpFsjDeGDW
	 1ncPTDBwG0xrDHuTBzBwLvA3PtN//dQJObI7XLYGpdJyMzbmM1Xg+mofvSWUin7Cc3
	 0UsC1wBux0LShkKFzQPGuiqN1QoibmdHzMtoE+wZTexdxZFBQAPJQV24nifnztk2tx
	 CzslGVtJ0jumw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A60C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178249971371.3155.11600269125296208348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd29a74002887af1d26d3f67af089e5df48424c9aa225e775914eda729bf4197
Date: Fri, 26 Jun 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782499713
