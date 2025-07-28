Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A439225A3B
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753690794; cv=none; b=HRS71HNewZWP7GysjyB8T/O58jXzqDO8kidpvWAN2uzRYMBYmDNfvJNY5Mzc2/L/YsBvH96qifDNxLdDkmof8YiHVuCaow5lhzWdeN4A3ohvc3hcs1DzX96uRKXpZqJvD6KE68EMbvpWdP/Z0l5HBy2MrRQYHQ+tCxxPOs9TuU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753690794; c=relaxed/simple;
	bh=4mH+bvSwsS9g+CG257ljq/HXHi9uQ2fY26w2+aU+Ono=;
	h=To:Subject:From:Message-Id:Date; b=QmvNtmONIkB0dLsWggntG/OGYFnVKHs3Nuvt7L1a89AtIuQyCoFGXqUiEuWk08+8vTFJEN/AwjEoSKDQPT2p/CGvirhBTa7aK3XtHxlRC8sv0SsqxyGT1GVEV5OHfgcdpY1arwlEigecR9CHjp2RuskhZso4h9k0HTVsuBU/Z3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFgDNDa2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFgDNDa2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0877C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753690793;
	bh=4mH+bvSwsS9g+CG257ljq/HXHi9uQ2fY26w2+aU+Ono=;
	h=To:Subject:From:Date:From;
	b=VFgDNDa2kYP6tcKEI1aRW6uYZ2Nf2mEX9fXaITJJzpwonF7Vly8vX1Y6iPmnI1Ne5
	 7waFW1zisAgy3m3y9NotOsMQv+Ua+DWWeC1rKCEO5YJK2FWLI0gt0hXMcu+IS8LHee
	 LmObsIdCmX+cPjO91S3b1LRWwnF8G/ldL1oBLzu7+asse6KmEwo4ZmOGy/KtKV5g+a
	 FB7Zkn/2dEqEH33zJ4D9WpAZD25k0czB1zyf3RV2LcaGzV04nkxYVnLm5tjc4MRv7E
	 H1Dxdt1zWCtYAtOJXxCfwIUcu/eJz4fnV2msCBNdwzvg3+3lfobFMtc30YW07ln/pk
	 sfUBadQkZ7/gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDFC87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369079357.4739.4610006169915121409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0f9d9aff91549d5059bd18dcace1f1daf9744c7711672333d21c7c70980d32
Date: Mon, 28 Jul 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753690793
