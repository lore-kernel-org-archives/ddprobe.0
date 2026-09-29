Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDED5275BE
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790687434; cv=none; b=LRMKwEqSSxFTEXULhzbmKSroJoSewqgJgYljq9nO6huZi215cwvfG8brk5y3ShYYmEjzp/q0eGt++dM+ptsrTedd/+pDA+jyur6LonBXulQZAim/KziXOTnc1LxmP9gggnOt1s0BaeZ+M6ss9sQ9LRwhPHA/StAYWfQhHk+wokU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790687434; c=relaxed/simple;
	bh=CewzjAPpKnNzsHBvV4R3digQZc3CfM4RcI2WC/FdaU8=;
	h=To:Subject:From:Message-Id:Date; b=r5lQ/3Li8+ireMbIH5rsL0PkYaQwaRiEsj3EbBLmoCaZZsK/lZUhUE04UGC82ZIv9sO/YUuXXEee6ctlTOqET48m7rIg+PBIF5tXmfWqu0dD+1mgbi4Nw0UWet4DSlj5gpCbKBDLDEJlG/QsyECcPecwzUFMekKcO8gKK9AiedY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScvGVZSB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScvGVZSB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDAFC4AF15
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790687433;
	bh=CewzjAPpKnNzsHBvV4R3digQZc3CfM4RcI2WC/FdaU8=;
	h=To:Subject:From:Date:From;
	b=ScvGVZSBL+t528Tdjkk8aKc5KdXT+jr/usq5R2wjN4ta3tqB2TRUiTvi+X8rHKXsb
	 yMe6eCawRymdz5ErRN/TpmDYJhytc3WTg6YnX6T1x505FGP5GBrc9JTxzp6ltGjKHY
	 H39vsHc2O/AqSd8v2KDDtlqgUS8oyRd2IBy/oFVWx7XTeJ53HlPyQQcIpxsc36E6vZ
	 7BAGo3Pa0q3X9KBNgiLHGQbLUJxpOypt/xUW3sTar1+Uhjv2ytXdzIb5SWRH2COK6S
	 oW8jwmJlP3Z4B6lyJTB2W0biVqvFbD4OZdZqRaD0ZBVHV3ioaPZQbeI31Hq1DnOBjS
	 yvBhQqIcVmmAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF2BCA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068743369.16562.9760799870001253417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 612ef483c81775d184b85927996a26bd517ea570fced5b6df8355ab5bc0a2c92
Date: Tue, 29 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790687433
