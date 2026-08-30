Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537042F7EE8
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788072634; cv=none; b=qavdoEVx52+Lq4ZZjPp5RWjTLLDuriXmQekKdEhYCTGF1xarfZfP4kW/XpDoXWR3Hd7t9SNIHgsBKTmNsplWjU77ffQTPNp52zulKAvgPI74urPrU2pxx4haSkIGgfIsVL2S0nO36x3S1ov/TDQuoG5UwuWbDXXnvtb/eOFFlUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788072634; c=relaxed/simple;
	bh=l4h9Dy0WqbR9kAhhnzlqzkMPCptriY0UPmQyyIkSOqA=;
	h=To:Subject:From:Message-Id:Date; b=HlQNgipfFKXWd+DBRv8CHGUgLwMq/aKakfiLVd1tPBql9JWAdvIK4VyqJlL26yU51bD2d7LyNwv9snm/42wzIa7LWumQCvPWNE2kL3JJNk7kYPnbW14znujhflBizMB3ZRTotEXTCFhF9WA/9M2d1dwiZgCmvq4uXoKKyd4BJK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqtKNrf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqtKNrf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F27C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788072633;
	bh=l4h9Dy0WqbR9kAhhnzlqzkMPCptriY0UPmQyyIkSOqA=;
	h=To:Subject:From:Date:From;
	b=XqtKNrf23WN6VL8gbx1+EiyGRz1OK3AR6ENV1h9xVLnFw7CzjFjlAPKO/17labiZk
	 HAB9K2JYnwomWg064pr77hKqvgjLFEHhL7yiZzNIolwLePWNyQfo5MubgMbjYCzHUy
	 //8ywr3oL5B13i+tFYElN0zM+Hli19t+dl8VaBHR56FgxZo7O4q8TEZmReQxYCXbnr
	 +kjDfYUr0kFL99Bq7tsPMwoqS6NjJQF/tocq88AAZVU+PvAyXgxEEUfZlbArumvYJr
	 b+RfAT9mmFrpfoP7C24ttfRhoapqMijoln6rLZZJyXtpaH6d47o5aB6JltboSxARyJ
	 Z9Fev7Fndo2kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD36EC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807263368.9916.15932833691435919759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83feb7fc35a466611ae994d111f72a25cefe4a5132ce061bafc80a9485b62ab3
Date: Sun, 30 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788072633
