Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD642F3C18
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790132434; cv=none; b=sTzJRoEwWwJcP8TEX4moLbEcEi2EL2W9uZpQpbKTuYCzw8Gz4uEF1I/RGAvtj1469cX3b6lcMZXlJxRmR0VSKWaUN3EfuzJ+ZHWBKG1dnPHIVidaSNUxOqBbhTAPferzuh4ywoJeTFFuGemXjhg8XCkD+wT+EoplSNxGp2y5Bqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790132434; c=relaxed/simple;
	bh=2OH/cFYFF+cRkOWgBgKi7Ly3XPoij3xMQ8Dr8Fp7N8I=;
	h=To:Subject:From:Message-Id:Date; b=ctoi6pL48+DYzh9N+BIHoHXzhICCqCT7CYHVFCteACwAHP6GBO+P+sifYbI3HTYsNLZra6+Jp6M2QjL73QHnporOfud16lkAUnti7I+KsRepmH1/C1xVT/O7wMCx2h40+tZNqqq/nWD5A+vtaw4yuKY0mwQRMWz3RKwAxllELvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i1VvoT4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i1VvoT4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3802C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790132433;
	bh=2OH/cFYFF+cRkOWgBgKi7Ly3XPoij3xMQ8Dr8Fp7N8I=;
	h=To:Subject:From:Date:From;
	b=i1VvoT4i7/shqNLZU9U56aL9p75qGe5e/pAspaWuEly/h7Et6COW5eF9M7VQs/iR+
	 yx/bBET+U1f5b1USZmdzOPGnoqo4IctKG2A/2t90MojP1pvhjCzupi1TLu8JmiLHvO
	 cCQEANpRMl+XTJWtkULS19hfCBHg/DZlGTtJ8dxMKGfqcK81GyBBwn7GxT/I0hCHEn
	 FZAGKmZpz3RlJeKbdj9P/cIzZ5wSCqzTPC7jO0UAKe/mScvK2uiop0HeS9znUeM7eF
	 wWgSiXAdjLBHer/ah/I8QbumUMJkBk/G5JWzN8U9f6Y7mEKQm8FTMzTa9HSilM3g5a
	 gv/bcmkoqB1lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFEEC982FA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013243376.4188.15376477268094307996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59a9ae0af0163af3a75b5b09fd7195fd720b15add0000acf33014886facef53
Date: Wed, 23 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790132433
