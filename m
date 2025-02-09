Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4925C4C9F
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739090154; cv=none; b=dGtl6d+PBzMctwoP3xupFSWsqJgoDxXYCgjEFRzxgxHMJORCB5tr/ZOWDGEBkeSg09XqxiKtcffYRfhZZn1lw3v79uAsMqWuOFtIHiz+d8avNUuXwtRfsphITeDD539p+C0tijMKmNYL5IQ8vU1KqREGjk6ACYhyW8RQ9rX9MR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739090154; c=relaxed/simple;
	bh=WRWJRUtxD68MhDOVheuBBc5FfuprAO1QY/XAcBuptGo=;
	h=To:Subject:From:Message-Id:Date; b=p1W9o+ZbiLrL6GomDu7xpNtRLQDB4a+Day/WshyZuCMeG9zC+pvDxmpqwPy2T1qmX9m3CLMwxUt5DSTqX/03iJQSBvzUsW96leWreQxFb+wzkO6jys8Ud+luzJrisaAb7evMFkjh0cjfyom1Vbx+Yia9UbmJerUw+cqCRQhtrdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQMr36dQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQMr36dQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1918C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739090153;
	bh=WRWJRUtxD68MhDOVheuBBc5FfuprAO1QY/XAcBuptGo=;
	h=To:Subject:From:Date:From;
	b=JQMr36dQZMMzzK+agS7shkn2vPRZVrKs2kwdLiDuZ0ec0XsqftJSmua3Ws3H9tJg9
	 wI5nH0AAW4eWvxxpmjuvP4o1gGID/rmINem3DgM2CnhBrfkZe2orJSgu0W1JlbRcIl
	 BgRSlFRpGN9G5AuJdkEbGAw2DC9dxBDxPWytOs2Cgo7pk8TTtafAciEfoa7Rd21xm9
	 qGuqFqu8A8eoXo40HVXIRHhYXenlie4cAri+REyG9Kp0M0RhGGAPdl8Fc+YauA7hPM
	 gBEdQhz00xdS5964HI+VfKV/sg6vPfybs19pI0ByyX8YOQDnxCUpS40EEMK6HRzf5r
	 2njo3tKqrHmAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E869C02199
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173909015360.30367.3474098948805357106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40bb439cecbd71ba7545d66d6ff9dc2ad895ca18fb26f1fea3fa552c196a749e
Date: Sun, 09 Feb 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739090153
