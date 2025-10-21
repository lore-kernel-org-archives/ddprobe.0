Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140D72309AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761088794; cv=none; b=PbPeUj/XJTrbE/SJjouLwRa/WPRd37kj636qQ/r9m6MQcubmtPqEGj2ZSDsqxnaDM9spQWl5xvxPkZT6KiuAEBy6IZ9xmyMmsck9XMJN8dOPE4mN5j0xqUzqWVDHWLsrB4wKpsMZx25RL6Sohbc9u6nhdkAARyqsWsejpjBUjU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761088794; c=relaxed/simple;
	bh=KoczRjiokGXWx+iD5KhK+nq9lkh+gkibB/SisH40Xu4=;
	h=To:Subject:From:Message-Id:Date; b=pREb2NDLBUhvnWmvtLfQoJB+OJcpp9oOovtw62urR5XIsfVt424/GAjuOhwLzcYkQVJebSHkItzU5qE0jvDUg6F4NJ0oJuSU9z5+GwtH6d3vR5htZp8Jg4muE/fCdq0/FPUWi1iDCkX+KHGsZIn/CxDLg2XK2/JgYEFKCT9wLJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKzOcgm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKzOcgm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD13EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761088793;
	bh=KoczRjiokGXWx+iD5KhK+nq9lkh+gkibB/SisH40Xu4=;
	h=To:Subject:From:Date:From;
	b=CKzOcgm88oxNd5Kd9qHZh7L2xPqqNo3bmHfdnVFymmyhRmyslrPkddIdO8jOYWIdL
	 ptRXy/YnuUoU+zm4Aky9UxxjoiDQr6B/JkyKsCIKZffW+QBxwYwR0+1nJuFTQYrKua
	 c0vo2MFP5pFZ18R6nY8+0Hnkw+jPu0GWOwdcuKn83dlALF13WOKiAyDFugF9PUqtQt
	 IqNwiSQUu0c3tcVL0Kh/lJ1Ai0O1D+3/BCG1w03s1V8TikjfTMELhP5tgEdTo3OwuH
	 cOLyEeHJg/V4qYCuVMRSddPR+CTH3wSJjgBWpGZ/L7rbxlbnLB+n9slT6XY1nJV4Ko
	 vfQRPHA9+SrGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB8CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108879358.31494.8625345885741778585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c35dff56e5b5ad5edd3f3a22142edcef1252bae4381a9db925d4f12202149cc8
Date: Tue, 21 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761088793
