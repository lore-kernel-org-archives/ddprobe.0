Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1902338BF61
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779537154; cv=none; b=N3wlG/BYYTuDdg3/4MWSGlCgkpQty8ORPBP209IW7JYVwByXSTpFmWU0oTXUH/WNXsBcqZmsCI93pz69D6QIx7JM/jzVVgKL2OWvVAgbEu0OP5lmS4lSKFZt8cjqO4ZIXUMy5SQImxk3XrC3Htk8hft4jIvP+KypD/iJ3aZmnaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779537154; c=relaxed/simple;
	bh=Il0QXS4pD0ux8L/wfV2d5tkrp12Pg32OdFpw6F8LNCI=;
	h=To:Subject:From:Message-Id:Date; b=eNV6QUSDgbkijKpVyoNH06IUMm2QpMyPDMHUXcRu/KazHvf1rRVpxQqAtwhTmVGHrxCMz0skW/j0AE15La/PzsIQxn7yqLT3E+ObFH/1an3lUatjGynFKmQqATRcgEQJHW1PcROestJmorwdV4FL1aSdEfQSbD/8p3nEJTEU26s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kr9m2qaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kr9m2qaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3187C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779537153;
	bh=Il0QXS4pD0ux8L/wfV2d5tkrp12Pg32OdFpw6F8LNCI=;
	h=To:Subject:From:Date:From;
	b=Kr9m2qaHcD1gQXuLB9o7ZABTWNBDdMdAqkHzoKWM5BrVt+mEFCxsyGqotiQeh3UVw
	 /ST0yUnkP0MeOnf8mb98g9M2qEq7AvE3FJSs1VCD8ROT8EZ+JTbYIxE2FmClXiU3F0
	 xPxcYiUIOffcykUxXdLpsYLAAhTQUFUuLHDm0ps87cpk3vMBBFen0NSpZjTHDehd6S
	 4qs4oTk5aVpbOa0hn3n5bAp4V63rEXHHK1gInlmbAlPtx9VyTCUFwViCGxlY2dscM6
	 qIl16+MunR8AN2l4ficsB9OAM6jdUKSaHo/LqOKhPYEeEe/dVU5oHaBjkJH6U98hJE
	 xantnRWbr93yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F7CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953715369.18626.12149767961896312511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31cf198f46be4435473d256b67f62faa60230e9d047402ad713defc9374647ea
Date: Sat, 23 May 2026 11:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779537153
