Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F472F8EB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779342034; cv=none; b=B2haSqg1jQLxfkwMY1eEREWvvW7ZCoDzCSI8VXk+T6Jh6KES374F2NKxBZZnL6xC7O3edW/BNtqPeXPdA4dnLvJhDFOHSR+qKwAhPfsd6tVkUYoDN1gd5AJwmeu+3vAVnKraONziPdR84WF4wv+U9xrlsDzABCePdYxRKZHS5vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779342034; c=relaxed/simple;
	bh=qknRrAzBVu2NtuVV0HRGgtfa32paG2rVOYc71L9cTdY=;
	h=To:Subject:From:Message-Id:Date; b=mrfnl8CYJ8ZlEEmpG6MVywNft8cxTcrSKSrpZhnaFM/t9tqyG418hfhknXXRl8pdAwDaX/bTmTajLhsx498Z3CwGs/28jwkHAY9nbHR/6pRjTHJUbLXue6wEncc2p1Rm6zm6vW47ElLFavcTNuN/5ixEHw/sHoDh2P/05mjOTxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3mHE2eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3mHE2eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8543C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779342033;
	bh=qknRrAzBVu2NtuVV0HRGgtfa32paG2rVOYc71L9cTdY=;
	h=To:Subject:From:Date:From;
	b=I3mHE2euUODXfSUHYAp4luchXASRPkZlxpavpbL7gZeWK7weG7eOXGcJ11C5aBFEy
	 F0dleMJRCMq7jD2PF4nGovoOgN5E9nU1jTKLXi8yYwi5ulycFXjsw8nmBjEU57ckg/
	 6aJLxwretG2c+qmaizzr7ST6Yufew9Kd9j1ZgluErEam2a4UU1nWKLFZC47OxWUKYo
	 BFLf+gwEY4Dpwcfbg041/KjPVzlBwHyzpYfUMZQZextgM7PbNH/Za/+tsJms7S6rWo
	 lnXQFmoW5HKzzcFUfLGBbWSSPLxOT+CTR+KtpaWl7bnYOE6AT2uYyzfr2wp9IuZ4cZ
	 wYIOUNCEwXCWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0098CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934203370.18888.9031287761048385306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0d8da8670543c25d4cc9b8db6479c48eec5c7c0a2e970affdb3aea108803556
Date: Thu, 21 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779342033
