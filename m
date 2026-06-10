Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E3D33260B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781133994; cv=none; b=derRixPHqaatiHY6whu3yK+svC4cEUE+0XLfNNTYYbrrMEq58S0/uyniY/MRdSpGrkNc5cOiJZ28s0CtfaNvt3F06Jb1rBzAvPRLPnFVF6Coec9pPpHOYYLgq1feULV3FVskiQik2QjshkVv4du7mapfG/pLpvJnH5niNGkGJco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781133994; c=relaxed/simple;
	bh=2kMN4wZcUjSRKLTkkQWBzQ7Ek+30fYDvApm+csGCRgY=;
	h=To:Subject:From:Message-Id:Date; b=EU8/8fUyXk3z8NpMzbD/vya2SwWgyObubHIIFIxnkqC2RyufZccufUkylV56dC/PDo2vdUoWsPI/VPQj7cy55GkmheVBNObnyDtS6z4WfcUxDoGboGTEg0ZTWbGv/aiBPsiO7egspxOHA24/7BERv2y4FnOrlgzhAChpgyh5WVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH2lePxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH2lePxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C71C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781133993;
	bh=2kMN4wZcUjSRKLTkkQWBzQ7Ek+30fYDvApm+csGCRgY=;
	h=To:Subject:From:Date:From;
	b=HH2lePxC7bwhtDJ3zaKEwnWbINLI43NhYhmhnn/ggQFYSklaRcsc9lKUTtNFlOfTS
	 VkwrdYl60/IGADbTdWagPUBJuP9kc2SvEFDYtmqe1Yd4eWjmJcL7IWGHeVaSOnh3Mp
	 +C4tO7wYetlzEz0BLPnVy1rFoJBMEMz4JtSAj4XP0YI382egseq5Jgnx4w4hzc7OGm
	 UR4jyB7MejZKi16E764TY4qYd+mz79uIQzVhOru8EueOrhljRYeOk51TpfP9U0LKMm
	 v0eR4QLxEQ/8QjvfEytjObqiCvGwrx+XKndIQAampV50JJ1pwBIH0LV8KyCevIj+Xn
	 tWQjBOzWfDFUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79EACD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113399368.29661.9943120645404745877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ac29c240c8bb5345e52e3a2e1592ab2818e8eaf6a098506ef048780bf5de72
Date: Wed, 10 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781133993
