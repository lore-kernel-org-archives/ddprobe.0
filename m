Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3DE20E6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727235954; cv=none; b=Jm6gWGkP7M5xVe5G7NOaIbWN1BBuwrboRCDLx7VfmytwLa31eawgssk1pBOxQ5u8olTrUciMlvdpEKFzDDqaJ2vGTwSrePETAiq3SgmefaS8NMs5ZSarPNem7LTAAuPgconIgxwxa3rx13kyEqdVabrBHL6U3Z9N5qzk3PqDRJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727235954; c=relaxed/simple;
	bh=hk7TtUJBuiIl9NL/hojyV/QpC52mUS4odEUHmVP0oyo=;
	h=To:Subject:From:Message-Id:Date; b=gVWjonHXKYwPK0dQf0jvy+JThwVH7Xk1zt3BK1QkqezYlEGQ7t89JFQzmfnzE0c+1dnl43ltiG61rF5M7UoB5nZQs4CIg9kaF+bXmVjYYGXUkj7eHzGNYz/w5BgR5imjOvCj/GZP39pNfPH3SsFnPJXZu7sBAB1pnHL4Z6Zq8l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGpFwqDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGpFwqDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B4C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727235953;
	bh=hk7TtUJBuiIl9NL/hojyV/QpC52mUS4odEUHmVP0oyo=;
	h=To:Subject:From:Date:From;
	b=KGpFwqDZTd27C/SLGxEhGNE7A0Q1lA3WgBZ2GBkP2w6oN/F5b51y+IXW3dlD+ZQCS
	 Ywl2VyiclkqeREnxEXTo4DEjNYyWgWcFnRy3gRS4e+SF+EyZ/VR/7UGbNVBk42fToP
	 gUmLNH55ZmQcZHx4vyJEixU8IOl8snnZ/15v4+hjt2UupvqHg4xO3K7JuaaLFmN57x
	 bhFR3aEMzImdfliO7yG6HsFV3poGKAPS9Cr8DK+IFnyxMl2WIfgn8cdOMAREHBxlLU
	 qVHbBYXcjTYpOv8Jh7f6UCmg78mD0Skqa6hR7FXusoY4IBE/ZEmZ2d+9zVePlJKEuV
	 /IAlTpQ5qFcTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CA8CF9C6C
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172723595360.10181.15506139758820252842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb6d08f8b4e6e5af5220bd0126e551018f7e1754cbf71e4d894e33d44e56850
Date: Wed, 25 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727235953
