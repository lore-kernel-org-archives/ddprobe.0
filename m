Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03CF313E07
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776205654; cv=none; b=Rl3MO78N+Ygzwgo9/eKZO3efHPH48BVziW2cTmIK4IaGwjpxnxtoITfiITzy9aL6g2hunFLU11zb3Ts5S0uJOY4m/uEDEWU1lIlCxq0iWyUZtvNOP18DL5LFbB5slO3GMSzpzuYyCkLgGbjHBeHw9VkIfbGfN9dyq+sucumo++I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776205654; c=relaxed/simple;
	bh=2HEBh9Ie6KE3hMTAQONEF+kHnlKH0gPTonasdBcydAM=;
	h=To:Subject:From:Message-Id:Date; b=GaIqRhJSGCDbEuLHlNBihLEkafh2vLE4k9yhIcv39cFbRNPAHneUcLocF1n8RUY9g1+u/ZrRYR5yj0JnqcSxvT7q8AbXU3XVGeqUSpvTCO68GxvSjFhoLu1coLRtkz/yvDgNFArlGz+49r02l0aM6zww6LyO031x6pO+Znr7hDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMjQGZ6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMjQGZ6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB34C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776205653;
	bh=2HEBh9Ie6KE3hMTAQONEF+kHnlKH0gPTonasdBcydAM=;
	h=To:Subject:From:Date:From;
	b=DMjQGZ6z3KbY6iucEwPtTPWKJCiuCZCWidiqPygkmjOMv/RojCvm99a4pdr4aOGfo
	 p95VQbVjKksp3kiwt1Lg2NRjVeO6paDqjpI3XazCyr4rzLhD7BPQz/JYwxvu0EOQHa
	 tegF1KnYOPUY4lQJ8vFYlKURbrepg1bBq+gzjq5G0qaSViNR+5OmdVXrB2ybu3GNfE
	 AuSIjVCALIJSqwWFOGfCxWdeTKdECSbCKoL+EQCd4YzLR1YlDe0VKey9OKYLjTlXQB
	 fhCKOoJJk9m5LKehFy05FNpogGlxWo+TbI9Ip3By3HstfpJWHsS+gnotbUQmJC+LbP
	 zple1+aGdmEOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC32BF9D0F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177620565368.18466.4901456354057636564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d269b70dc0ac55563bfa2ef9b64659eaee7636189e3eddab49ffcbe616e313
Date: Tue, 14 Apr 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776205653
