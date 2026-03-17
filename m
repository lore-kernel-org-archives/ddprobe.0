Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D5633EAE6
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773729894; cv=none; b=bYzWr/Z0q9C26L4J54Yk9s/L/8dKDeBVGuK+Zi/2y+BQHDpjY60988ubz26xtPnIE4QjIZOk7qhs/fwuSwRNYdXITMhoqM1WkA5bWoDaOAgaXN8s9ieEDEhGwKjj/FKoZxgTqIQ8VDGw9VuUGa9Z7tA6t92R91p+G648Y+y503U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773729894; c=relaxed/simple;
	bh=AmrvBeDcSOS2I2R6mSiZgzf9Gt8WWePPm7E7By1wDF4=;
	h=To:Subject:From:Message-Id:Date; b=J8FZTKP2y99yT9yYw+eidECsi/t5iCJaNgnqKBzhKNYS9Z4jqmwI3bRqr1gQo0TsP/SAdRmBkFz7SFAeubP9zAUONA9hHprat4QV4hjbyRttTkPXAcXZaMcyQf4YUYf9LVueWorb2ifvyq4PZV9J9gU3+FAXetXpIP/b0wIMzwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKBSPMra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKBSPMra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BFBC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773729893;
	bh=AmrvBeDcSOS2I2R6mSiZgzf9Gt8WWePPm7E7By1wDF4=;
	h=To:Subject:From:Date:From;
	b=mKBSPMrab0G2v/xLG/pwPEX0FdMczdbL57nBOVzh70RELaXSYNqKpXKHe3cF/jg77
	 ycGjLq/YKf8fypKeY1nHPEOf8jp6cry6sQz8hixqR4Ew8xxYBKMw9CGY0RzScOosMc
	 qfUKuSWOLk44DZqOknN0LDylRo5JCR/FJacvOmFdBbjzdzV9fmsrNsnSqtQj9c6VYi
	 A6fNILB/sLTFlAcrg8bd73LcY8BnA6J0iTzuSlbKWpxMm7dO/6DNapv3ftpry5q4Ct
	 DAxLqBShwjAFkNnHfSS+wyhAhxlGJB0Sa35Rwd7XYDOQ6UOIPRHQwCB5OUt3oq+ozv
	 HdQQVEeYPz/+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B8F33805
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372989357.31518.12148473185922505316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27ba7cbe07f99e17cce453d1bf77c1b399387fb0dc550743fa55e187bd92025
Date: Tue, 17 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773729893
