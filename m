Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E235A31
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730643954; cv=none; b=LXuuKk96axZK04MV+khyMwT1Gu8/JRB4swZW4Xogd0EH9L1gxfekodROp12+FsYVqE8OJcVmvuKkn0R6b/pUJKhkrLpN+I6vojbZ1ai3f2oP9hWOOqQfBrpKQtlU6WngR0XubksKDUeq+Wnsjb0uMHKOb99nhPbiq+ItEPooG8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730643954; c=relaxed/simple;
	bh=yrRkBKPODsAGU24A7+l/0T2KYxm8GNtUxLSJNOahM+c=;
	h=To:Subject:From:Message-Id:Date; b=BNd5vbt03CZV/YkqBcMZewlt1lb4XI5gorrOQOLGpPmwOwxRiqJqtCdE6Wv4nuMxVdGyz3k2z5JuOlKLTH67UGLhwYgf0HdwUWF4U2HxLHVLpGZRIApIs8eS5xxbOS3iQ63Yg7tU1o9P8eoBR7B08biDU7XkF+th0D/QBH2UDZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lv9UW3hE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lv9UW3hE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC05CC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730643953;
	bh=yrRkBKPODsAGU24A7+l/0T2KYxm8GNtUxLSJNOahM+c=;
	h=To:Subject:From:Date:From;
	b=Lv9UW3hEB7Xc82/Xbw4S02pnt6GqAtvTkmAQDOywci05j/uca54cIWqpcW2fHO7El
	 j+fZXqgtad9E0dBrdGAE4aPQLd0o+4ybyEhqi8Pa3ATMeroJFIfJ/5yxx/dhxFBCmH
	 +ZVcrI+MmPeKrWUHAZam2rL0+Ly04aWVxhaKPM1aawZC5+84ZhpOK9iPT9hOiL0Qks
	 FvSvO7KYOW8D8AQYvTGyN/U7yV2PCxTM9JXxWHG6CxBdm6ttBzUhw3Ei/ow/YH4Bd0
	 B/LB4bTBo+8Zp3o/wsYvLaMmQdv5QSzuHwgd+j5m8NiyNoHAwWSDcRNfM2W69mIPqd
	 Ej4NhwPf3AgcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2F0D10C0E
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173064395360.16186.9614489935126532586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f009efd1f3b047656d397bedd6e4671634cd9f00b9930d4d95ee7adc6ef5e37b
Date: Sun, 03 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730643953
