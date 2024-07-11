Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61286817
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720658843; cv=none; b=csA6jgO8AjMEZggxGXeruBn5E+Ws2Ocpz08V691qCTADnHeZyxxFZJPdMJYNIvLYnKE6+jxf7/C8RQJ9omD0rjchwLdfHf5LB5AnGWspYF0HILzlstn0Q/JhYDhP+EmXgNP9BwS9P3Jm+uEg2DGGBQtE+QnMVZec2kEXejOoBgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720658843; c=relaxed/simple;
	bh=8xOifTA2cjpbrpUJohfNDa+8U1qXOJlgk+HbM+2D4/I=;
	h=To:Subject:From:Message-Id:Date; b=JANtTjAGT/Vohqkq2/q7/JznIJU6E9mZ0qWXkwSvjZw6k79iRQ/jMhAPFUNLUaw26S2HON7VW4ewY1mzTVmPDuVjZPN9Ii6nbW6xWqQwewFyOh/YWCmueDmEfsnhzEEQvBPtD52KMhFRYNck+HBSFxHjhBzl1kben4ago+I0An0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrml6BxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrml6BxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7B9C32781
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720658842;
	bh=8xOifTA2cjpbrpUJohfNDa+8U1qXOJlgk+HbM+2D4/I=;
	h=To:Subject:From:Date:From;
	b=jrml6BxLERmWyXeSrzUB/vCowS/zBR0mwdaBAymVqSjQ17R/CLo0otu4BhUQoM4AJ
	 5Q4M5HdDHLnXKk062A6CXNZtx+O226Az+luOPdN8fb5AhrOlzvW/6YKfrARKO4As0G
	 0sg7xz/wafdHUDHx7Dq9tgZj1mN10w3T6N2lPW3y5PwXxwZ2rf6SbIdHhsHXzGVA0C
	 59voQ6O4oqiCW0NyEVXKJZqg9pvsdyl2zYitMFPdNd7Sajn3XBwflMmmT9/JA4tDlK
	 ggCKoNK5ejetKjZHjnt8y128iSioF+akX9QqKULmzw5gPIjAYGLFYnDCbf1OmLMgQ7
	 yLXoZU0IQJFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D25C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 00:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172065884278.3472.5071157991337331754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0cf1d728d5cdf0bdac230e5a190d4d3972275512fbc12caf10ada9e47abbcbe
Date: Thu, 11 Jul 2024 00:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720658842
