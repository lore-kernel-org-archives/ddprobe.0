Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F97A3E2767
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788679235; cv=none; b=o88J3l1tzNho9O0xXIRDyw6CeSEoIWJOiErtu1NRcXhiGb773mjuQy+koP8MnjgVwPeWwOL8SGRMcyaH7au29UV+GnAxlk7mnj2azZna6cTDxA+OAAiunA+BuqGwlRVo/3HaQKDW4WLDDqJjVGhTqD8esB0O7RvMQyFQB7f8dIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788679235; c=relaxed/simple;
	bh=gRZGjXGmjANZwsDr7/vZp6CBMKVHNFP8FZQfnkCYfWM=;
	h=To:Subject:From:Message-Id:Date; b=uMNxllXC0lGRJ8Sv1yW1Ksz1qJXvm9MUYczljnGFqtWHEN2UBb6/AHof0VmhT4m+6d0AV7xP+B5SQ6cc3UenDhE7Vx93TK07cHB2CU0cf3kvHuiI3dc1jUVLLuDw6VWq2PnC1rPTahNjP0M8HJ+TzxEgtYV7waJrf+PIC/tnU4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9YbMST7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9YbMST7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4871C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788679233;
	bh=gRZGjXGmjANZwsDr7/vZp6CBMKVHNFP8FZQfnkCYfWM=;
	h=To:Subject:From:Date:From;
	b=X9YbMST7VWzLHc/9M3s/ggprOZRxIqdRXJlcd8QzYOaVTYcPbqCyz7EmsbBDjdXiB
	 kBghCDqrzLiFQhhymhZfuZzR8zFddcyNrOqw7hhhZ7uwkz7Cx2GZdZtzC8TWgVrFmX
	 Bx63XDpm61qbnIt+NIAgJeZVwTxlFbGLx4+IIAtCjDjW5XLNwGRP6nng0dmExOgIX1
	 ox/gOF0OsfNRzYfsK/tA83OKbUamMZbYj3v2dhX0rrFeSPbPw6TKjnviNyyiNLowA1
	 AusLOxgH132xFbW9hVCtcoyOHvknqSiDfCZTG/DGDo4HJflkWHFXSNPphNthiZylaB
	 NqrXzcAzf1JQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1759C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867923369.13781.13025530409706375272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9a592b914ad644aa6ea2e92d44bb5120fda29f0cbdc450a2c413150c8aaec6
Date: Sun, 06 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788679233
