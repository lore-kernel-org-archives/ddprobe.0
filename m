Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD6F30FC0F
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774381494; cv=none; b=ol1K7tjLfU/h0NfLZtR1qMniKJHDShJEIjWGlFs/Nw6WMZR2kyeenx0ykhxtOQ3+ZPTZuYozgSYmujHG6BTQhrLsUXdX/RiEZCLPQk86KVnajdzo4Fs5Qa3sQ4DPux3jm0eZsqyNhpirq4RupBopz+Lk6s9aDVaJR+g+vJncEMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774381494; c=relaxed/simple;
	bh=jtMZBUFIyGwoU+TB/CudDhjjQ/3hu7AQe4q2f+lSUUg=;
	h=To:Subject:From:Message-Id:Date; b=SuHl2ohqitXRuAPKqERyotOXd0qXH9lNeSNJGr6+Y8oDGDiWkEWAoNFUPr6ojts3XnG4es/0kwa4lg/2Mp2mfNVvc8nTk+1pvHL/dLeP4Dy27/6OQZbA/pQflROyS/xao92YYR9d5zBHa9GMApkQBoy4Gx7B3UkRgurijJ424Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqermWjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqermWjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF747C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774381493;
	bh=jtMZBUFIyGwoU+TB/CudDhjjQ/3hu7AQe4q2f+lSUUg=;
	h=To:Subject:From:Date:From;
	b=WqermWjSAwafp3+zSy8sY+Z6VEAdP3Rr1gEL1awY689nEtHv4s2yrwvHE9/029pgj
	 Yre1Bv0F9Xo7Rd0DdwRtELz/yGdEayXv53fQRIM60aeedzjqAsDKt7yBmI+mhEpxph
	 sP+m0V1Vi4/iBeOvFuiCBC9wjOgfS0nSKzdle65pFJhLB7CDh/5M0vcJbWyHEwWDFG
	 qA7hyyr+JWlf9BGAucQoi8IFilBYbFUnacAaLFoW9xq24s7uU540M6bOzYLDg7tevO
	 gnzyEVdOlGdJujEJ7VkX0V4SV4Hde/s4cBJKtLIw+JrXzN6EKQeMxBmR15hCra/99U
	 sIOrYnXbDeO/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF2EFEC109
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177438149360.15290.6200325961613984107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a126517e34d8a5808eb68379bd4ad6e8ca492b1adbbe730bb405ce30000c92
Date: Tue, 24 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774381493
