Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C26295DB9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748025597; cv=none; b=U0D+VI2Z3Oln5i9lfCpuE7PrJ/XdgLOrFMq0wNcGIv4SgAjP/Attns6m+5HM+LbkLxfSeIgQo7m28azj6ICbaxiuM/7zHJOlTlrUz6v/EXrD6iZkpN3r2Mm9/cVZfD8Y8wU5Cu+A+q7IcpwuATrIeUXB/zitB2CQ2Uf1UjqXQmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748025597; c=relaxed/simple;
	bh=qJd9PwetXi+9g5E1CAdb5sBgAhTmizeguZXpj7b3wrI=;
	h=To:Subject:From:Message-Id:Date; b=Q5J2zoy7RMXks6cL3A+CiREL6d5PkBTWstA+0NoCuXXEB3DgnsbjJ0rJvdp84rzyEXVTIR36hRRYY3Ut6ScvjFvTC8e9MxrE9xH6dFz/eTDNmdeYeHlvM/ufeqC2vKWHai5SZEbofr2/GGYqHEyFfNDapVH6xPWelWcGPp8EPaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0jDrLTm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0jDrLTm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D647C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748025593;
	bh=qJd9PwetXi+9g5E1CAdb5sBgAhTmizeguZXpj7b3wrI=;
	h=To:Subject:From:Date:From;
	b=O0jDrLTmJrJQ077LPf7BFZO1ZDDu7GmQ9E/bfjmTYfyhl+FvPP6aK543Wp2ZlTFvk
	 yK1JpbtIhJNCvFokmKloYdm9PwTWOCLMXSubtX0HJ0bloYSWR6+TIsr/5tYWYWHFRS
	 hbRK9rfEaRQRar5mSkg+EV+M8YIsp5bzQM6RqD5Suvuuy0T3mxEji11eRtUcAgwmRE
	 KKAw7MKm7RwcOzq7nL9aR1zMXKbfwND5xHut5At22rDgtOmXBjIZZd9gIqnPe+Hn+o
	 t+na3fXe4ICM1HKqxIRz1ksxqydSv1Bq9nINGhhxFucwbT0Rur9QES5auM7xeMYAwa
	 5VjEM0P2xk9jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC8CC54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802559357.29096.2799423569008880946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a186de7cc756316b91d3b4d7b18b03608c3f5d13915b5cc700b240bd550e76
Date: Fri, 23 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748025593
