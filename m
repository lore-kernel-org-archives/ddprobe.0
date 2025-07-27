Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398AD29D0E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753586994; cv=none; b=iE26OSCxbhb0aMf/ZJWj48zZI2xyIFezpYXhpxew2Wtpqf2S5z50Fd1UK8hsntHHnGvB1YJohk0k21UAN/fuqwfonnzxORnnnHR8+78gSKrJxl+W1BfkSFDUnmAzfVya83xU/AwKjjTnzZKqItXDy7SyAq2gr4uDLqTQFmp35p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753586994; c=relaxed/simple;
	bh=8aQEWZmaii2C6SzOk5F1XEcs1Kj3bbXN/CSA38yGyw4=;
	h=To:Subject:From:Message-Id:Date; b=BgZ1dO/wvjAklnQo8taoQ7yh725MTg/BMKi6ohlqlWCUJljtm346ahHuNjolyEDrJQE83m6unGSBMoK4sfeboU6pIzkFjLQD2Y3qmZWfgAChhr75LLIHWE5j/vhj6zJGVWdFk8xahese7FKYu7pHcH8RBLtB7sFvo0pe0DB+h0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2xcNh44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2xcNh44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB51DC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753586993;
	bh=8aQEWZmaii2C6SzOk5F1XEcs1Kj3bbXN/CSA38yGyw4=;
	h=To:Subject:From:Date:From;
	b=E2xcNh44odo8o8+5b0Fizy1L+Sqw7ncj9nBYhIgEqDacPEKU6vlcYSiVDc5W88s8X
	 xfut/l7g92C/d0stEZz6spxcVaTLJ/4OCcK1AqqOsaFWYV8+W8BUkXCc9mAlcN3FO/
	 p8bIUpWlHgKbzav/b2Tg1s9u/rziv25pkPqkJTy7y7Q0mddV19mU+Ax7fU0q9fb5A0
	 DIzGATPgTvVCxykwH9iOSGnzM9uBWzcdhJVaA499xKXpccD8PgEUv3phg4rydb0F9o
	 sux/iGoHGVYpCunqQYGElH4glVVKdRx2IqdpI8H7R+vRKWvuCTKMCKLTq+cFzCaa3W
	 xGrKH8dS1Ouyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954B4C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358699357.22291.16691766975761391987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd88a8b34d8ef7c828eb80205dc427a5c1b8c292de0f27dfcdb9d88683d64678
Date: Sun, 27 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753586993
