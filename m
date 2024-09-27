Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C7D18A6DC
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727438753; cv=none; b=V48EtT9rGPkSUqdJi191l5MUCgP7a7MbYgsEWpfFCRRQ3j8bGIjIdu/YGliQ3mBexNqYTYh9vF6ck79P7/xbz2B8aGHmgzxQoNH4hm6zeZI1utgbu/BvFNHa490tCh6hEZyG4lbhnpYpNijb34JpK4eARKknWxkNApAPpyH6mVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727438753; c=relaxed/simple;
	bh=7NO1m/UVSpU17SlU16hhXjuy74fBKZhgSaTsIqkkJqc=;
	h=To:Subject:From:Message-Id:Date; b=dOSPhXmLmcQznTWreqgbEj1Ovly9e58MYh41baNxRZvDrvD7/JUPiys+f0YNIYa4S3Yu8YqnDWM78AI4v2zyoPJtfrLkN0dFKVyznGHrVz1ANqkNKrPW6uMiisBuH3xumoDIFk+5dZCAE+YFgCOfK3LpwkDOvAPILRXhk03SyhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYgLgYiE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYgLgYiE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90FAC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727438753;
	bh=7NO1m/UVSpU17SlU16hhXjuy74fBKZhgSaTsIqkkJqc=;
	h=To:Subject:From:Date:From;
	b=kYgLgYiEziIs78JHttl75y5lbSLIPRTmI/2Jrt8fav+GakTj9jaydgmT3cDzkD4Vm
	 gsBloobSFkZ3AmaNU3uPgyO6wtlefXQdMvtfek2RJV8TH+zSBmGPybaQmQt5NBRbqy
	 QA96gWO0OoCge17Ogu+8K8rt8trmdzzCmjeJrGdfx+k9gC2YnzzrOt7i63D+N8y7f5
	 4gKOGworeVHVofnWz1zwOSg61WM4AU1matgXj2kJwLXASj8M8Sg+hOhE8iRNGBg3D/
	 5IeYyL3eBMMeT4tgG3co0jQU8YQvvMnxfIwsjdLm4mqtj4G1HoshgCfRzsLdOOyz71
	 /ceyWFK+kkL+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9720FCEBF9E
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743875358.28614.14723303776520718113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72178771cfdc51ba2744507eb2c1c1ee8b28cda0519548b3e2fffbbc375d12d9
Date: Fri, 27 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727438753
