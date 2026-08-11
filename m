Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA82339362
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786479034; cv=none; b=XXSB/N+726zOb25l9HBUXfRVa/xXzyY+o4BhOBPiriX3oE+N0qrFuLAviwGh02rjs90L2KlHG0n73BdlOMB/tniSnO/fEt26DoMwvwD1Y6atr9U79MRdApeBOnQdmtDBkzs9lkY94yUscwFRs4g9iGKaJZnhkH0AaRetthbRLBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786479034; c=relaxed/simple;
	bh=x42c/kbykt2JtXXaHbNgFgnO5qqeXjc0rwVO7kYZFYo=;
	h=To:Subject:From:Message-Id:Date; b=Gu1+pYEqill0D7PLY9+raakKGVJaixpLmxXjzF403rkkc62QluqWCZP6yS5UxtKdXN8HVFjr02N/V/Gxa21IXlqsUGuYVZ1IEns0cQc6VS7QkGMJHVTtigkO/j7NIN5ibsoAW1jxHukE2gaY07Hvl5koV9/A3Gey+5MLP7kHdVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9cKm5iI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9cKm5iI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21E3C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786479033;
	bh=x42c/kbykt2JtXXaHbNgFgnO5qqeXjc0rwVO7kYZFYo=;
	h=To:Subject:From:Date:From;
	b=S9cKm5iI9eE0f6dhkYBGUrP3CqkC+oGOqs9b0MxBXzGDQBAF5vKBS1zyPr23w8N8t
	 dW119+YCCA8ZVlh0O2N0LOh7i3A/hGhwjeNFDGwyeT9ZhHet8nRjv7ZEyhVoP1T4lw
	 YUXlAC6PJfgtpm2VsWwDu0b7HCvGA2aJ4d1xYl0eO0O4c1m4rZ+RM/jePYSb9kanA0
	 20C0IITIkfA5kVv4dBJHLGCvp6VjdtB43+j1R2ePBXPI/9gBHEW5XSKbGbqeK6Yps6
	 gcTqkygf8er48D9cwMcH69OnOVY/vu9itJ9j3AkPJ0NPQWfRBbpsZbKL7rKv8NBu5e
	 CrHdkq40pjMnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A964CC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647903368.7532.7384728297110281805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7400705ac31545af3d2682d5cdcb326b63cbb9904e519af731d5dc4d63a2bed
Date: Tue, 11 Aug 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786479033
