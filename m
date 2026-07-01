Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC8C36A354
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782871714; cv=none; b=XoAQUDkG1Q1Pq7IkXevZXz8stK2BRRp7TlYtBb2/wgFTL3e5vpkAL0jX+AiypwWaE+UmsjivXnCiqLuTHuIo2lNyuGmFH01MhvppChPQXlNArBlXref4wO0fSWr5tlBQXwDosHLh4GfdXWUoiVERXmYgm5gvnrCKA1sYQ4ORaCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782871714; c=relaxed/simple;
	bh=+hcIFTHdz86m2SjQpa1lKyKE0RkXuY6dYDQFML5GydU=;
	h=To:Subject:From:Message-Id:Date; b=stT/iYfrpNLG5/chjjf9ZRyYf8Y8YakmC/0lCYOLApB3Vxf7HGCMJ5ZyuU0KgpA7y1efG/FjtDuFbsrkEGDxYRUNuxGJXl3NfLdn1hbgDFc6WrfvBjcVrA26kBavWh+WajZ+DnQRpywunkATRqCrfAb/D67wm8WZ1ITmsjb8DDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qcvQ9WRL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qcvQ9WRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2021C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782871713;
	bh=+hcIFTHdz86m2SjQpa1lKyKE0RkXuY6dYDQFML5GydU=;
	h=To:Subject:From:Date:From;
	b=qcvQ9WRLPMMlBPghdrWRfdwfgKQUtc1O65Ct7YIE6yPK1JR4FQ218enqB20Zxn5+Y
	 VeaqSnPK3HAOzAH+YbOhPQEDL/dhJE2icDyXh8iFq1nx+4vHPr0HiubFc1KfgQXsra
	 xksBet9IJObM+4JjuCbLCH48jflpYfCQFyeqIFhZsPweVkKCPaMn3WieKUBlYdOuM4
	 ju727QnXtMSG+kR3Knts11VPkdBMzpuZRVoAUx5WO9HK3au4McdyWTr3HMhppSzJ+K
	 Cbq6Lr/LdgUUJvLp3GWPCHMlT/HRU+sR7RZmoRltPgTpKATvuenvzPJjlniq6MdLdJ
	 HgzeW0M79dGVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3C3C43327
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 02:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287171369.15300.8473821858942754540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9f2802bf8e9e3a692aaedfee5241d7667c80f9cb93935ebbc96af724e71426
Date: Wed, 01 Jul 2026 02:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782871713
