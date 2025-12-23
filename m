Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6C3274B42
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766493234; cv=none; b=Dc4RgIKA4Up5CwSp0NeI0nquM5yHEbeO/ZsAmwRI5u5l6PZJOH+eHF6hP/x9W0XwOQ/lBvvJLGTLQihipPLcb6e3EAID4Zam44j5+lIoH146wsAaY+HCRV/KuTxSYov27MWsjS9/ATafTV4Q73ltvOCgLfshJrleZlLRqnASjU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766493234; c=relaxed/simple;
	bh=uDUSVBez7/BEtMjGM4jm8uHK5C5cYTa49IwWnaeQVgg=;
	h=To:Subject:From:Message-Id:Date; b=RPPCVNmj4ehUvG6O/kKlJkuS5SVgAGa69mNq58OP2TiOHc9+WXJ3S0fHjsAnKl/ZXremJe3DIW/MjuzfTPM+q6d898jRAr+IX4fAU2MnTF0a5Q+J9SyGY+xXPmvW6EeUPDVqgbfGQaIva5PgNMVn26LEVQK+xDAft7it4DWoLnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aauJnAzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aauJnAzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A674CC19423
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766493233;
	bh=uDUSVBez7/BEtMjGM4jm8uHK5C5cYTa49IwWnaeQVgg=;
	h=To:Subject:From:Date:From;
	b=aauJnAzYE7JU+hyQaRphaq38WN9aLfiDDsFEhWYZfT8FGVxO0jsGG3iQvBy+/cJ0r
	 Gra0Rv0UXHnw/ubgIM5dJGj1hvfKVJnEGIp0X8ODeiXLhVfIirNa7GLah7KZoAAByl
	 0woI5CI8AHl6QUF2ZMjqbwKp6Hqhh5MWUXjXyJ6z7ZLJKzbdVcM3tbRX71OG6DX94/
	 IEOj8pxMcV6iseMLkjlkE1+p2GjRHz++FA2c3/1vAEkDAebTlS6zwIaqVG7Yw4glNM
	 6wMwcz5B1bpqYBXWdK0g5dEmlrvr/wKiaCmV0NcygZeaY3rXqHBWcbaYFsUUKpitp3
	 unHY6Jr+WejIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93820E6F08C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649323357.7810.3622114762284869651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17d4e26c6986f97bb496fc247bf76b4ce85dec6c39c5c614c9647e20cd32925
Date: Tue, 23 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766493233
