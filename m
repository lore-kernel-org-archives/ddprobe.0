Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2B03DDCD
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725459354; cv=none; b=uF6X1SBekPmEdPPra6MEnDdXFGWSBsmURoeZ6wcoRKEr8S1HbT+v5zqMNwFO9mAwdqMfWAJAm0plJv4RsnJMFUCjnPhPcU1A1SsqATvr8UXUFbpE4ZsAjhl73bxeC8EqZ5NxABkhs5FERghK9XyvOhuAzj2BDhWM8q7QY8isSAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725459354; c=relaxed/simple;
	bh=RvSnxmNEWfIyZ5KQW3bclC82A1lZ4fMVR/1ie15CA4M=;
	h=To:Subject:From:Message-Id:Date; b=i8tcqVhsNoEhGsIPY9ca5eBIROGRvjqsQYypXhS+LBM2mZ83Gfg1agSXJ57qJW/PnvRMRwHjTtft8/MO5ThCBoY83sNiKTjkPp1SYBk+PVM7xQhoFcJD2bdwqIjroR0a9Z2snrupTP1FZm/7pkHeD0Kq6TJIyHSxdcr+XicV5Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBTIexc5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBTIexc5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD424C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725459353;
	bh=RvSnxmNEWfIyZ5KQW3bclC82A1lZ4fMVR/1ie15CA4M=;
	h=To:Subject:From:Date:From;
	b=rBTIexc5crC8NCZEtlf1Ebq2f7sV6B0hi/D6oZuMxBun7peKN/QZfS5SD2z3qVQR2
	 SA9VznSKiucxhpELuGNL3qEH94h1FrywcVPM0CCb0E6gJDUs+ez3ORBUV2H7VcbxOj
	 5dlARAaOxKvnh1TA/K6eYokYlBCdd33CDzlFnmna2cshw+Gw5lBDKI2zn4EwhMYjlf
	 dPzlEDdbv7DfuKpfDVXFuDEEaoGEwf/PPVz8AB12QkiPkcEJbgI8eMHlfryNpBrHG+
	 vmFSsB0CA24riI7BO7TvNz7tTCY+d3xtdQ4x8Mce8+7ScxEl/baoLwk89R8JbAoVzf
	 KtHYzZRI/84sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA99CA0ED3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172545935363.19828.6498701523634435331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26a23781aa6e3a8c7e004e6255ec66914a9f3bf3e879392271035eef69f133c
Date: Wed, 04 Sep 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725459353
