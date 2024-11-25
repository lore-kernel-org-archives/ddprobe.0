Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AE018E37D
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732545354; cv=none; b=QbOzWPMdjIMmu2SW7HAcID07faeSo0GlgNW+8/JCE6JsUEuCX65ORN6VSzLY9j1AonNq+QEwesBJqi14k9047xBO8bgrj8q931fKzRoAzp3yXaLLnN7h89yq/KOAGRCvmiZUJcW1mY4WVO4BEhwuNZVTP0MnFKw2QL4fSdgHtCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732545354; c=relaxed/simple;
	bh=Pbbyubag6yvm75izy7VqkmHI5bwWQQcN27gqDrdB3+Q=;
	h=To:Subject:From:Message-Id:Date; b=XYfw0aJOyC/jezwtRdiZOkVMUJ4QpoDRbs19jndI6IKWUQ6XKrBjwUgHF/oTvtj1IhFxzuwJ2wTvolSwwAZQVkMTXbODZ0qIo7J6/qKIzWk9xtSQDpmJr5z9y8kBZT0MVXxLOU+gUAnuT+h67oNL9OJanWtSgLMlG2YqGoosZnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orvh+asf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orvh+asf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC797C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732545353;
	bh=Pbbyubag6yvm75izy7VqkmHI5bwWQQcN27gqDrdB3+Q=;
	h=To:Subject:From:Date:From;
	b=orvh+asfzAwn8fkaSPrT1hJRbp6+dzQ4Po1cbubuBApnrG6qNwZuMt2TgztFEvXzK
	 46Xc++3ELyg1fpmwM/Z7YLArV3chYhyv+AZWy5yrxnBUpFickcywzAbU5WWxpnSe0W
	 aGD7uhh59L9rGqR8BmUAmQSK6BNC27DWoEiyM1WzN+XseLdUBtto7lfOiLM2ZVZ+/l
	 Jw7IGMOh9fHgPNywUJ/jOTFSrIFAQQ57BqtGME03a8TUMjbDfhs+XiKbc/VGMgEUS4
	 FFu1a60k/yzr0wOgWMKU/Ng5ogWWlXEH+gwVFlHosoG+ShT05UQ9Sy32qNPEGPXtl4
	 2eByLPHuy0bYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D19D58D50
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173254535360.28662.3583249382785577687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e1dbc9bdb30cdeb7b8b0b9c2435a5c6ba2e9f594937ae780b1270454711963
Date: Mon, 25 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732545353
