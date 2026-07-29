Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356D04734C4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785324034; cv=none; b=uLfkr4jzVN3InJ0R6tTybhHmEFGxjQOfDT8LWtOtT/0x3y3C6rvEqdI31TfImF4leDeKtHsq9bApRIysC0FSnb1nlT6isPkccXexmEIyCILV3neKLyYeKBBfI0ln0NgfM1+9pPz9O77GHG5hIFngLXTM6HSWe7YjXSfpo8wL3ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785324034; c=relaxed/simple;
	bh=eQXfhf+XvjxtOUYHg5sJYeQFDna9DOl85bBTFMA4KXw=;
	h=To:Subject:From:Message-Id:Date; b=q7XlFiTD0VJzY7EIA6pScEV1B1jtlnyPcO1x4pakO4u315Z09DTO9p82M6RWoq4quOIlXIa86GMU/2CwgMcb0Wjf5elKt+qabsdOMqKpFvILbWFqJ7DGsJ0RFHdGBof/e8bKXqcXI+msgNWdJbo/wxjb+WiZsOw7x4dQQLGMlks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbAikJo+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbAikJo+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB04C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785324033;
	bh=eQXfhf+XvjxtOUYHg5sJYeQFDna9DOl85bBTFMA4KXw=;
	h=To:Subject:From:Date:From;
	b=gbAikJo+hL7xRFNX6oK7F6XIIma8T/nOOEVnoTUGQekvL0gzS4dCfNdBCd8CY1DX4
	 wxyFZz1LibZCwLQGWFPWRpSFkUlyncAtauFoh9Xu2tfwfenL8L/T4p98E/XRJqWEw6
	 mFIVCMdB4LkLWQR/O9tO0r3cGP1tcYY3ebNc6jUZ8z7R/3Wa7u3D7/8iBS2z+mFmx1
	 dzafhdFSeATSJ6dytzrVAun6MzluCu2bGa3g5NlTbRsGECF2YSQU0kft4r4uL+MFh3
	 TujZ/iEA7OLnxSIpkE7l0BPnqHRPToTIVXzVM4Y9X51kXv7wMEHN1AkLlvLh7haRIV
	 SOtpi6jQDWN1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABF4C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532403369.12605.16251073115829297713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828c8ce5e376133296a192097ae65e554328c5d1fb19202a41eab75b425f54c2
Date: Wed, 29 Jul 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785324033
