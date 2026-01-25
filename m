Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2921E3EBF03
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769317435; cv=none; b=Dt/tm5RwtTO8SPiMQ4yrcYkGHU0lhz5WxNzoX/JLbCA8GfOqitBSMa/5t61LOAT4TGGhxsA4pYh+tUm39uYP7dz83gvUJp8GLVY8J/wHtU/GdB0XpcicYgU2TFYxQJyyp/+ctNwiH15F0979WO2sl6/OKkea+bBj7dNmQuu6WsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769317435; c=relaxed/simple;
	bh=bqwd4dZes4b77piOGYUwNsV9UAi/lBDOVhI7afaWJb4=;
	h=To:Subject:From:Message-Id:Date; b=gIZaU5CAiZlJh6oNcFKXe9o+pI+MvchLJq8Z9nhm8gEms3OX7C0uUyh9stN3BvB8eY0ICgMlcagiaCJpewW3KDb8fcvZm6FV10cMl53cN3bMs2a+Uq5Aob/TNnwKQhxkZLS2VEFsvc2QIAAT9Irya2JHHyL5HWphpxZeUeqSepI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JI07bfBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JI07bfBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B9AC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769317434;
	bh=bqwd4dZes4b77piOGYUwNsV9UAi/lBDOVhI7afaWJb4=;
	h=To:Subject:From:Date:From;
	b=JI07bfBazvuWMBaofhEuIanWKrsW4yH72qlqFQf11WbS/1JnfWgJdYWxOvi5Kxs3n
	 v9D3HezoaA6N31N1DGRkkzJdEJrTESrINnL4eWNOJbXvXyrxpNa9TB3pP8JqhXgz/z
	 PhDjrKpn7dnF20KBLW3VR0YK3rQSJVDz5SiS3m+002esaSznSsMuiqhtwnlTmHgY9y
	 0zHfyHYfavaNbmcOD/yVi95qfm3OiLKmc6H9kH3Ck3oiD0yDaj0kRw5ADQfKr+C8i0
	 GGLuD45ck8tuigXPB4h/rULr+xjEu5UPPMo9jPEEBD0pGuWwp6QzeL/4S9x2wIgOn2
	 kFhq6sU0wI8lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97900E63C82
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176931743358.9774.12778627293458045494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a6c4d3620ce2aba38e687adfcae9dab344ee525b947e64659eab8b46992193
Date: Sun, 25 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769317433
