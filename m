Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195EB347C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756796994; cv=none; b=Jp8zeBXtWVJSNRHvmPhHJ/lK9O5Gm0XXD8HqrNA1CL8uroQqQnawlmrlmSi20aDEVvrguzXLB9kg8yWj8MHXUIO9OsiGiE3D88FqSNj97tMhCC0cpK+hBIgvuQtSZ0ijYlblMNvh4R4niXJ011iaMJ3ysuc0Fz+Zd2Pn4BYSQqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756796994; c=relaxed/simple;
	bh=1fjS7TLO/2EmYgL8r0nCs1aCR3TB5hlfimcSBbdwgQs=;
	h=To:Subject:From:Message-Id:Date; b=pRV78LePZZSan/D7myfws4AIdPVA0PwavwEAU6X/VOh7NfFRlGFY2sHoS2yVSudNR93ZjTjiqrEqJVDa3WN4wD1vF4tJzXbd03Ju/rm2z/z8mmF7xBQDvKIP7cm2w7uakHajcCbhT0WrLH/mkKzeMGHjP8cR14RQxF0EQGl7hzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4tGJAtZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4tGJAtZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0F5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756796993;
	bh=1fjS7TLO/2EmYgL8r0nCs1aCR3TB5hlfimcSBbdwgQs=;
	h=To:Subject:From:Date:From;
	b=a4tGJAtZkaE2bfVcTH0T25uhWdRa9QzGOaFQPeu5PLDR7Sfp17hDVsCtMtsZ3jIgt
	 YGL0uqJB+wIELO1tPUKRejLYZxoCMesnLTjr21GVKhnuI87ifevISqgLBtftBP8Xb5
	 tpHbSj5FSvniwj19Q45ZNNCpG1cHw7VNjNKaxH3EpRJ4J8f8CWc5uq44vZ85Pzex3u
	 DaYE9jMSZdKb3b3HMT5GcdHTz/izTE2d4aRA+V6cTHN7bhdQt8RKQDYo0absBWUKTi
	 KizoI96b1c76UxmJJMuy+dzu7OaN8GelrDOJxlatYWwKBVKN51hsxtuLBmyqn/bxyW
	 pgRd+BlJzXIeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9118CCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679699357.14073.3171917754112593485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6efd4e7a7ea01c35a93c499c7d189be32c0981d86ea9ead761557148462bfa2
Date: Tue, 02 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756796993
