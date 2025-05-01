Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3E91F4706
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746109194; cv=none; b=G8N+bPJ5PnaDGyIR2b1GSO8Ox0svioLGiOvUe0cBcwROlGOAzqbGi2Ntjcgh35DwtWL3hsgJKagl+KIEhuaQLeQP299K5e1YKu8oDcf0Cbm1aCOFCJPZ8klE3USzKIMh80o8mZAvjwcCiUQ04qAaoK936VyMuC4KYOpUZKH3kmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746109194; c=relaxed/simple;
	bh=04d1Cjf/kUFKZk2WY0MVVfN6lJrrfl2uMxOhJ12QZgE=;
	h=To:Subject:From:Message-Id:Date; b=DztUan7qWDFG2Ve+zm+YG0CjZVe1Zi0gPXnli+uo13Xf/oKJyhAuENRRCqkiykzWgEsmzd0UXzc6keQXbOCESpmtnJK30Gvvk8xdibTxOmMDpoC/wMOvYDXY27/rQhqYwos50Rqvo4cQyt70GocE/EL6AD36+CHJr0J9idkTdSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCeRDk5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCeRDk5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C861C4CEED
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746109193;
	bh=04d1Cjf/kUFKZk2WY0MVVfN6lJrrfl2uMxOhJ12QZgE=;
	h=To:Subject:From:Date:From;
	b=eCeRDk5X6IUIPgMgT34qIAhOtncK0vlALgXF1FmE+kUSTCXimPn4CYuSjq/6yq+hx
	 xK8BaKZcokY1vjuTO2zPYIoocMwd4Beb5WmXkDVdR3y4pZY0UreBJrrvDN+npcstSZ
	 7nP9wqf1d1m1GmTcwllNOoCANYY8zAW6m8SYZ2NUszPr8IHk5dZHg7r2qOaNdwkrXr
	 7hvBENB4nSIjkI3Dza+HVtONP4YfI0Y6AzYr5eBGxbMsfTsfF0eUnOmqGpF0YPkVwV
	 Y2s+tSimFBRWjPe0oO5VypXrz/oRMNLkZfuCEFu9FV/bJ4QfZNxGtlm0qNvDm/hDPn
	 vAyVHM1GIq8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DC5EC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610919357.14303.15548689673433442226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6390ac90404884d260f33ec71cf599e2c5ba76acf6be5a30cf29f72133583693
Date: Thu, 01 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746109193
