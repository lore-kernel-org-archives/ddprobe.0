Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1193D11CBA
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773966894; cv=none; b=Ha278IEV7T/mQDMJFp4WMr/nHarOGworuKrur2ocY5LaauSl96VFiqTA0jE3m8zlAeQW7mvKuJQl8aiK7rPmDv4euJ6k4RPa0yYXmMqwaupUld5r7fqYBqpJxh7gzKBzyJ/Jqr6N3kWiW1HuLoXYTLT5BK0lcNufpZlY3Rrxbs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773966894; c=relaxed/simple;
	bh=F6gdsUvep51UuhFy7lTJ6y8CMwiR3th9GhY/oylD3p8=;
	h=To:Subject:From:Message-Id:Date; b=itUySQloQ+wK99bmw0hj3WufAyTFIDDD7VBGp3MNN4qJZ895eD3CHQagQPgHwTL05Lyf/7zBUewhCwE1aT96pKE0zZG507nGavn+ker3ct6X+zixmi+lppgkmR6t0Nt4aUYJiMeiXxkOr21GulS/T9xq5/q46uxxqmk9Vv9iTGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpcCFf5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpcCFf5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A5DC19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773966893;
	bh=F6gdsUvep51UuhFy7lTJ6y8CMwiR3th9GhY/oylD3p8=;
	h=To:Subject:From:Date:From;
	b=YpcCFf5z7f/q9G+/vKX5zZAKUORGfim3o4+Ncl9b6ZsrnyH7M2mbX5FhDeKr3+sYI
	 sc2Awu8MEjeiIogUIbVQFWlxsLX0Mv1hEBW0vN2vpxK4NlrZtlTr36hiSs9GFlpPVJ
	 0dL0+dkPP0YlaeHSnGQTl5CDKQqgmzm3O8oR30kHTDcnmiO+D0eGSxSxLnPdUQSp74
	 MDXi8EMkuA9kZHh+Zi/ZC+9W8BiuMP4V/xo16RA1X8rwKCpRuf2l2uui4MRjg5KmEH
	 oyKtLt3nzWOZqd7GEvIclxXIobA96nnXqfzIWsXTWFu7Ef4vThdT+8IvvnVkdtTwLr
	 vC9P6U1NMaG/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD871093162
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396689358.18047.13903164515301550668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eadc92b0d6a1601e312a12780bee1c8445bcda625fbff0c65aeae2886553830a
Date: Fri, 20 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773966893
