Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F46285CB4
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762886394; cv=none; b=IqERY7S83/jye1f9Pe0Fj0lp42g/g6XusW5om3NyE+AhuGMW3xGvT+uz9NXBudGSOYmNs0Ivod6VVkhCulWMB/9bKKUerkjgMLf83tI8pTp3VPTw9RLXu9ayZZJP3JYRzvmqa0MO7nhkMztcCEKeYLq3txr17hygXW7GheWE6lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762886394; c=relaxed/simple;
	bh=Qo7GSvoLBi0iaPnLpkWxKDHospfi5Xzip4+MbY0LpGE=;
	h=To:Subject:From:Message-Id:Date; b=dw9fAVJtd0+J6+2fekW22WKYAY1957Q/e5/j/cEkRw7z1NIVVDXYqIK6sfwgVeqZnpOtLUMVkeXmPLHvK+FT39Oo4Ld56MjiU8ZTwH2PtsRZ3jhDpPnGSoBUMzRwIUsbhTjKD/AfwYbgYpcaU6jQTu+GyEQ+ZJkD9atfKlnW4Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Na0km7T4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Na0km7T4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02DBC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762886393;
	bh=Qo7GSvoLBi0iaPnLpkWxKDHospfi5Xzip4+MbY0LpGE=;
	h=To:Subject:From:Date:From;
	b=Na0km7T44KhTLoIn/aebBaGKsG8BnAFM62USMFaZYS2OvIW976x4I6XO5iNqbbq/f
	 FFXf5MWKtNtLdTej/PZvMvKMLjS8431PisOQgyAfE7iHgCOoph7dsG6wRAYga2vskQ
	 3DDL8EqttwDKr5nH0J87v45q+fktdlbl0rhbSA47h1TY3FDnlAn96H0WATJMr9kKgm
	 q7UU4Ftxh59IC4savM5ReCHE7T9gEX0URRN1pSRiylRXvPNEvsMQ75vJ7TnL/jKzM3
	 IBypXS8dl3mhYfy6aS1xocRz3AvglUyFiKnorbTVdyTlumRiOYgc7kuQeTJzhDHXyb
	 0KnmlduCOdtTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91568CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288639358.17297.11349558647278837504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c3410cdcd205c83df11153eaa946be470b5d3518d5b2697c6e9ea707c554b4
Date: Tue, 11 Nov 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762886393
