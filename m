Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146DA43D4F7
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772550294; cv=none; b=tMic3mPm0sgmcAmPAULZt2B37db8TUbweyPNGGeX50hsIthcjBUfCLMOKl2g4CQNI7mpKmoMkE98Kz8wl5pqW2tlA+rF5vRu0alglTL3jhtBMEgbrY57EaoyLCGrePWAqLHpTzZLH3TIR4srMCsxm4+3m4jAh7tjxz+62QxgevQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772550294; c=relaxed/simple;
	bh=NbnGv+ja1+5DxErmxVQAGPHliFqQDfCYHKmtkbmQBvg=;
	h=To:Subject:From:Message-Id:Date; b=G1kz/Yvx2R8p3tO2fOHNnfT3+ru6XH/ZURdI3mP7x/6Wj2T/GnJHhqEMxS/h0S64xUvLgMQSF3dkvxekmrwvfORFtOS4zRlTEqjdPSk67HtW3EBzdRNKv148TymTNrb37vsIGQDqCUq1DEBKwysi3eVM+ox21b3G/EMHOeaibHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDP8R1+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDP8R1+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772550293;
	bh=NbnGv+ja1+5DxErmxVQAGPHliFqQDfCYHKmtkbmQBvg=;
	h=To:Subject:From:Date:From;
	b=iDP8R1+3ssXaTnrYoWDMYLw6VKBWzqfhzoaqjQSJWs2m7aQzAEv4Q+YeKEVW3JoMN
	 aek1nGt2owjhnMsPwOPDWINgyk/3hkI5mPyiVAfw4pVmoP/JLKz4uu3xRM6uFVpNzZ
	 a5IyT0mjEaxLsbEGLHL9Soo4cHSZWZyisJJlTW+CQRaX3W935Ei6loeYkEvkgP1Qx4
	 QYblThktMTgk+GnEL+pydEYZ0TB7jHWTWXbdh5NRWS5Xth8qIaIjhgMvhcsrDXwKRz
	 koOETb0uzwXL0GmxWJG/BBj4JC4x3TdTWRiaP817SyokCnvTHUeEyW0w4cpB0rZY4O
	 klrtzM1wh9v3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95284EB363E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255029359.24934.761663791027294734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd04629ce99a73b9e05aa12f36bd44bfb9f62ef1fa8591a50eee3511d1097965
Date: Tue, 03 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772550293
