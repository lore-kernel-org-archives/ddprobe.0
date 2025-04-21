Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36980F50F
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745214594; cv=none; b=MjFWU+eIrEcKy6OiIlu3MBBIKAnGegLbyxs7zD9IXjijmbwb5ocsSOGIMXm52GwboY9Q5Ri4AoEtmAQgC0tjpsLo44w3irzYlbZ+fddfVnI6kBySi8IN9Jo93uVXEv9caYlbob0wbJTgFrndVMItWrQneG9C9CdDQMBmr1IDSPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745214594; c=relaxed/simple;
	bh=58eF+CTLIew8IPxcDbuoHZsQTX8L6ubYae8DH0IIWfQ=;
	h=To:Subject:From:Message-Id:Date; b=Zt/cZMnLgxUk7EqJ5HJWY4LJLTE4e/E9VUbq9P7RLEiLG5bFoa+1RfhfYyNOAG2tAat1XscX6gAhMma/uCIxgRYJx3IxW0ZfKcVtlvOm3PICXMxgZNpONmJFQ9h8CPIdhCZf1vmIVxqoaySYDmuX1JdggTbud0hPWxQlIe3GF5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwxzQyX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwxzQyX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46D6C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745214593;
	bh=58eF+CTLIew8IPxcDbuoHZsQTX8L6ubYae8DH0IIWfQ=;
	h=To:Subject:From:Date:From;
	b=cwxzQyX4Gi3CZF5cflLJ7DUNTIZSKeZ68iS+FlHQ1+WXI/JYHOJDqrr/uTR3voCao
	 xVLd2CbT41VdDU/+XdtREU1cmNj6/129fouuCb7Plun0ooO52E66m6C/X7EJ/my60A
	 fcLeZUeYh+8tm00zbB3ldUXGQpUw7+ROGNtQyfekCdJeFsaJDYCOFI5vl0Mc6QVQq0
	 zL/J7UsNDxH9DVlmmkaNDhvxgzXcHdidFSP5Xd+094z4uxom4Ho5NIkJaF4Lc7opXO
	 XUcTWvqZ4x6+xKg4wdiLp1c55AGyv08fvgAHTa62fsZMaDqbar4HQb5rnak1jmw4lo
	 NKjiJvKJgmBRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E14CC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521459363.19350.1664695371384364395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0857acdb4eab8ac3d561d9997ae4d4950ab7b2235e4b555ee4d2f97dae4fae
Date: Mon, 21 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745214593
