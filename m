Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591C31E25F8
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747082994; cv=none; b=Aieb38PneTr5NW86owYy+YKIKqE5AZ5Wn6cXFD7gVBwWBe6yVd+5wSQaXSwGyKHjiu3UjGYlso+2Tl+JuZok1Vr6kQeXhb/gp2LKrVLV+BLFVjhFUgg6O9Llb4ad84xXxu1UVZdXdSUouPtaY38u6FvuIWhGzU3m3whriT+6HtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747082994; c=relaxed/simple;
	bh=MbO+34VYrzYxGUiATFiLIrQUMNigsfMAtqOTJwXAd84=;
	h=To:Subject:From:Message-Id:Date; b=KeLG3/G417zKvCnCD216q9sgmn/tzhD2jaa/CfZgiel9CX72uY9O5vFYZbedVQbJVT5xUdqRpIFdohZe0SGOo4ClCiNyZIFS/o8SJ6grjjnN1Kr93QqMXKGDKKPPT4zg/HYObgFDdmGWke+EDLqGhwG+hpfLbrK7XcIHs02hFAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XR0UPHO0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XR0UPHO0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747082993;
	bh=MbO+34VYrzYxGUiATFiLIrQUMNigsfMAtqOTJwXAd84=;
	h=To:Subject:From:Date:From;
	b=XR0UPHO05tPzbtUmmJXJIorp/srZvr6V792AvRLWULuv5i57rvSW9/8yFYReDUbQK
	 LVDz/xE+442NtD4wtkyXNSGWEIw01mt8CR+jT1G1U+myxbP3QPaqtdTpdAL+0cowQa
	 Vu05TBBGX/uEMxczFNk90Hc6S4eNZtTQzcpq2JehLFQKZLF68ZKyYZDk/IV64FDqNx
	 k8JL7Nt/i0DGTXpkiI2cmYX18o3lCtC7YrwaunlBxMDJ6sUn8L+wp1gAF6+CMZjKd5
	 fb7zuWCK0CTDI2XfZfs7mh456fVUrVDmZI3rfhmlArPJxohtKU6b72wp/ZTs6vQ04L
	 gRlsaMtAvLmmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F51AC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174708299358.18947.7709215307076935981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 348206853ec24662c1820ed2d42a48625bb42e5203c5bf3de3472c6048930623
Date: Mon, 12 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747082993
