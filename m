Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AF032860F
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781195794; cv=none; b=rp8C2+/n70O4o1LA0jK3oFufrR+zqaeCg5iUzZXG7q6uWdZLgAYDIkBZCV8HP7fJjVa1l5wygZ2kL55yNNOKG6iwzNCoLyKJfo3uqRYikzFZ5CwwuwHz5hxbrAi2YqOkPkJEVNlBMsZltjZkyZRM2vHisWMYYJ+NXD8+1+zitEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781195794; c=relaxed/simple;
	bh=0oAXnb7hwcb93vZWP1X9LewqPoQgJAtpqCxfjWFVJe4=;
	h=To:Subject:From:Message-Id:Date; b=R99F0wSjPv9h/mqNL0DnyIRZYmOTO4a+c8gacOmPYTRcmT+Mhoa6x8o5NZM5Pq9MJs13fZuf+wSgtQjYwPGvJQ9OzNZBGn+f0atgMD7c2oGvnEPYb0QG4clk8Bv0u8KkP+BS/6y+q0CSJ88RQiN9mPIJBbjay3YNAXpqMk4y2LE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fztzh1kE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fztzh1kE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C686DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781195793;
	bh=0oAXnb7hwcb93vZWP1X9LewqPoQgJAtpqCxfjWFVJe4=;
	h=To:Subject:From:Date:From;
	b=fztzh1kELaj18r1HoiZkkUYPPAPuBofAcpSKSFYw/cfIXaSw87X6pw+eZs+CLIhm1
	 KBUbMrM/WU2jT6M0WbAKva9b5tYm3kc4csMPts0zUY7byZQJlmo0hxCxKMhmSzYSxn
	 XTCG9BqKatWibCEI/USA5ZpqKGYj9ANKKe5OubIxjsQ9Oeskro3wQzNyBvMjB0DmJE
	 5qj9S1rx2Mw8RrZ8x1VBOzj+m6IZfpU0QJ6+UFoyA7monlI6F2czhGJxH2lerNeadv
	 fd8RN5lJQSMLqBwPxQzNiG+23qmc6OEPQJGR2IPlhmBHZEQDEhaBAWmyYuT+TslkUR
	 p7eiMnx01im7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFF2CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 16:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119579369.21932.8813722656461695437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca828e1cf9a9e8ebb8faa6d6d4d61b27a325a179a5dc707151fc62d107807641
Date: Thu, 11 Jun 2026 16:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781195793
