Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281861BC099
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750492194; cv=none; b=tp3e97f3dlwGg08U/Kzos1o80w24HCrDnkD24m7/yR+JPl9GXWclku02VsyzW3Z13JYKr/Cp/8NRU6lTquMN67qsx9NYxLJHLjA+n5eAva2JrZ8rHNZB5CeB0v0mVLu14X8YnawSm6j2AyQzGYgMPbdmfjMoG8M1K9bQn3tsAh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750492194; c=relaxed/simple;
	bh=Ji6g2WWpK8WdAVzlJZLUeX/8hb+ESWYrhCQXm5cJIt4=;
	h=To:Subject:From:Message-Id:Date; b=uPAgLqME9hFvMoWmguDtB7MLb3uQu7djXiwBUUN3HuRLer0VqA/d51JCngRWp6Ehf0QhDSizjkYOb80wocF18VvEEPruAIAWhjAA1zh88b8gFV4TXOk5XZLn5HLmhkholYFCJ7KtWzUZo8EqTWuAzlv+t5o6Y/UPWoC0wD7cNVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDaKwgiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDaKwgiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C59C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750492193;
	bh=Ji6g2WWpK8WdAVzlJZLUeX/8hb+ESWYrhCQXm5cJIt4=;
	h=To:Subject:From:Date:From;
	b=CDaKwgiu8rJk1Vdtd+r942BcPZyZYnFsIr7sdqRKGM9KCw2p2sziKlRb7r1w8H6VJ
	 ZnwIaT8rnlUvoTceQF3JVd9go4rcfRnfzSHnYJb7IK5LGG0FxtCBeYnvI4yIdyQVD8
	 uiP0pe3linmHDJP9/kpx90cRMqtFN7eX+kua0vXRfSAa93TkUpthp4V5syfnmP0kA8
	 a2eO50sAySfYrE+ANrp4kEJDl4g9Eo41tM5KARx5cxYlYGITXpT8ahOkHjHK4tSBnG
	 NMfM92ID/s3qtLg2DGEc5heIkvPnbnJuAELYjX4IOVpoSIf3876dBS5WFVR0SsxZLK
	 AN0VYO2D4CWvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92414C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175049219358.1397.13110248147535425827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 189acf561288378d26241cfc23958ebbc601471453d10a79afdecad969b6baae
Date: Sat, 21 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750492193
