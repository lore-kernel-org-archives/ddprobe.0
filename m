Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFAD38238A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786121434; cv=none; b=OqKVa5SqBGtUhEhOyuR5iKijTP7xEvUmGqoqWKKFmSBCHlbGiGX9wfYW06dqUcF9N6gWCwXAxfr4w4ykD/uKzo6RPP3wFVS5pQ96MZU58wcXNSlZCq4dZQO2aQohKTbrpiJ3YDMPEvug7J9hMjCMTcwM0v6V7OaAT+VcapGJ08Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786121434; c=relaxed/simple;
	bh=yX5nlpZl8LHrB20wrD7jLypjgaTpWiBV2UFcLdzQ7yY=;
	h=To:Subject:From:Message-Id:Date; b=LIGyM2Bh6CLKVXfKQirFwVkPJq7erXxTrHeddVoAAKqMNtjMxksUxx/0jewxRuTQonYOtQY2xFnFF/4E2X8MUCY+OZzckGqBlnDUfziHGJiX1S5QSYKlxcPf5APs1A/IElpd2+bwnkbjsuQisvJOzXyX21ocmQCy7DnB77JyK3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWmVbOqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWmVbOqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BA2C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786121433;
	bh=yX5nlpZl8LHrB20wrD7jLypjgaTpWiBV2UFcLdzQ7yY=;
	h=To:Subject:From:Date:From;
	b=DWmVbOqoZHOpXNTsMkt4DxKo3F2DPnbzKOmJQ96z/sLuz07A5nc3IUhHCxC3p57Md
	 g9rsmACpaxkhxh2+eBR4BKeBfM8rUFnH6scouOaFPFGaLBuw4JhesD794sXdOpvTb6
	 f6j9Xsyu583mhmjEZisvmp10bztHuMSEH6dgfAATZnBhDYokBAWtsJBR61326VpFS8
	 wrNvamFEJQloav7tqNlAjYWsIIpR+Ied8eqywcuqpN3sjMbUeCObkUPbcjxwsG98lD
	 Y2pEWdWbO9iJiychsBOS4m9ZPFEy7qv48Ab37ztgf9XaF80vQxe+9QyugaLjeRkyeJ
	 06dg/m1Fr7Wrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A3EC2A09B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612143370.32355.12777693052040931481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b625a6ef3cac14c9ec4451a71e3d0f718de2a3211a38f56a6f5af332a8505a3
Date: Fri, 07 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786121433
