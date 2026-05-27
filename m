Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDC32192FA
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779853954; cv=none; b=Kh9cwnc+BzUXpUES7kxEzLQ3Rz6u+QaHOBolkRKKwup5hqDLK6eJKS2X0ZyDXsiFSCYkCpx2bx6ELjWq6G+GIZ5n63fnHLgXvTCpc34bGJAtey9gCVIXZsny3uONxLkSX4MIORbQqkoZta5HB+RnVOY2WOVx+cCIK7XfyJO0ytA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779853954; c=relaxed/simple;
	bh=rBeDgF6cyZ6F9D7dt8PzwZbm950zudTbi9lHp6iMxUA=;
	h=To:Subject:From:Message-Id:Date; b=cGjyKO5MF7RwOSw0tPVBXJPlSdPjEb1JVLMh7h6MafhNM7pFVTxZBVdRrLi3Rud9r+Nw2cEGJ2yShaUycOIWdcySillg2y6PkRtLs7nsfM9pKxD+tkBxgIMhIZOBDBXu9KB9MAwvUe+C35VVOdhMgGEDd6o3CredTAga4WHW4GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0DpqgWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0DpqgWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC953C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779853953;
	bh=rBeDgF6cyZ6F9D7dt8PzwZbm950zudTbi9lHp6iMxUA=;
	h=To:Subject:From:Date:From;
	b=f0DpqgWut+XHmWQnFTVAFwhwOtlkgAIw8rvLBVqldOf4CjX5J54DIKNmwIOs7fs6O
	 +cD22jQGW3wk/vHpJ9tulPu9Lllr4pSmHza/Qcitwp67bh4JWsN4LNwsczfbKgg6VS
	 492P8iygT7v3IWcOjtz/I63C3iSenbVwsW4HrzQCrh7Qag4lFDnfvgZ+LEMYorME5e
	 o1MPLbEZgtoo6jN59cN/abBw9mKDfWl/X7htqvDID412mmIqfBxlyNf+i846ibTzzO
	 SWiwQeK3HP6dUoZIKn9e79e9Zmh+VcSB2kzNNzJZiL/dx+a/laUsoLedFjsGJO5H36
	 ifmAx4LVoRVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD268CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 03:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985395368.2037.14543037212392575060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cfbda0e3637d3e01839bd683b76172ba69cf0710cdc185672b18fb09ac8babe
Date: Wed, 27 May 2026 03:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779853953
