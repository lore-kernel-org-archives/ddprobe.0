Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C15381C4
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765644774; cv=none; b=Uws9SPrUTk00Q4ZP33hNgzjJVdC/mcwVo/sPooIZIByX0s1Gdcb0zFkunWBbGKf9Rjhpjko5s+xk4CW8gOUjOy74AZTEITh2drvK+yuItknzKJhZeXCosMY0tZQFdf3KGzAeCk0tHSKHTcT49IpboqZt2u/YrW4COLp9tTq+K0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765644774; c=relaxed/simple;
	bh=qHgRRaF6h+zxtqzz8dWP/Vxy6SIl6L5FnpoQE5/TdWg=;
	h=To:Subject:From:Message-Id:Date; b=isfM8BwIcy9l0Q9DeuLB62/QmtdG/cdUYa8XwFye+jyEe7Sshv30+HI9mJ9CE0JHhdrLwZE4sRmF8rsH8i40qvBhfRvJZvIreEbf5x0pme7qTys0LrDRZfnhCQgGO5+CiR1gw0yePV5INEw+MlRoc2Ydf/2wMtvWYmCh01Jajec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXhhVf9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXhhVf9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9043C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765644773;
	bh=qHgRRaF6h+zxtqzz8dWP/Vxy6SIl6L5FnpoQE5/TdWg=;
	h=To:Subject:From:Date:From;
	b=MXhhVf9Sfo0yUfy07Xh2TWTaUL4ZWlWwvfoMuKFUsTM22oevjL6hUj3A7HLosyiTl
	 rSiwGjsf7h8XFJxKHb4K3WjVtwO26Rotdzqy7gNsX8uX2CxhN1DT8RFPc2sUM9wrHw
	 TVAO+pO0mluidm04RSTUaooRNQoMp+uAld0YFmvwvALzhTvLJr7/r2znlOjjb5D19T
	 MEO2LzgMmonPNei2dD82bVV0eZocOH9efDXI6iz3SqxKHu1vaZHe0P8U2mvVjXOBFi
	 3Hw5Ie2vTmw8f1b0qdFSeVqGRBqxIDUa3S//IBMGHbX68DSX0efEPZ6E1CO1T8K2ee
	 iIQ8h/ZuF7Y5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943EDD5B154
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564477358.27004.17051887146599705357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffc0cb42b561736d187a71751c36f02d09c20de72be57ead94320ed9ba3e98c
Date: Sat, 13 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765644773
