Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04E93D6CC6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788985234; cv=none; b=BDCbK+LhNbaWveY6KNUQphIQXBZgjxCYwHhb5nP/jyNEC1vcZ2b5DlCIc9sjf9WSmIi+GKp7FXCNanTD5DWojvRloMSFIoWyxgFrwqVcQW8AhAaiGmy6TcBVO6YHJGCLNtFfCJ+XLa/QrUnQtiFpBzcywoYwafcM2sbQCToHihI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788985234; c=relaxed/simple;
	bh=ES50bdu44o49UmBbprkQPoBA2PGFjz0iWKLjXCW9Blk=;
	h=To:Subject:From:Message-Id:Date; b=NadY+qoDqOWzNFKts+N0iJPUf1F0Y4uvxDIJI6dFK4o/rA81AtOHRkiDjSem9NYToxQ6t6Xh/vglTABlvaoYVl37pvBGvaFFaPpNacLBPRkGEkUgAnyoWkCW0voDjcYvTOgHQeQwQhJxBe7yyKiMMvgCik6qTKQkQ8ICabF5PEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQPn573/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQPn573/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D355DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788985233;
	bh=ES50bdu44o49UmBbprkQPoBA2PGFjz0iWKLjXCW9Blk=;
	h=To:Subject:From:Date:From;
	b=UQPn573/gy1L2g9LEt9r8VZ8lDaDl8HblniASSU73LTO9AER2qiXwTDgPp8j47dwp
	 yrGNUZXQhmUiD4jYgC9UjzPZ8sspWdXXSpuOQ30jdzk1YiuHP4zefgz6OS0O5gyTXi
	 bWiNeQhGMziRq1O1NiJSHQbptXBPCbO8k5OJixQ581ePeHoxOgQPXlhoZhpiOlHtFH
	 SdYME7vbQYpTqSgdXa8OnC59KHh+t5dGRLZvsEW50NA9joLXdwKpU80cJP36fNHgZ4
	 YdLxMgiGklMjm31Fof1DhchGyMhsg4Xb/kXVIdFB2B0N9v8F721Ge8ZdNLqyhJijFU
	 O3Y6xMz/SpW1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE805C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898523370.30856.5742190001671464896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6fa0c0a8425f16033ffc48293a088af9c17d4b73c6c71ce3a02464f5a7ac62
Date: Wed, 09 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788985233
