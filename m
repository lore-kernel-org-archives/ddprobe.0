Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3453F1B3950
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743005994; cv=none; b=ZC1VXFlcl6vFO56knWVoR4ZnoQWhMQ34tn+YttCnXnR9/fArbJiYehy5Pg3Mj2PanVJ3ZnlPYKhdZYs9cDYypvhqt+zLoIFjIOA9h3chSr/6e//2XRH9cp68tb0FCUSz4zfe7ECaM9f9E1FgYO8ScbLI9CbR1wrdyQqM5N5qEVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743005994; c=relaxed/simple;
	bh=58qOXISxpcyqDt2DuX+FdtZ9HFrK+6Xc8sDqsHPIZDI=;
	h=To:Subject:From:Message-Id:Date; b=plnsnxGS+ogfUZLf7to1ilHv13dZjfnGoomJYLCl17CnSf25MbCwCRvIlfGQB8ZK4IFFSD83ZAAImb3eZLhxffYWtP8riqRLBnSHeMMjDhSSOBsADdZmmawr9LJrW3VBnwDjgArgSyABXNrrou9A3b5Ut969fkESEFoteD0svgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9Qij0E0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9Qij0E0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA8EC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743005993;
	bh=58qOXISxpcyqDt2DuX+FdtZ9HFrK+6Xc8sDqsHPIZDI=;
	h=To:Subject:From:Date:From;
	b=Y9Qij0E0bdnaas5Vh5OsDL+lk77wcQF5RjLV2xbu8YA3w2O4DyUmiHyZIu8rSM8dK
	 kDMy+j2Hnd69WHnBsYnKUidxahXZi0WrQY9MMuA67wd33s65YN6V1Qa4LtzROLTwOG
	 BHdsrwN6dn1Qw9WqAF+zuS7dN9Gz9awwnF7sw5SR9dd4lqmkm7P+Aj3mhIQcjc45oN
	 5knkghXLE6EiZmRLiDiwexFFmrKK5ALgNrhnAzsVKlAXznSt3o0yKrJ3PmmgXKciNp
	 yjMKAusWGMiaS4iMHccIMTpX3qYs4pIo7QDEY1EjVU14X5GA42/tl+N9fTKL4LqPyG
	 tErwNp8lI55+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9910BC3600B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300599361.28034.7117796825847989216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8995953f22f807a9741e7aa7e73a893a50d35601f576d02889f56a9ec29f4b7
Date: Wed, 26 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743005993
