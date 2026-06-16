Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7582750ED
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781585194; cv=none; b=G7/QB6gsNfsXcppivOPuL31aHZsQCkQc+Y+SFqJsUJmGTcNB96RYWDzua+L89edX1iwEYYZi0Y3jfzlZo1e/qKjUa41cKxSjtWvMMv3nDAC5eseCBR4GFdKT3E6ZtCcKqVg+F+vle3765P32aY/8L5UIHh2gHXS4ezd8Xnrqg+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781585194; c=relaxed/simple;
	bh=wau4UG2zkejozRuStUZTbnRUMkF2TZc6zJCyHnZIMxA=;
	h=To:Subject:From:Message-Id:Date; b=Xdy2okNKNbSHOP/t5HXrS5I1+6sxgCePO+Wuv4GZ5Jf8IUms+TTWKICPzqLU01nAY8GdJkDC6phfRJNnCRaOUZh9UG7OT1AM5cvHmCkoWFVsQ4uSOImyUEfF72nGCB7BXIPBeuY+1c4an3aft53vFTDqtuMALszFGTZS5vheiDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebVMPk3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebVMPk3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE638C4AF0D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781585193;
	bh=wau4UG2zkejozRuStUZTbnRUMkF2TZc6zJCyHnZIMxA=;
	h=To:Subject:From:Date:From;
	b=ebVMPk3StoN/7U4Ma0lZkodyBdz7h6R4Epc68RKJXiZxw/LK5QL826DYP9ljSlzpp
	 ycsGe3GoqlmBn9dIvgETYatR/W0ILi580rPsDrKcMKRhWzNkkGhhy6YEXodq54bndn
	 e1nQtXiD+SAQRGp6M9YcDamBQAJmsCOIT+Xa8bxdd+ZI2uFVrh3GV5mOd+rW89oIv9
	 M7Yhc+r8yv24ege+kzGzC3C1E96zD0QJwdgijCmTgm+HmJ4ZKyBtxB7qzGA20DIloQ
	 /qcBb7VCJHfARQ1BzoWzUvquACsv+cxmH/r8H6NwnAv5uBpVZJ1hvRhDwVqbjPOhnv
	 ep3BPGHgc9B6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA57CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 04:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158519369.13401.10929031318962038563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22097d2b71af4c042a5bb5e5d11c2dae780ee8b3bc1a45558b51444b535ec4c4
Date: Tue, 16 Jun 2026 04:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781585193
