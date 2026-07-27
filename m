Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EBD1352C52
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785127834; cv=none; b=Z73NhnA3ayeYeILfqFbOC6UHRbaYKSndJVbCcp5FHai0xnQQ2Q5Xnaip3Z7JWwt5Ex4zu61zEJLHAbKDSLRwP7K9MFid5nA+FiYmh9WueKCM0eSlUOWIJ76DPJdK9ncNCotA4TQellQG/pJ5gDFr1g6/fg1QAAQpLQVVKo3TqN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785127834; c=relaxed/simple;
	bh=EASq2W4pfbGZIi8cSTFJ13vPq5+87YFWZVxchyR4pQw=;
	h=To:Subject:From:Message-Id:Date; b=OKmzaP6nZUFinxVt12S5F5oTHXIb9+B0xeLxK0B7XLg9wMV3blnf3JBK7YxPbo8EYMnX8tFycP7aYZyyU9pj1A+fgFEAjcDL8ofYk3zCnNr9igmULVthTGxyffhfkXn77RZogmaCosez3GhPKfP9Sk42ThaE1gB38uWOEQ9hrds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gq4Pz8kM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gq4Pz8kM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CC9C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785127833;
	bh=EASq2W4pfbGZIi8cSTFJ13vPq5+87YFWZVxchyR4pQw=;
	h=To:Subject:From:Date:From;
	b=gq4Pz8kMVYeluRdlHpMt3co8OS+ocS5Ty8u3cJC+zpx56eJ9tc4WUjcJ2bAIvWFil
	 WHLKHMbqMGBEdjrKKlJkmGcEUdhddhIKrfu+skyGOF8v+8RlGVWxZ9v+0b2DJWtM9J
	 JpRpt3hEKkhZQ505pNrZSigodgweggayb+qV0Z40L/xhEHhr5QeHJEw8YckWNJDUY+
	 yqUBt9V0bh/NET6Q6/BT16lbis1K1FA411erKNQQuo21OOaxDW/ZTYwVOOOv0i7aAH
	 HxFldGLaiK6NqrSfEMqwEKYB65BpGRLZFeU4qKccKAJ65PtJ1cYsTBd7hNWfqJBh9C
	 RpGB91uAH1+ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF377C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512783368.26440.16713500711147646507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f168cf7b49a5157eec3689f01598800a62b1f36c0fb0bf3c3084ed95eaa7e4
Date: Mon, 27 Jul 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785127833
