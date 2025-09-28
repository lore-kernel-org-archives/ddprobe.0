Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116D5298CDE
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759040996; cv=none; b=RZPc3OzJ4ksbz16u3RTD6zcsPtdUlt6OsRbCE4qynxGUHhTd8mI+KbLQb/tAHdbIZji4VsI/+jc4AhINOXspFLOexXybLm0AjG1Hjt51ST5bdEycK1NmWR+l8MCklgwsjmr8cbc69UvzNa+4yDIbe6PJwmMl9ogJLT+mhNLqj+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759040996; c=relaxed/simple;
	bh=isx40gibLDYcd1dirIZcxcLpHIQFFkiRFqyk02dorDY=;
	h=To:Subject:From:Message-Id:Date; b=lRJzS25nKlja4fxFO/0bqrpHbzJC98MR7PtzsMKBUsfwj5YsvXcWkruLH03lhsVNoofn4A+RfpVfjaI9Jn9AwBId9vGkbNdngoioxHUkEo9MvqbxUq9GyLdRT3wNTkn2dTTkzxw47eKqnJI1HzTC6oH77/VLx8yy3Waebc3OCxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5sL6PiS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5sL6PiS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FCCC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759040993;
	bh=isx40gibLDYcd1dirIZcxcLpHIQFFkiRFqyk02dorDY=;
	h=To:Subject:From:Date:From;
	b=g5sL6PiSEvKy27bA7EMYts0DMGKPtx2MDN2pElIL8UsmSTgBOMUjEj8pQJ4KUAwVL
	 5iYFfSzagg7pzr6MX6ZCsJBZ/s5TE0D3f+ek+VQKDJidi829g8HyudilOVOyQiK+Cv
	 Xjd9bG+f4BlqmFRwHNS42yDir1w2hZBmzqT2+BG/SoWFg+jASaDA3NZSrjgaQuLeDa
	 neFjrl2dXTTNmXM42NIAA7ATQxHOT4SWGPdjnNANxrqqynUg5euYeHS1IDmgIK6+ao
	 cAqTpd5SMLDjnPomJ3R8KakyB1YuUJxQ2Sy/vsMknM/M7ToaXJZgAAelv9+TKUel7q
	 dVnwvDNc40HaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B5CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904099358.7652.1500169069926519576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382569d77363d354d44a0a70f9551d17ed9449bd972b9b925823242b2dfc7011
Date: Sun, 28 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759040993
