Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B311F0988
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745429994; cv=none; b=n9msIE56x/utqMsHVupxblbZx9nn8myBrBYr/4DgHGlFK0LIwrV2U42wEDRq8tGwJ5PbLaKLHGDUCSs0K6kKx8+gcz6y++Iv2UqLEbQkfSO5rmNmqRX9mnkj5W/L9kUr/pfABPuf86yD59sJmdQCbnt629RxOZhgK381k9axZLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745429994; c=relaxed/simple;
	bh=V/rlB08g7biwt4khEDv3JsFS6aZFcAP0PtiLBayR8PQ=;
	h=To:Subject:From:Message-Id:Date; b=gzd3F4z5F2I+TkSY7SgpeA0LefwAm2csWMhaUNluTqKz+B9dFLeYGaf0kDzxK/AgiHLuR5Y/KfvLk6MMMHhfjf2BmEJOnu57QLH6iehvpwH5FaBYbZPv1zsCvfo08SmEOb4gUHCyNbKAtsYpN7rOcRSs6iWwqqdTBVzSR5CEspo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aofu2HYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aofu2HYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEAAC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745429993;
	bh=V/rlB08g7biwt4khEDv3JsFS6aZFcAP0PtiLBayR8PQ=;
	h=To:Subject:From:Date:From;
	b=aofu2HYImBL/clyRBesykL7jCiEteAXN65rndrUlFAANQA6Xu2Njyg9DqGOvF5bZb
	 HDQNhvpxsraJLxJkzQO1cXn9dAoaGFVi3BDuc+cnqn3zO+Hm/o60FOaZiNVLvqqnav
	 2Ty8eOCk27EgrDTP046OcMFitG3hpCx2P0KwK74kEUQzD8swByCpCVuW8ct6X99v7A
	 Sg6whwnxIkdWRl8hDkGKakc2ErUJSXNDzGq3KLlk/FmCa0PD51BJiXbDTVyETOGOZA
	 pE77XfLTejmvp8otAbS19EKOf535icgsug5iqO3ho4zTH1T+rJAbudEDK4v/60TSjw
	 g4dHNapN6QK2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC33C369D3
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542999358.11716.4791698091343670382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430ddfbc45d10b79656a17fca90afde9890affecf57c05f15bff2d347cd19d0b
Date: Wed, 23 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745429993
