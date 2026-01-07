Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D967E2D3A69
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767775433; cv=none; b=jlsS7gN6exW/rCpZyzXbf5o0UuQ6lsieF1VBDW6Bi1AFenIjArWt7D6PIxJjUY5+uDZYcEQFRVRWgLUwRbVzSjq9yDKq71VANlWnYQasztXSqDl1V4yp3kUb91qgMsAfiqdcp6pRYzeWssqlxDsjaNK5ayRK71l+Mx52PCKnMxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767775433; c=relaxed/simple;
	bh=8v0iiwSkXA0KL691mN3Q1wivpyroknLZ1bRMW4yY/mo=;
	h=To:Subject:From:Message-Id:Date; b=k5CNq2QsVEMbUWEnqjTFbvLAwCz1+K8kUBv94RiUkjIaObVoP4BcrC+f3//ncF282CZEdtX4azr90+roJvr1PMZl9Zhhh0eROF/1GtP9kwQG2FUsA0+rv6D7liIZ/cjij6oGuOLAeRqTLWbhpeFIjUL63kWrsmTqsxIYxkhaKIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppPqrSAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppPqrSAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCEFC19421
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767775433;
	bh=8v0iiwSkXA0KL691mN3Q1wivpyroknLZ1bRMW4yY/mo=;
	h=To:Subject:From:Date:From;
	b=ppPqrSAAtGkgHXg+ZDBeZSvx85PB31eY2oVY4wVcO4NSkkftotP9jgd+uJDu7E21D
	 FtdSpGASy9nS3jAIs89WY9wTV7wX3b6/pSY1UD3N9WqixdLsXxzADr6XVDG0O51fGa
	 0ihorPuoUwFIA+YbJreu5fStdCOK9N1owkIcbrrMUrbHriVJnCTv/l0n38RCDcRkbn
	 HqXEEtDMYqZeyNyOj8bxSH9KtGAqVIUsMfi/XCLGMNbNPhM8Tc7W+E6ES9Gjc0ZFvl
	 7uK0vTH8ngqzbgDpngMJY0W4NSx1N6uRk9K+vsiYDYnBRZqJxq4bpaG4UOIFJ2jGsX
	 dq74TS0yposcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9ACF6C00
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777543358.17908.11874100207306418450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ebdb361a9aefca7ec1054de10d52df1659b6f1f863bce6ccdeea01b853c531
Date: Wed, 07 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767775433
