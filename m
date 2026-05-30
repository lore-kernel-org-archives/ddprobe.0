Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371663375CB
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780110814; cv=none; b=dIMpYff6gxlHpf1wgteEZhrHQU/5gb1XBD5+tpB3ws+2/X9M+VqZCUWTdr2puNFN6ncGnwd6Tf6+EzdvI/YCWlbZzUAmWz4kxU6iLObw21MkO2WYmSRK75ZCc+waEf58iRn+EPLA2dsyqsgYUL6M6rZkUR589k/5RpMaqFIA9GY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780110814; c=relaxed/simple;
	bh=XORfyQKtloXPtJLS5kskNR6YOGZeyxAK1ZQHFfguYXM=;
	h=To:Subject:From:Message-Id:Date; b=N1o6OlNI+R7Ow6FJsNr5omAIw//XOqzGQz3Fz1SnkM3eDbC793LzFHlTzOE6eFVNSOm9Ar8iaWNZ5LRybKA3uV7YNxxk1SrPplX/gZ1cvDVO8KROiXAA4e4DoQlXKgQbNA1vEw6sbB5UZmOzraIJgXWeuj+bGomvWR07CHPmInw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaFmcpVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaFmcpVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81AFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780110813;
	bh=XORfyQKtloXPtJLS5kskNR6YOGZeyxAK1ZQHFfguYXM=;
	h=To:Subject:From:Date:From;
	b=qaFmcpVEKk1Sq6fDqeCj84gcdGIe37YdyRzLxPh0HDwrANXkd3+aGU7aUdXHvL6j6
	 heY3W2T71ASAIzN7bqY76ZHqthtWiosUNX2F5Knax2nrzsPTZhfmfZ6bOnGoV44LSq
	 ox7T3eZT4jhqPV+4ifg78dizWpEEZEB0BNLAlo2hEifeSnlYzHBpe8Bw2H3K21h6V4
	 Sjz9/ay9mgtF5i7rEBWU1bAf/wXQTkpkNAuti07RybYfKP5j0H6bDNHYYQv1KDM8IY
	 dbgmC7kC7jViQ6lKxvLKkXK55kU714dXaCcoUvr4zsXmVrD5KtY4Y5vA5CCQ5ngqOn
	 bft5T1Mwpx7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BECCD6E51
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 03:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178011081369.31471.3178795129032752775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b00d0d84b0a2b73ac3a1af685315d386324a9b9b02bb6b6cd872c228884128bd
Date: Sat, 30 May 2026 03:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780110813
