Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F24C3B2A0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764519174; cv=none; b=VBr3xlB2Be9If1TB+2JyOKGuNsckXtOpIb/wiaEUbOOdYMPav49JF5J1TXj0blkb+8iXq92O1Hk/QXzDjt/pHK1u7zaSUvzVqSHAy3OnP3IqLnZIRVpzbSJMLtsEwSPm4VWbvqB5HeT/tnikJa6ZDHr1c6PaVFdYDysv4O24WcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764519174; c=relaxed/simple;
	bh=9PYj20no1z2/dKK+qEdZA4V0rUQlIQeAQoVDKkcPjy0=;
	h=To:Subject:From:Message-Id:Date; b=ABcNrO4JRhl94Yhpt6AexCpS5rZ13UXWhr1MC56H2PqLe4dXJvo0cAjnfsXWwKHGFmYC3kr00m7szXSYIdfZy6wCyVbCR0S/w/LSsW7mAUw4K39rbJlrCfUL8SkuUWYOQ8QjPnWDvSI1oH5oDU8WbnuGIqJWWFAcPQViWlluNp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Skdug9Gd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Skdug9Gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB3E2C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764519173;
	bh=9PYj20no1z2/dKK+qEdZA4V0rUQlIQeAQoVDKkcPjy0=;
	h=To:Subject:From:Date:From;
	b=Skdug9GdkcA/+Pj+sO4cnlaqlCHfXZZE28/PDD25tlIDuPteM8PzWzMy0huj2L/b8
	 yEdy3NonK2LnpWCm/eUQrRP9p1IxcO5X470pXvAYjiQO4JQvOdatPxt8VccIWQVb5v
	 pOvrKacMYZjbh9bOASUVkmb8mXJDYMXZSODhRXzVL+Hz+drmQ2rk6bqRuR4lsSKKXm
	 xPVeD9lAYPEnuRSX9iOfWT48ZH6gdQgY63d0PVUTftsGbfxju0uVeLvcJIoHrlunWq
	 8oP+/8vl8IPSDVYv+C24j/afAt8weHDdnqAn5uXIUnTjZEi2R9lqZOW+O0RBIQFcbc
	 j+va5Ut3KKVjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DA2D116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 16:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451917359.5499.10557319340576660357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcca9977c39e7ae52359411bc2354ea0a991bd90dc0e657eb7d76814d26dc5b
Date: Sun, 30 Nov 2025 16:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764519173
