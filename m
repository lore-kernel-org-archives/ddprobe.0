Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D7A213E9F
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754091594; cv=none; b=IuL1QLc5rrhlUOd1VqxSA3bEgfWJK8lUCGR1ijidU0khYPOgSurCbCpN0qGsW+QfF+6OA+EU02x1swiJxph1db113nhfVbDPB6LIxB4xx4tpBP6ijf83gP52O1XSWUYsQINaHAPLnsyssKzd/QzWsuCp6XJIHFo4uuvfQJQP8f0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754091594; c=relaxed/simple;
	bh=bHloj4/XCqtmGMVh+D2pRNSXI7Zr7AZNLu4f8qm8vus=;
	h=To:Subject:From:Message-Id:Date; b=cQhoGgaoIEIjurYH+dqKrpMwhBpK5n1kP57nLZ7g5WSBi8g468fNv3tqAtILnT+B500ikaN74Wf3rIfpo6VPT6YXAirJxrSTuiYeMHXT7bA2uaJYufXeOYwv97UAXehwIe4fyCiBQd+A0vQMuclv/OdpsYvfRG+yApRcGiAtBEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsNMOf9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsNMOf9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6CDC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754091593;
	bh=bHloj4/XCqtmGMVh+D2pRNSXI7Zr7AZNLu4f8qm8vus=;
	h=To:Subject:From:Date:From;
	b=rsNMOf9/HCNH2d7GDBF2aU5F2P1nRrVlpFHJYSsK3qZfB2KTTPODC7OjnxaY68fwR
	 BdPAQyeXsTM+TOzFNzG2iDkFOOruT5Dh175C83k69MaOFY0DQT+uOIa5nbODlKvSQP
	 uLLS21vF0ZUdpQvXVsx9BClGQicVPackGYeJNIbW+DQcHcrcIhRsgLu2ToUWxzSnif
	 dkjyC9ijxWq1nZ8yK51HQKsUj0TPnZWtdrvKSNJ6E+grIgJQJduoN8pPEh7dhaE5MK
	 EOAfBB3pYdyqGPMxaZ1xIT532vrI3gYE8hmi49fp81bz86zwSqbw1Y03IdBA+dGP/x
	 UdnI/Lv90JQ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF77C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409159358.4763.1205748572350835147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4474f941dd1b223206d398119119d766a99ac34237148f01d2cc20fcd4ff0e
Date: Fri, 01 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754091593
