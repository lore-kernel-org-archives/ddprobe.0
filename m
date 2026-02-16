Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FE0283FE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771203894; cv=none; b=npH5dHegzeDx98FN01J50KBaJBvdDUCx0sFA4oKbLKBcQ7KxB19tVF2DoyDC057MCdIGZ1OSmQvjEcCzss/6LERiqd7s/NqY0BZJBsb2WwkJinmP00kH7MidRn8jpwOhYnVQR0EX9q7rLd2FVPjrNhC0e+q/DjwLZOSqWhQzJbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771203894; c=relaxed/simple;
	bh=EXSCUnvO6VEN9cIhIvlRkc1aN+CHlUZr/okrzlqJldI=;
	h=To:Subject:From:Message-Id:Date; b=NYWPiz6PKpZHqXB/zI5Ynth0g+En0c6Ej6RiV2qGCIn8m4Z24s/jcVP8dS9qjZXIrseps94Iw1CYG1Dd5CtRn7IaE6f2cCHdpvLOZkrH57sSIaMQO3odgaaHI0GrePLyOTdWxLUsUWhF6CHT0IZPa5dPNENp8aY+KnIrY3SN1WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzQwyZlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzQwyZlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2392C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771203893;
	bh=EXSCUnvO6VEN9cIhIvlRkc1aN+CHlUZr/okrzlqJldI=;
	h=To:Subject:From:Date:From;
	b=mzQwyZlHmPdg6hRWu3nGA4nDhj+h+0YfYSy0vOFWSNbPBqvjR4KiELHkuxMIIegbs
	 4EHS44Mwt40yGvncFUhFkoNiTqW8ypHbtYcoU0h45EDSxZ/pH7C9WxHXGHdyL1MSRw
	 D+BnljjCY5DAGocTdxU2cmgiRQ4syjh18EATvXHMCJKGXdwfSIOWYrWirdAH/sozLj
	 sFsvGRhVX93ptapX6JuOxSEXWoEyaPg5Zh2+e7Gzk4Hescp3Bm7TxjJ03lVAUig5be
	 uhMACANxZ3SsyJBwSOdVHQjwPLTVNjrT/W6xEhcykvBp/aalyOCEtMGBsFKG1cUsjF
	 2MavHyERiHoDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA5AE63F1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120389361.7800.14010180132632541438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04a9ae152f9ab4696af9f67c57db4c5a7ebb0d9aecadc225df0ad1350cc60704
Date: Mon, 16 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771203893
