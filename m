Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CFA1E1E0B
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755268794; cv=none; b=pPuKe+h/yVs5Fh+nK0kXjvoyBEuzydqVf8r6uEf3eXRu8HasFbm1qQA0BlhCzSgSHuzvgEb/dbUH4ptC73zuvQQz4csTNi0szqvCpQ0wYeWoePZh/okh3elRP5jppH1imOKicFnzIC0pUQwcy/BkTvl9gsdIyKoeo+78bZUbf9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755268794; c=relaxed/simple;
	bh=ogHn1pkwlRPK+xOmvEzCz0wMTNasg9k6/9yypfRSE6o=;
	h=To:Subject:From:Message-Id:Date; b=GXQ/WRN4srn3rTmwp1ygJjcyjzaWDDj3yRW3WwaaUJOGjx1xsSYtAfQumswW4oR9q6wbCEP94y/w6/O+xND0yPkwhUuin6gWVL8/hgjCO0Q0YuKJQSycQIWZ4i5vuacN1dNshXVKfoR90FRDcR/94m0AwaO+JmIagrkiLti1yj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/y7eFJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/y7eFJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDACC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755268793;
	bh=ogHn1pkwlRPK+xOmvEzCz0wMTNasg9k6/9yypfRSE6o=;
	h=To:Subject:From:Date:From;
	b=X/y7eFJijuOtSS5WysPrlGDuQbg9JyjxiwntDjDpeZ+4pQlJ2ZY7UguhFtJolxFM9
	 AWuAnbcAjbemkAGDeHXTbbOgvXqcsSTQ2u5BKdIhQqkqrcxJ2UlFKblV7rMgQ23Yvm
	 cZ7otF62owGPYb2JlzUDc1f04EgSw5VGvfK42OKZ/r8M/ZlFND2AepOIXWu9AZ+WHF
	 pUDyhRS9eRmEJj6XCZ6WK3Tl97vFAv/s6vlqICxRD+emx9q3ZOevnnogJ3kEWGrZKF
	 0ggVZbdOLoGPnwC2gFihIrvT4b1ZP2vTfnm5vFwOX25UhJZsSo8rmkgI0+DF3aZpij
	 fTlg12I2y1L8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F6CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526879357.13683.5577219361411395960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320f354385694a42c0389cfc0e9a7e380cbbecfe9ddd566a041b9d891a71d29e
Date: Fri, 15 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755268793
