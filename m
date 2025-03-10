Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2C612309B6
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741627134; cv=none; b=S63pQrx2UiW5redU2UBwUvsDYAzmp/WfvEySyNv2uS2ZfT+7/mG02UCR5Q/H0tLs8esizyHII90DS0QRG47lVOnUMN13BAEHuCABYUOthxhaGgQfUckL6592xo9+UaEhl89mOjdJAvzuUojUS1zPdHxEX76r5rYyCsosHwFGzrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741627134; c=relaxed/simple;
	bh=UbMeibFSCH3yMXiVWe2t+KNjwOt2roM/5Wt9g/5Ti1g=;
	h=To:Subject:From:Message-Id:Date; b=INpgMh5msrrzbsRQ9CjD23bHvXtmX9dxOdizbehKYkaNO1tThN2K3p+FsL83Pbpxo0BpS4QsEH56flecQDkH69N6OdlKaNY7PHYYX2lyPL4aF3ftV8s8oHGOfTV7wKpGE7orKdG3f1IXxycTGWRZWQRr0xwYKJgiNrDcVd8jPoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7DzVCJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7DzVCJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FC0C4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741627133;
	bh=UbMeibFSCH3yMXiVWe2t+KNjwOt2roM/5Wt9g/5Ti1g=;
	h=To:Subject:From:Date:From;
	b=o7DzVCJkmwO8BNpkyKmFwwU5cqpqMjyf4ISDFESva0rOhdnkrI4qRiWtFdr5C5YbV
	 bbSHFcUQduxQkiDUM3J2WwZgA5U+/xFYyyfCXyR839M4GgRSOgzviwXsYVvABgffwH
	 9Yp4cnkl/bRrhETlmfjNgUrGaaNSRCBRdiaIpZJZzQhse9Qdzl6B0w0ZiG8cPbSHZ+
	 jkhQ2qUJeFoHx7meKVQ9KwPyZEDdFEHFiKuzJuqDWa9agcLELKULRMYbW+WRJT4ktQ
	 MzgbP59hy/qulrX2j8IykJKirgxv6n0LOPCnb+5OUVTbUNn5OPz4yzrUDJe1IBzeQo
	 ZS8iXYDPgDoLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97726C282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174162713360.10230.17130504330032973566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00be48a8335770f26a013bbcbb5acedcca3fe0c2070862a4190890b42072f1c3
Date: Mon, 10 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741627133
