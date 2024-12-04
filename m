Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34150239180
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733354154; cv=none; b=Q0M4YKJf3tH3JJx2NnXD2Bahhg8kJSDh5d2u8EsCDoMnIZZ9PChcWaRxrfL+lxQRRyFyfAp7wUQ37vcIFKg5QIhSho0JrqR51R1PfSi5DdBMSDstMiDqrJBy/JLFQTFkBxYF2huzRauHDQ7iuz2bBsej8TrDBu22SCzNu2M6vew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733354154; c=relaxed/simple;
	bh=D6UFrQt9C/gUxBufd6LpFY5FWgLpH3gKyCKDPf35+PI=;
	h=To:Subject:From:Message-Id:Date; b=dZWlSA0Odnj7ZUY5jr4qKnlNzVZMatQ2BCOPov8q1uAOPCpDt+43ar7cAzzzi7DVM6uGjfsZUMhnndRWDGykfJcR8HF/CXwQ/xhgnklsQI9SPgIg6Ku37Xb+kgWpU3ZFD1W6D00djI7ux32/+HAPNQt8NBMO/tJBgYHsf/pZ1HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rorGBeaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rorGBeaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA75EC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733354153;
	bh=D6UFrQt9C/gUxBufd6LpFY5FWgLpH3gKyCKDPf35+PI=;
	h=To:Subject:From:Date:From;
	b=rorGBeaQGPmOm/nGhdHtKceXvPDq7f8nJAp4QR65fIMqgWOIeTZxYfy4HrlroqRSt
	 aloq+GrMYQls6jBeFd7e2oHWsKRn9LEySQ6tosk00QE/cziNYF5o17S+0DGlJrWy9M
	 C76ONipFpRSM1DbzeCljof+A9e/N1FhK9rgf8FBBZ9iH1X02W9DpqHTDZNTnEPWaBx
	 PC6CKEgRlmlJMBcM7DrDohXW4oidJf5jJKPn/hNFL0J/hIAZHIFjtEIkhm2a48/QK/
	 poKHlljco/1yAdpCqrx+4i2A7S6D3lYJgbBoNhiQDN3yorGDR27tmq7pC8APQlPuPs
	 d5xA4ZKpPXIcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B3FE7716F
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173335415360.18783.2222133344608145394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b94d4629c109cc422a4c74508abedfea49c8d27f45ca2a026dc52d573f0a09a1
Date: Wed, 04 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733354153
