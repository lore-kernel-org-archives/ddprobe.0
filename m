Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8191FA25D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735914954; cv=none; b=TJ0+Fq+ncmGV+2MZZDDH2aSKgG7+oyopVwU7a3iggOchnsY2AQ3gsGyNO+q3HmjdMNy6xhOqkwOcSUDtSlh3h6l131uqhws8G4T7byeqRV9U7a4jQtboBBdFZwTze7EmSLRO6esMsJrjVSOuGMVjoLQmH6ztsBBx4DrAY/964zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735914954; c=relaxed/simple;
	bh=+5fw5eKmgUPIKthyivLIcFm7fbV94nouYMJUPI0wu70=;
	h=To:Subject:From:Message-Id:Date; b=GwuOuizCAn4kS92hZ/dkgRfnRKH7Mj1me2jpZoy5MN3iRsHpKy/TTH4KVuVi4GJGtWYh9ZQiba0JJJuc/99+DrkW8oQ7pJH48F4REajqnc/gCc1nSS2X4MNRLSlfCLsyAx0SFwmDcBKJeE48aS/LjBoC5nh9GPjeUsdaValsTkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzSgKwxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzSgKwxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AE3C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735914953;
	bh=+5fw5eKmgUPIKthyivLIcFm7fbV94nouYMJUPI0wu70=;
	h=To:Subject:From:Date:From;
	b=QzSgKwxj/MGsZ+u1jZtbjZ0wDKKKDLyZxTkyJMZstejZx6HP1tcCP1LY2pUX1vdY1
	 0MlvVgUdkt/t3/WVPHl4LpB12GgCGYaLrpQ88WT6N5xGQUDosaNGxmpTHxH0w3uu0R
	 40uBDQStgP9Z39TjRwFkPAG79uEO2Zdd8tvvkmj34RLZC0Gj7oS/x8dRQzkBP+rY1Y
	 NkzC8705BfK37wUC0goJ4bHrrl4q7Vo7khwkd+oj4wrbyNoauJBEUxXCB3xPXb+Rb9
	 vC1jrXQW0LjMN4s0FI9Dd2jd2yRTgIO7Zr4S14F5OmctGisXBnXq44TYDQmusRwDjv
	 SFnGgldbu6+9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F8E77198
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173591495359.20125.12959659338257030274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59824b5ded05b195561725a6c9eefd3c3a8599f99aa5fb5368fb1185b9f344fc
Date: Fri, 03 Jan 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735914953
