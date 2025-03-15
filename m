Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DC88633F
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742026134; cv=none; b=u80ULftbMHy8FUZnG1/mo+yQemmsnF7h4se50XEPEGOtuD0JRD3ryxITa5SnyRdb0noRwY0D+Q3bnIpXUl2P6XYzYrVkFxSDRehuFrGpdU5aWwbC5vWaqNX+FmBefzhgyTzbir9OiOql9llCRyOahjqSVULLT8j19xMPM3X9SJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742026134; c=relaxed/simple;
	bh=+uVYgA8bzVlulKeCesYCBBPHAHBISUKqg0ECG8o6cf8=;
	h=To:Subject:From:Message-Id:Date; b=cdrb9DMJdTDbnKlE6rHgIRcKqST+lSn/pafGYPKaMEhxNLTu+xt77D0VKi0okhUQjNXBLDJZp8fZHUBShRq7mQSX2hsRLt4+4ssT7Zi+0bxyI4nBa5QN/I5MKgDPHKYvzGkJ8xhitRz5PK+ozBcfw7a+LMNvdzNGQAHyrjazcr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLceVlU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLceVlU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A328AC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742026133;
	bh=+uVYgA8bzVlulKeCesYCBBPHAHBISUKqg0ECG8o6cf8=;
	h=To:Subject:From:Date:From;
	b=LLceVlU1+7Ef3Ulf54lDoXIPxHeDvdRg4cj9VDwUulpA0WcmzFF/k5gcHF4C3oIDE
	 T1M6XEgc4j5W/qFsTFLroE3jZoHPXRiQGxR/snl3yVajXe6WQfowsESD6osg2QE5SB
	 f1rgNfg7uAKxVXPVCITMugpSi7zhNCv0xxE0GoS7WE2oEZirEeyS4iK+LuK5/Qh4qh
	 PtjdkY5rMudioXkd+WBvOHW/XpJeyhnBQa9dPPrHqFVhHSpUz25QJrOp+m/M6u6PO0
	 KjuRb0StyFBJpN/eaovDjMTn5k0PDHpIfBvwCixamqTEnyeEI4KOPLLAiqhtajwtHc
	 4rseZaWcOZp+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB7C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174202613358.29856.7143708746944809199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11c81850c5e4544bea14cfe8034e362923620cbdd6a25ce064a7a7c068c86544
Date: Sat, 15 Mar 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742026133
