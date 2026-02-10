Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1D317BEBF
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770685434; cv=none; b=f7eYYopXFrxPQeKQ3/j0VWc6t++iHjgCp8PtiJ+eTFFu5VBvnKpvE4FxpqMPJt55j4dixR/X8DzFNAHKgOoDCxd9BeMlZRcbTPcD22PakHmZ9OKU6mh2fDv9YihKlR033O6LJE6+QI1+hsRtJZ3+pkPtdX9tHnyWIzHoVbeM/NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770685434; c=relaxed/simple;
	bh=EhAFO2Rs3Ng40wN4hF0e99Q9vnBYlwcjhVN3IVCmfEA=;
	h=To:Subject:From:Message-Id:Date; b=IgxzOhK73VlILHIFVf23uIA2hOEFXvP3PRXujdqIsh2ofQoY6isIwSn1nk0ca4ETTk05tt5ZE3gL82UmI1Otqvg4+tmK7NZp69L2lF+aAv1bl/Gy0hPLH/zgbNl0DMLzgcU+uOI+SDbmtvTT1jXekKJEZCWksW5pDlAG+yF9LgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTaM0Bcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTaM0Bcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DB8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770685433;
	bh=EhAFO2Rs3Ng40wN4hF0e99Q9vnBYlwcjhVN3IVCmfEA=;
	h=To:Subject:From:Date:From;
	b=dTaM0BczlSIQ+WM/4uefpySlCWA+RXViRPqUaIZLrOVp3AJh1JXur0NtU9WrnwJhA
	 YXwt4WsVANdHndivELixlTA9Qbr17C+DzBiBY5p3y3cgQUGVf+KG4zrbJ1qgzM2rP/
	 XpDYUZqZpa2B+6MhWTIQ6tWJH6of5bMn06D4Dtb8RWM6yQNii1ZjvLrZESDL0Mtauv
	 567u9el0hK9sWl3oSIniQrjPDn9F0pKBT2G3yZ00CHNQjm/25sSc3WUb9yuhJQ6jXM
	 hcQWmyldcvST+ZiPhnnGTlVVPwyzZjeVqnruRb0zNxvyhjq7K8H6ZZsAkp2915Uy1I
	 ScgjcllZnnX8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BDAE94627
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068543374.11878.14353534369524020378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6673f0303e2c0ba81956b2ed1070798fd4297534aad929fc165680636b61899
Date: Tue, 10 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770685433
