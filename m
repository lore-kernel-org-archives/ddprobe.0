Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551E1353A66
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788141634; cv=none; b=mneHGKGe+x+qm/TRd/JgZz0CdQVhvN4IfsqG67KBb1Fr2wWzAFLlHVRQx2ejsfXQ9+1HjHYkxBHEjozYHO1Y5DR0aYQ9O5Mpd/hmB/N5LoiFDI1Uz8usqUc91gsN+gPMtqyo4he4Vv1LTfWjBNSrf+veIy/A7NVmD2Z99qBn540=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788141634; c=relaxed/simple;
	bh=ur84E2300UHA3bqO1wT7s15dSjgZ0IY/RQenq9NPKcE=;
	h=To:Subject:From:Message-Id:Date; b=o2ytmcz/XgRfZCG2+uKZGFUwS/LYMS3deYifJQCTuc8xR8iTt1z/sAEAGohWSa8iqZm3hSY5bWt4fhV3x1N8wPQ+WF02A5IaTOdTHa0xexPlSYVh08DDswxw8kKkY/Th80nZufNIm/wtwwBeCqvPFAOqEDLyDYasIw9EgaxRns0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SkZUpMKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SkZUpMKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2D2C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788141633;
	bh=ur84E2300UHA3bqO1wT7s15dSjgZ0IY/RQenq9NPKcE=;
	h=To:Subject:From:Date:From;
	b=SkZUpMKVf8lacpdwskPQ/TCNOs9FmKPxc2UfIErG+pMLMV1UCcg5f6XyKnj7HmACC
	 aXyhHCtVjMtYkeD+d6C3a8tPMm+WSFDIajZXIAsBmBnIdCzNAu/RSSoLLKwbxF/0xh
	 FbocjOCcjSc80nVYAShxuJyNKVG24oda7LjKa2/4YBg5DQsYfVU14sYDBUlTQj3U5c
	 OUOANPKSGgoiAXvie63z3LIX2I27T0Jp7m3EqCnM0h/5JgRwLEaQzF41sPPz6YVBJk
	 elPOPr23YLdnvUKD6gSzJgbSJQUwpbSIZ2OQC09sVMdhNCCDUgcJCXAfSt+obY4PFh
	 bk3qevw9hTTdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FCFC61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814163368.17990.12149287654695708270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8430b6b696479ce668cfd62dcc463c1cb6d9aef3eb466e2c58a053255411040b
Date: Mon, 31 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788141633
