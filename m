Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9A6372EE4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792029034; cv=none; b=bMTqxisj78kua0GUZ5CIYVlpLFlvlMXQwwEi1IEPXIT9Z1ZX0ezrwwaulkxTAL4wQ0yiXJYbBy0JExC1ktbQTFGCWyLnYbd/ITSJSwynItsSjKi74Zv1WuqKdUs9+VXiMjuJBm+Xka480OUl1zzdLvW1k3AiJeQ9Ivz7qOVzOeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792029034; c=relaxed/simple;
	bh=sK5QeM5tU8idmSMubCVx7Lny36DxX4KxHrbqZTIccpo=;
	h=To:Subject:From:Message-Id:Date; b=XHAUaghHsBW2u9EAQt51P1Hsl4DE151VX3WhkIuc5s4hHqYYxq5PtnGZCwzz86QGMMZkMDyR5DyPjGQRX4dSPJjgfTgY1b6OSjYXbQBsFN6jMlqlTC8K+QMjXswlKAGva9dKxhk3hu0FfjmmvnqnaV10kF62yCBnqTbVNzQXgf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJpoi9g9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJpoi9g9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F80C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792029033;
	bh=sK5QeM5tU8idmSMubCVx7Lny36DxX4KxHrbqZTIccpo=;
	h=To:Subject:From:Date:From;
	b=eJpoi9g97RxEWn6Nakzt9TAh6LajvoXghSGV8ttduunEOGOLni7XlW/DWc8kbDlSG
	 +wL0d/kLcVZjkZgZnsah1DgnhmPfhr0g+DN9FSroVK+D3KQmrlimeI5MvRTF7CxMYn
	 dxs/+yuvfRZdHhdClZRLpGoXIAx/cRlfIlVSrwRtlhZVjvXtoP8Ju7lr8lnKFBtLMf
	 W1ph0eZqo6m2o9AXhd/c2St/PyK970SN8oIGobajDNWKS22zAxjz44HHvbNXuAYP31
	 0XGu/T36fTF5SOMvqsX+/ZZ8p8CCLcrFJwoSZKjLekfk/GKF00Qc8WGCevvyOTZJze
	 hOxor5YjcZRgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE683CC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202903370.2830.7384477271544525159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24b6a3f3b96863fd364685e440dc3fd3b47dd56e7dc8134ba25b6b2e347627ec
Date: Thu, 15 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792029033
