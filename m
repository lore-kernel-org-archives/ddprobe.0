Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE1A14A62B
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751423994; cv=none; b=jmtkG4RipCSzbCa2q19Ogmunn2MJf9DFNo2ztaZZMZK+AQWP1ARIpxWoBOCHACbp4kzg14PbAO4RK02gOfTuCN9RUC58hzZteQMj7dT/FY1NuY972OnNvqiCLMJsWHhdRss4n1HHRZGs7O+8PZYslVKi4z08kc8bz+9/M1WLHpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751423994; c=relaxed/simple;
	bh=8FlNYeeyL0dufy9FwiXVHS/EqEgR6yslkcOWGWq7UXY=;
	h=To:Subject:From:Message-Id:Date; b=rrGOYhAdBlsvA8HTYMuYBQez0ML4vW+00YlhFJJ1p8JjaWbSkuog/8xwdwjEfsKTg0Docr3rVfBf0E4OviNUoRqeFlXLHOczwOWBJcGmcZstYxygjKYPzrcAszEb7bftyklB0/9dqCZfRb95n128ypc37//M1rmgmSsQ3dZBqhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NVqFjleB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVqFjleB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79C4C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751423993;
	bh=8FlNYeeyL0dufy9FwiXVHS/EqEgR6yslkcOWGWq7UXY=;
	h=To:Subject:From:Date:From;
	b=NVqFjleB4KiVa3pRPXGFAPnI+RhmbGXIY9BYFQsKuoqghEAhtxIJMqgcRq7EL1gwi
	 YilbdYVwmHCQr6qCZxcFZ/3NHm8oxjuLYVCwd9itdN20hNsZ9wpqCdwURAjrapWC1f
	 JI6lPBthsb3FmuTV/PlRd6vFWxWJqbJqO8FE5tH+M1qnrtpvc+qK5XWgz1D94vcY+Y
	 mMtLyQBQwoxedeEIyk0t6BGzmxRaMC5S5dfg1KeDj2zbILYxbh2Oh1M7oBwGgGV87p
	 ngOTCdu5anN/I80Rh2C6RNuoCnsThoPNNoO8u9JZzSG5IXAnN+mLGnuyIvhydEiovR
	 8NlX9lN6i3TLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B33C8303D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142399358.30795.8778377883762993161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f04c31b35adaba1f14a6018071d3218f8f2edb4b53750e40a4925e310e49e86
Date: Wed, 02 Jul 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751423993
