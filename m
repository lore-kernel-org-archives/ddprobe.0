Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81671109
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 05:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722837354; cv=none; b=o7uO0LspzAPVp89OiK2pMtUdfaCgD24nt8GaPoqiWlDisqAwT6xLXnjMhiJIhIZjoOwkKfwxJlWpksvE2AnQc+Dks51pKKS1H4Cma2Xwz8tB+tuLzkKT3UCrUQYhVIsId7mRk7i8QQ/HgznAwtLamzMYKScjj5SqhlJi8Jk3yyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722837354; c=relaxed/simple;
	bh=/3z5aC1map2/FiaxJ6F0PJGUSpmVVhNAmqoG7E8+43k=;
	h=To:Subject:From:Message-Id:Date; b=q3vjOMbu5xFW9Y4BBAm0tEf1Bkrc3nE0botrX8vwTt+vWANiwJYUBk9rtuLVvBlD/j2nuajuX4XCWaqn6xNT7Y+iHMV038wKuOLse9/FG6BxaoeamMZCXEuB3tbg9miD6j9c74gj01+LTgLfiaiQBqyHU/kqjCCSMrFt3uPx0CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OV9rh4ii; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OV9rh4ii"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B914CC32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722837354;
	bh=/3z5aC1map2/FiaxJ6F0PJGUSpmVVhNAmqoG7E8+43k=;
	h=To:Subject:From:Date:From;
	b=OV9rh4iiYUYf27xnmdi86NyxBBIytHZqUMTTuqO6osCUMOedxcicqmxtBgwrDhYxW
	 mX2AD1zsHPw5iXN0GJ2/LjIHnb/jEmb6DCgLmg0BLkz/1JdZJgvZtVwAOr+gbBrW5Q
	 +c/GfKBzHqGOo4hD34GeSy4kw2JCRexjxFwubf5fSObippqktboZx33hZf+w4xmLnU
	 W3aq437Su4hosvQAY8e2MAx3FZq9eNqNmnQFo0xi1p+XunyJcbI1ZCOQg5CMBsiv9T
	 y2B0QoY0YdLM0PPmjx0gKG867A8XJ1TUmFdK+HQKpsGXu2eruTo7ZrabQMd7Cd2LZe
	 uYz/Dj7LS0JMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C6DC3DA4A
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172283735363.320.8613597372246031034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12835b3c59a6953d82f3e6df731b01ab1a80b5a1da7d5359d247883fdf35bb09
Date: Mon, 05 Aug 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722837353
