Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491073E9F93
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787652634; cv=none; b=S6NCBscJX9lfl2fx6YGoaYcY85LcJrbaCYkWjf7+FAgdiMN3tEqJyiPrpZ5rH3KrEzdGHiM6FJw79TlxfsdimrQwgmIwk6IWf1WPkOOdTfVOTo5XNVLfcrMjX36fgK+rNhDnc7q4PDYyQyFP6Ja9T6aVfxiBnqYdIaEWL5E/LCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787652634; c=relaxed/simple;
	bh=n1VVQZi/DLCocCZQ8wuH6OAmnW5IPUCwK7bVQnPBPZU=;
	h=To:Subject:From:Message-Id:Date; b=EvCQodTa3/KDi9SXFUCc2CWYSr7xg1BcoxiMvwryvbbu23wZQpQKEnPhoEJVdZlZ/wuL3tLU9T8cZIcMsC+Pfjce008pDtPQuNs5pBA115U6L9eGXMYxxCx1PbgDBXOAT7/pMa0NAx8qgcLjgvpAMki9YNG/yz9aEa0lZ9Mdm+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rVnmxUIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rVnmxUIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B64C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787652633;
	bh=n1VVQZi/DLCocCZQ8wuH6OAmnW5IPUCwK7bVQnPBPZU=;
	h=To:Subject:From:Date:From;
	b=rVnmxUIgT4SiJ8cex3MOKgkKLvLcabE+oKcI0+3+Rm7oVJUckx6OeSlgJqJI1Md9V
	 WkMByvmXS1Se+LqAFaAK0luxTvj98+2dSQyAGrSla09VSgqukDCrwSAml7U2jjMReI
	 4vgRwlHJANTm/TsjM7WwklzYMTT23oRm1mJMCc3e+Hid0NddpWLk6ycXRb1zFczUqn
	 x17TH1WDfk98TljDox7LrlE9iY1LFa4U6IHJaJCdQdPdyiKa1uRLIJD0QIkaGsu2uC
	 BlGH/4iAaVTASRgJjQg8yvTtPDJ5JxxjxCI6KRlrRofOlN/fwDV07SC61EuaEhU1sy
	 HH8sgs66T83mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD40FC61DB4
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178765263369.28533.1613153629931850064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f064b16f0dcaf937a9fae063adaad916ae98f720e9aaa18c7a08bd2b9f466876
Date: Tue, 25 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787652633
