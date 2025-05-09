Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF76275870
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746776993; cv=none; b=g/YCYqnLGx4UfRT81CUzI5HFabMesUAr6J8FwxmgLE5Ow0KPwBKs55Ip7g1VVd/dqoD/0rlSPrppF9zSKXrAHe8tZOVnBc5PbBIHjmJFY2MAYKAPVM3fhLGF9iAWuezX0Ut+W8zAAQNRlQAIr7RYE70BHtETCiRZq58BYTB8fQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746776993; c=relaxed/simple;
	bh=8TJKlQ/BjQDolIdTJC3/5CNgBSVxhiNG+Lx+7ahOXFE=;
	h=To:Subject:From:Message-Id:Date; b=mCeiKGv2zdmiuetLLjfporr5d5CPRsgwdmyV/E1IF91OZVGKIYU+iMQ5++rqYzisXdfIGHzvZQZtjYN1kAn47fzLI4Ud5Ll6SuNLU8pEpFbACU9amyt+DAv3vaafp6vIwFEq+Ans2ZgRPdiP4aWdXr8GUAu//yjfLCZFe+P061c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSBlFKon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSBlFKon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0D8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746776993;
	bh=8TJKlQ/BjQDolIdTJC3/5CNgBSVxhiNG+Lx+7ahOXFE=;
	h=To:Subject:From:Date:From;
	b=HSBlFKon3DJ6OSLcTzbEVX9exedzuooVJvIuuNBYJPOyQ5ZfM/B8XfR1RbKc1xkJD
	 4W/0ayt8gUqBMq3ea2G7rYSpaGtNS6nfG98zdo3ALcJR0AYntFUTUVQEaPtPzylf9l
	 Hia7CMdDu1pxXmuyFT0AFp/l4MooFGI3S3FrXlI9N4mWqnc6JqRWVL58BMu4hnsK9l
	 lxkaXRYKrgrX9i2OI0hl9Pct44FqDQmy019DAwvbQvC2BgBEVdLnaQj7Nu/YmnuVK2
	 8bYoCZYzBt9rOfStlD/IJ43sKKpUNWdm+ODK2BO+UNmYCZe0CUgiTfd5n+bkt0lfZk
	 22BiCnR6GwRXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9666BC3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677699360.19594.8908685510757454257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f84904730b0428760fdb081e61ce35b38651af7e1fcd964189728a13e3be04a
Date: Fri, 09 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746776993
