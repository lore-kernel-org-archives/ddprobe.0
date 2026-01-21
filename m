Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1175D315D28
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769013234; cv=none; b=bUu3vSyqs+FfpY84eKhH59wGDuv7OH2LV02jD0/cqHJA+8O1IqQScMSEfZudo4Vwq9rZvYXaxpHRklvNwuEAR4kW2MW15unG72NI7J/ei8t/KgtaNSUl+oIFYs59ELYJJurVNuo/TQeBbOgmFV9wBFqb5uVaA9JOf86V3+CSmSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769013234; c=relaxed/simple;
	bh=V5CMgAr86Qnqfy+Pok3+yELWWzuOEFnV897wniXSPEE=;
	h=To:Subject:From:Message-Id:Date; b=cz/NOD0YQwUTilHwWGJa55QglcogB5E3JwlzGqSixpGSW2hYFlDQAee0upiI0xs9U2LT8Y4N3qrzN6kMeuYLh5TbwxlDJPIlg3apZ7F21PaSsJONUVS5JEqmaYz4zKTLshMR8Nx97WqBLUpU3rSlLfKtaRMQgqtZQQ4H+ocyO7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2Zh1f5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2Zh1f5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DF4C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769013233;
	bh=V5CMgAr86Qnqfy+Pok3+yELWWzuOEFnV897wniXSPEE=;
	h=To:Subject:From:Date:From;
	b=u2Zh1f5zkJ/aKZnQ0td+Kwn9r5IZrmaoOTx21AolqgUZr2xXjhqTzVy+oG+byuGqp
	 b0hhlsYaIha2d5TI32ap+na+X8kniQK04r3Wn12hbtTlYU5hDE9O12FEiAmdKD/DPi
	 7yWNwswdPrpUkDbSp/0aAw3AbOq7MGco+yicTByIKj8l9QTOa663JeZm0O3t8KdCZf
	 31eKv3y7fNbTsokaxORU5xUuVlfVnlEmhMjtdlW7O/taqdprausyyS3nVmsFyggc5M
	 mEO7yAUMxxio4xW4TNvfva7E/WgXJs91tekDZs3t55UCrWEFoBkacbjNBGYQOxpT1T
	 T2oxTrvLnl/EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94788D46950
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176901323359.28231.2190594418041747459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805a5dc886d363bc75cf1d698828477b6dd808ea3671222d29b55e41608ede07
Date: Wed, 21 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769013233
