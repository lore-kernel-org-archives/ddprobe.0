Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A6B2E416
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725147954; cv=none; b=GFkLTtEbnNU/4nmIb8afn9NqdhlWjN8/fxkmakIOFEaou6jZPsQ4+ABEzXicc+AU8iaHUVlMXciG8jSnO0n/lFY5aKOOk6jt52krxyCJXLI2oPG9sufWJxNkkzHrxVy0BWeWrCWWjE5yaT78GBiAZ4sNclKLYvOXoqOshEPGArU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725147954; c=relaxed/simple;
	bh=tlo8YwtYo1/JUlWVCfsLpL7ra3vMazdkiIkOxsPp11Y=;
	h=To:Subject:From:Message-Id:Date; b=u/JOo/6as3ACIiuNKS3LXtDPYsf3Ew88Kic1aBEfbW0oQgj73yer+LbeJcsPcg5PZk3xVWF6avL6xSNENDpObAXV5H25orOA/y3/OHrukiLns/6HoxTpkZnWCokubzNOYekEs6V5O6Y/mO35sHX3cx0xfABAtaR8b4rkaYC+GqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLGb/xGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLGb/xGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A6DC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725147953;
	bh=tlo8YwtYo1/JUlWVCfsLpL7ra3vMazdkiIkOxsPp11Y=;
	h=To:Subject:From:Date:From;
	b=XLGb/xGqyUXhMBhRQsQgL2q167v4I0vREuKPW24SwNFM2o9c/RRiNzWlV0VT1csbl
	 G9NPJhiNl8NRYtkwGxAQjGYwEYi2IYG45w798NbxTnb0sBx4rJ3n0RFg1SOjtshvaK
	 eQBbUFmlzuOcwWyBbPFUiw9E58wh4WClL40HquU6Xnogcms49keK0zScPP6PZosYrF
	 PQUTYy+clJ61liSlsltZA9B8eSf82uhr2YEWYuRK6y4va0bbdoUYNI6rYkWyzWw2VN
	 gMCZGPiA38w9mrgfG5+dHXTeKUqcT8CPuOSgoTjWak61zm6l547rNw70S8sv6DAdYq
	 9QUeJDaYybw6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A21DCD3425
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172514795359.30076.2681495041045357740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70a2ab663c47c913aa6a7234b0c755ad2a448c677e4c0e63f89261e0d4f01e6
Date: Sat, 31 Aug 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725147953
