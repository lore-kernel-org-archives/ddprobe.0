Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9B11DFCB
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726971954; cv=none; b=iFPbMd40lq0Gh5RWfj6AezlbtR1beE7dMpkqb3TXJs4QQ1SKg6T0BiDXw6NlKtZTdsDbHNPFqgvySTJp1ijq2YdR2pFDwMtnNOT5FllmIZ2WTkbXzCB6m5FFqv41PTbVI7TMz3jW+OfVWC6qlo82RSif2ZVRG80SzW/dp1wcmDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726971954; c=relaxed/simple;
	bh=av618LDFpU6H7lWYr9qfM9+U4G/8fvyGcHRBlV2TQxA=;
	h=To:Subject:From:Message-Id:Date; b=E5DpuNYG7kPej2hiYRHH9BjQQFUi3oaq9K2A9kUImrC56Mfjkp07t390ehHDhT5Rjzqd2tODqqAsVGlZQ6n3BrvYLU1WbpN2/5QC3cajbfN5yKtbnsLc2Iucn7yiABZMnL8fXAPSMvl9shYgi3NKb0ybAGulVrkjhFmxKok/+E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/RmPbmZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/RmPbmZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1BAC4CEC2
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726971953;
	bh=av618LDFpU6H7lWYr9qfM9+U4G/8fvyGcHRBlV2TQxA=;
	h=To:Subject:From:Date:From;
	b=l/RmPbmZdEkTZWrnw3lLmYAuKDWGRwHggOJeiZlXVZc0jQfGSoJ7anJCq87Yk7c8L
	 dOgdHpw94S8Zs62gXYLZ8HRPDOA0hiLkzM37sgys/Jnx/1y+9dZn3qWZYPj/hU8xG3
	 E9HJY5xBOapHF2ZtVbQsmKz2vWqTnwaYCD8pzcuiQXyZid4SwkRDLaZQlow+xwUwhl
	 w2YhYUmWu/1tEYQgYfpe+55XnXR/FgZG5Y+cJAHofZfmtmQ5rNl2knR9QVQ/5NKsDx
	 O1MYAUhnxl6dTD37bVYfSbQfrboMigbEOCCqftFV1SO+Y8mKL7wDIfm3pI6SaPSA1O
	 wZlpQGoh3dIjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A9CF9C5B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172697195358.28665.16493388282608987343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa91587a49374efcbacbda1032317830c75c80e6646cd8715c36323900aa818
Date: Sun, 22 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726971953
