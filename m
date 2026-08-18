Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D01B23ED5E
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787093434; cv=none; b=Rx1nYQ4VLzvHLsEDIU+ofSenUl2xxR/WPlS4K7OrJd4/AEsefL/CgM4LDtG6lnGopz3ufCRQ/qqk5D/wwGZA1NLOpZLzlygHKuIWNWao1TKtI13+tSARC0Rp5rbNjoERv77dVzCYqMr3rP9t2UCRY663zhQOgYWx0A6csoELaNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787093434; c=relaxed/simple;
	bh=VYe+1CKlebjI57J0zvmdsgJBkQDJEwXuGfHjDAh4agw=;
	h=To:Subject:From:Message-Id:Date; b=o1Qo4foCdKxSOpL+6Npb6EcfxjkZZUFuKNEudJd3A8aYFz/wpQd0epvuckoeXgxoHkm7zppW8nxagbx+XIFjVGYjZK6L+qkw6OHQoGuSZr9vFMIqR0syFOT7mRaVqxkpnfTp73jQrEJDM1uCUeWO9I6bR6RZo7+uS/5euPeRTI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaENuDPb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaENuDPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F65C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787093433;
	bh=VYe+1CKlebjI57J0zvmdsgJBkQDJEwXuGfHjDAh4agw=;
	h=To:Subject:From:Date:From;
	b=uaENuDPbe5TiDlvf4d3z4lBJNeNdnpyhvVq+ag9BVns+r3Jrxgg31Qb8criii0x+2
	 vb1fI9eJXxGIcy60YKSh3XdoGWbxc7W4uAMGEXanZIZHvZ1JJqnZpwmj4G/hrhpHLZ
	 vAdwrERRvYzG0uiNEqBFaq0ZcWe3HEgdMQ643xyuzYJOe1k3PsfC2sHER+4fqZ6AVe
	 f9QNgRe8Hsj5scblkr1oD/G+Y+VMAgAXxyj3YY/MhUgefM9xxiBD66hCuh/1TARL1X
	 x1gDclsZgctXee8mkrcM0En3xH4KrpO7VitqcjVJgd3UVMEm9rSP/3n/W2vOREXVZY
	 SqB2SWCoWNeVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD42FC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709343368.15369.3605541734872609029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca2db5aef6aac1af3f10272e417df201e3ce29a899e4b9e608844b04012ed3e
Date: Tue, 18 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787093433
