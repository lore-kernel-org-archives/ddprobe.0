Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5101FD52F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714598543; cv=none; b=Bj6ZMu5IxDk8lnpZ0ADachh98b05xJpiy+Ewbbl1nAIQdoimMtgsFzZsHS/Rp1lBCP1VA4feKn9Pg7ax7GokSDlosbdCmR5HA2YGUw7pS7z7ZOFRBDEI6F5cC19ChJiZSDrl+YFeqpqWdbntnQfToPGPBZAQAnzIYcPFw+cATkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714598543; c=relaxed/simple;
	bh=mVAxcXVVd5ay2kCUGxoVVWx98uetCLvpO8BlXqWP3kQ=;
	h=To:Subject:From:Message-Id:Date; b=XLqA5YWPofJN9Sqc43IYpu1/IdQZilLV/AQA1Mm/fIOqWjRM+t5CnDlCkHAkKR0kvLd6Fq6yraAsMvZ0bUfN8mQmJPCLzSuHKrUMT3fJsk16OoQ8jHUeMggWJPDWhr/VbRkkUrErqMCfO2D2gPMUnawEXDnnib/tv4tc/qq1VH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rM/0YCem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rM/0YCem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CA2C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714598542;
	bh=mVAxcXVVd5ay2kCUGxoVVWx98uetCLvpO8BlXqWP3kQ=;
	h=To:Subject:From:Date:From;
	b=rM/0YCemFEufEH7G5AxnWGUYqRP1MpXyYVGp4NcFwG8rY0pyAV2QmYU8AtA5A3r38
	 O7tQDFhd9EZgEUa8a7oXqj9oB79rBcV2E0+NeBtF1YCBNjTambvoVp4Iz/x3oq0mel
	 Ahy8Y85xYkDu373B40PQfRazMxMdSYk62LDGTrle4pBTitf7kzmXlcG13U0DIZPxWB
	 0bkiSvBMWonqvQB8Uaf2BGoFZADBQ3znGXLju/gvehoLquTBR+L3wm+ehR7kDZC4fJ
	 jQURDFGAInyrysON9yCpl5lJ/fxOIE1Ulm5ZUpdba9Yb7Z5UwWIBEneQL9pkc/g3Kj
	 DiJPOFSBP9d9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6D9C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171459854276.1480.13042366822355925312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af91a35e1494592d6e66cd5142d0f89d102354cbd8981011e1bbcd6aefc1f59
Date: Wed, 01 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714598542
