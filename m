Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FD543C2D
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717307723; cv=none; b=OTmkPi6sbVUKU2qrL/VdVEOXEXyVGOR+eT8ZLpGwxAi8DOrbW+RUH0cES7tea8XLWJU/gIIPZx2eWqbpJhnR8BG6fVyWcX2v3cLthrNT8DHhjzaXfj81RWhhjmMY7RRw8vjBAm6yFsqm4y5PhLamxfTpNEynpettxcvtmKxJiR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717307723; c=relaxed/simple;
	bh=WZ1KXDW455mUXE1YquEQ7N5LHjDc8JJCmzyZVuG4v5w=;
	h=To:Subject:From:Message-Id:Date; b=E7Qxb4UvhaC4fZfEYho6jkd9HiHcSLOzrfXirG1IRx1YoSIFZHMDkVYCajXD0HkrF0+bBHpXuyhE11y5oVIL02nJAB8yXt+bBryMOJk+gdEYsAj+r4PdJ1Xk2cFilisNgiFoE5eMahqheIBTe6DOBZT8QFAacHLgtyAda9tphT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCPbt7to; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCPbt7to"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0C8BC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717307723;
	bh=WZ1KXDW455mUXE1YquEQ7N5LHjDc8JJCmzyZVuG4v5w=;
	h=To:Subject:From:Date:From;
	b=dCPbt7towfFxIKg4hA0WnSNjQNyOYkIZuTxGPw+dpgQfUdm8t0p5y5WK/Q5KkSxTL
	 afK3bKti0Scl8mdkRK0g/c8dQlS/7sMb6roNwLgaHMCH4Mqjpzj7jc4IH3hMh6yO/W
	 UYfIghxSFEmZujvtCDJGVxJYrjDkBH/63eJTEMwWkX0dspaVcLp7UhwdqC+r+v17oQ
	 4/Q1PlbicLcXIm4dPqOnGNcbuuVTAsFaF2XLgqtbV2CN0YYSdm3BhNPfV/w5wuQM7t
	 FlRnWbcF39aPFDP0uwMFCoK/nvQh/loOvh/g+3wDLWoH6yC53Aftt9zUW7wuVj1xvK
	 Cs/MWf7QyYsnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D85DBC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730772283.23312.16797151575966794170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 906ec3ad54864880a9152a873dde0a8487155b13d824036ff616c806c06482c2
Date: Sun, 02 Jun 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717307722
