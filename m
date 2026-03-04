Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3241C3659EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772594694; cv=none; b=H+EBPeiGCGGSZCMonkVJcZ/b7ku6bzbJMPYsMrOb54+kaOTm0QBIvysdZvyv1fV70x0UYL9xlqViHQ+2JA4Eq2iR+csVcQbBVodPJXjjrFFeLdxN/Ntmh520x/DO40byzDKv7DqpCnoB29aUenunKoEYCgooN8XihgX/Ja64iM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772594694; c=relaxed/simple;
	bh=PYsi+fXjH4XFp9kYMuoL1KJiDh+rvU5+4UDyADp1KfY=;
	h=To:Subject:From:Message-Id:Date; b=Nq9Iw7bVnbzRi18Vg2YqP1qKAE9d9TH3qbdbzrep/yh7OcVehKe2J6yjEqKyefVAx8VOT/io4KFl+G5MiAapTAu9R0TQZTWlZcPB1lrnfiwBJPL2OeIuuJmT8yeV2zaZbQlpjyGis+MIrq+IFPH3Yd204zw6/JRJp8thNb2BwFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kj3hc4xY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kj3hc4xY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3245C116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772594693;
	bh=PYsi+fXjH4XFp9kYMuoL1KJiDh+rvU5+4UDyADp1KfY=;
	h=To:Subject:From:Date:From;
	b=Kj3hc4xYNfOpI2wxi3e4gE6L+cKqYOLp2QNgFvhypTg2WbvrGCnBmDXO7A8GaLanC
	 hHTMSVBJfM1Fl4P2WdfDtwjgv3abaAfKu4jZFXNVqUKWHL8Ql2w1iSPe1j3H0GLRqG
	 nrf021Jc/B8JJgGdg3sdbZQ9luAwwL5DcaoWqfxs6Rblz+qm/jxGP1neDXfYpNZFoQ
	 Qk4BUzZVCBGSlMhpaCVKtHaDsUVtapcURXAk2l2vk4JG/SFKF7RRrBXtSfZjECxwbV
	 3y7YaEwiAAt8rvL61FK623F1geQJG+rWt1c/0HoyshHeSStmKeqUjJJHAdXD+u6xXo
	 m3cdQSCoD98Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E7CEDEC01
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259469369.3758.11275663930596607526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea2c8431ad17babc3788675ca7b1e8be044e43eb8eae3dcd2fd9cb76e0b797f
Date: Wed, 04 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772594693
