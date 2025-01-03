Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4782629C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735943754; cv=none; b=B/ID8AeM4rbAg2xwfWC+SVO0luaYMks4LTtIUweT/+nc0uvFHR5vUYwfJwoehj2ZkC4AtLe2vHEpD+xqxPmx+ExIVBqPD4zU9Yk44d0a01Mva6+NW9zyOdLxzLdYpa86VQUaBUzyl94iAgBWtbS8Rw5IakhHMX/qggnhi9fxsl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735943754; c=relaxed/simple;
	bh=1xj2GCffQH1dWTi7LoBv0TxsJGXzF8hT+pIbAwP24dc=;
	h=To:Subject:From:Message-Id:Date; b=htzONgN4eMKU5iG8MRGhDjmfon8dP8OmEXJ3r25JxQImMqf7tX8sDhcj/jqIrRN/Q6JvWQIGUFnaRwIoitFh2zQqVpd5x8YlL8gxV8fKswRecg3nvhwK4K+VHSOBULOjRcoLKUxjg6XQ9YQAMsODxJL12RclBRLA1yjDHyq0sUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lt4qFnJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lt4qFnJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3CCC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735943753;
	bh=1xj2GCffQH1dWTi7LoBv0TxsJGXzF8hT+pIbAwP24dc=;
	h=To:Subject:From:Date:From;
	b=lt4qFnJ9BxwWmtOO7b5/goa/elgcM20gxiXjeQ0CCQOvWCjucrh5WKBQfbr0pkgZu
	 m4nuKjGnA8B0tC8c1utP73Bt5bLvdTKrWlJK1j357uLsAcCzkbu8yeKEHxAZIMwjI+
	 NVF5wGHzfTUnAoQlD5F0M7bBNEZhxtJjRA8edIkIEdxOGpo9y+9aGssQymZ4D0jypr
	 d83OjNFMItKZb+J/AkUbVibvBw6nqTj+cVV9LEqi5/b8e2kopgHp55OL8+mMpAnMeP
	 s+C3MlistwMI19sVQLkPwJ9upquUfYyNccjqCmrC8POd7+HlgWGMpIgw1PLmtPcSfe
	 ofjlOtjnYV41A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D0FE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173594375359.5098.1597815118882777894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16cb4fb014a5de31b70a687baf290f760f5d808e0884bb66888e03895d23fd51
Date: Fri, 03 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735943753
