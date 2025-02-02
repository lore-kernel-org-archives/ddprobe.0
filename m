Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BB59444
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738475154; cv=none; b=LyAOUzK6wNWW05jmc+TcInqB/lhThJfE/HWYmZrDPM66tDXhw+y8BX7CNgjWYMLKgDilLHhEdi1Ab9Wr+wrWPvyVV/R+Z9c2LiIZ/sDPKQyP/qzQT9BKGb72Ug8fx8dtHL51GPGRUEDqOZ7s8Y1WjjRRmvG8/7e88lnuzmFzElw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738475154; c=relaxed/simple;
	bh=PeKuf7iBzstEBZqKB/td9kOVb59cT4bWjLxApBw6hvs=;
	h=To:Subject:From:Message-Id:Date; b=TJi1ZbuIratlOLVvDaKibaN0ju+ZhTaLcS9xfAEFGQGA9xYWtrsWpDFBeutXKbP0bwHd56ir0kw49XDIp+UXJKc/F0UqpY3WHIqvTqzTPajVZmKVJq26MZbkx2hSdtbKKcdQ+INRmKxWtQ3gmyqysuztifHn7YkO7mmgku4S4To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOPl/V03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOPl/V03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1E0C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738475153;
	bh=PeKuf7iBzstEBZqKB/td9kOVb59cT4bWjLxApBw6hvs=;
	h=To:Subject:From:Date:From;
	b=DOPl/V03ICiZtaZyoA4+jUUfbjiVuSQlCTFRJrmuCL50VBiX+sc12XDpEaAToA4AO
	 9VYizlMw8kDe5mPOHkk9ZVYS09nh3UnZphfUqn+Vh1fXS2D6QsWAMMtSXwnoRzyZnL
	 PFchrtDiEuDscTZPgZJzs3ektVstR1axlsekd9BQp9JJxrBT3cZQCLQ+1gG96T73V5
	 icct6eiL0Tdr4pYYMJGwuW7aNQUI8jnUo5yHnlHmOpLXqBcZD3jjYkECAXiqUmX22T
	 uPD5EwY/T75HeDzFg1+JTrsDy1v7GN9wtED0Gt2sad1xjAuTyreUiLzt4Sc3vAFzgQ
	 p1XqvassRCoNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992AEC02190
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173847515359.20554.4123151259901802261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4778c63531f865ffe687c31e5ed3606857f48135b8623ad2864b3f466d315e7c
Date: Sun, 02 Feb 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738475153
