Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385BEEC2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742774995; cv=none; b=i3S5iH/grIx2EpfpcjBZYRY/HTdi9wDWm0YsdOR4oRbulIdBg8k3CixNVPEZ+30Yy3qh7NYvWptiOdoQ8yxA1vIemRpjfXjXko4WGFVVIV3ToN3nFNu2XkSmjbISL4+qkZ8FdPDF5NJzYRbyyL+Vhcxy7achArpQGSAiCi9wbkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742774995; c=relaxed/simple;
	bh=iajKESlJDF1KlZ8sMOTDDI24Jng3mpL7u6W1ayiSpdE=;
	h=To:Subject:From:Message-Id:Date; b=RhbiD0NeD4dMRwXwkgYnAUH4iX2g5L9qoHF8u9IyoQKw1lFszSo5ijw3gsK2xjRo25NbRGbbBMQzJatA6qwtC+zXbZZyhbT6ZJuQX3AHpur/+tjolGvQIGKK8Yqh2998OJlzAKcN5AK8LxADo/FGsVwEGG4WDAmVga2/TZ5bjh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K63lXLS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K63lXLS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38ABC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742774993;
	bh=iajKESlJDF1KlZ8sMOTDDI24Jng3mpL7u6W1ayiSpdE=;
	h=To:Subject:From:Date:From;
	b=K63lXLS3ihE3VsBSrQYZ3NBF651XhFfdPbJZmh8b2ab3V+yAh6fL+qUQ0QOp/68A+
	 7JJNMDCxDQ87G22g+EFeJzjnJM7gfiNLVc69AfBnuY24UyxdrX+37/LNG04ROvzR1h
	 t+KILzR2MYpCHWOLGrLUiXCds+v7xo3jnRtj4gQg2dM/khjXjQS2bjdPYdCG4I4eQ2
	 24DP6PNlQzlRpxHfjWqaaeQCQw5brx8StvMl/MiBcBs4LMVXVn00mtwpYMRnsp0uv4
	 7ftAVH9IX5M0NnFgmNwl450qkyc+Vw+gka+/CrQo0f1QLCmIkcbi/0DsFpC3MZiBu2
	 p9IYQ0Cxz39qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D908C28B30
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277499360.15926.8000081944471961539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5b4353c0cbc9244b03123b161d941592d44bb37134abaa767aef55ebc45e53
Date: Mon, 24 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742774993
