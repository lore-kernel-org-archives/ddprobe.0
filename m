Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F73142654
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717491323; cv=none; b=qOzyYgOgJBUrmFNp/K5z04LFCuZoE2k7y3i9BEO8Xl+9dMmtdqC4ALCR1z0XxofxwcsYWiDGRL7iaxB3lL/wB4oWmUuHGZkOGkVIhGhFR7DoKlo59SZwE4FbSZHCT9MudzfPiBVjkbeADy9Ro4i2keV8F54xpzrhEbEGL12uI/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717491323; c=relaxed/simple;
	bh=AJSiLN2bmStm5qPvJ6WNZfZrIJzb03oETuPNa/+luFw=;
	h=To:Subject:From:Message-Id:Date; b=qbU5DIVEicme6ZTSyVeZoY6TgJqvabQdlrjB10G3Zwo2ZhsyPj1WX0+hEOdIv8R1jSvOLJc3Lup/gqRwn6eFx2a+ZJ1qoIQAlTQV3b5eqpEWbw0sL+zcYy0Ya0OAtKTgRaarDElcJtU8YWaWXWsuK/AxdJ6Dr711aP9qZm9hWHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r27bFZUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r27bFZUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D607AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717491322;
	bh=AJSiLN2bmStm5qPvJ6WNZfZrIJzb03oETuPNa/+luFw=;
	h=To:Subject:From:Date:From;
	b=r27bFZUCR/WcHlBe6BCeFXmqTNH0F68MML6LVnHzi3Ls9KWQ9/8dluekMKO96rVsB
	 YLbidB+o9gno3+Rg7yfdF7ynJN4icR7CKU7WLffmRjs3H4Rg6tVKZraBGv6CtGreQ3
	 o/zrYTiDFnN1/UfY5dkYN7Dy1Bcqvz6rthtLPP/ErPm5Z9vE0F4ugruCcOHBNU27MI
	 0gOukkjaiqxhGaiPl7oLv/asDuSgblevpXEHXxA/duKvicxRA+KsHGQLvfZvHK5Gls
	 eL1zxGyiBIA8Vb/h1J7csueAxx089MoW9mu7hWA35sQPyP1eOujvKJUi3JnedHSeEj
	 VsdMbyIpeppAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01D5C27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171749132277.5895.8434257027669052973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1f88e45ceff552403ccbe0ac65df60f9e2318d45c7d97011ffa2ea7496d396
Date: Tue, 04 Jun 2024 08:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717491322
