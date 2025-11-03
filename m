Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264F52D7BF
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762171194; cv=none; b=M637T1ybhI6ZO0Y9AGd3GOpYSXUu+1sOuSFL2Iy3Na432pewXrIn6Is4QdFtdvgbDni1UCc1cjM5SQbOrIlEbJJ7JK+4Yaz5FxJ4YulNTwfJDs0W6qhCJ3HB0j+vObxzjthTMugJSn0DMYQJ/aV6TB7B37jny8EUgofDVfTzn38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762171194; c=relaxed/simple;
	bh=+UwA+Zo9QOVekbsjKuFNJLkkwW93Rfp68ZtB8++kiI4=;
	h=To:Subject:From:Message-Id:Date; b=aqKwekvZMfXLUSJQlw+SHUWN6x4dy8vynWM9Z3jUQGJQUoiEqz8pTOtf1+lYsL4ZU31oN4r2i8OPb1vfG50/Cup4jbjhoEskTHZf4vmKCuwOm4pcaTdADP4pfnEB1SGsyJiLuMnRiQhv51rfsl04HGPCr7fiMB15ps1kr6/BbwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkLMcZw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkLMcZw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFD8C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762171193;
	bh=+UwA+Zo9QOVekbsjKuFNJLkkwW93Rfp68ZtB8++kiI4=;
	h=To:Subject:From:Date:From;
	b=NkLMcZw+bQW+s2YQ+6ISLQHpDwZ0ynIu4dYFhPZfJoAtRfdMTN00G+ZzTcPRxJ/na
	 O9OeDLv8jNkZQDj35Da9a0P2VnzjX44XukYn1wvzwDbdA5alFsGcVKf2t4huqd9gE/
	 FQ/v+4KdqKW60/0T22kZzNr9WI+oZMqAPl61GaXy4E5CcUYT1xszZAP6CMa4O3dFYD
	 TgSAJLT7QiEoidoyeUrkoRZD73ii9YLbz9h8FocmO2dEitinEndExgadsHaB4EUtpS
	 4IYEFzK1zf3Pe1sl38y7HP6UOKPuw21MEXw8VGq0z5DGuzDSuZHd5RHKDwH5eJnCt+
	 W6+N86i8Tuogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7ECCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217119357.29312.16498728395010186117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83e716176a4feabacf9cce81e72856b3d62edee5022d332f57aaeb0a7f74d4c
Date: Mon, 03 Nov 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762171193
