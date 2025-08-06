Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14182E36E7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754517594; cv=none; b=aDspCqgcH74XwroVOadu4qUxBTu2D18lx2UgjqiMNxb5T0pKYR4OPNJVNYWVQk7y6zVP8c2TWOhtpHrAUCCu81KX7+EZqBP7wlGkqO2CamR9hrWZtYfadgp6ocMZ10L8Z/H3DGLdvLCq/jDD2vHRV74/xFRaQZSQPC3dugKKjXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754517594; c=relaxed/simple;
	bh=P9aJEwD6154G0GxvyWQXIRxAnu8q3/AOUtRoX1zR7ik=;
	h=To:Subject:From:Message-Id:Date; b=PwyBM42aDoelqws5XJOEwno3zGccTxem/2uUw4N6Z6HlzqhoAG4rIpeR/pHHLSeYcIv4YocNRHMt76FKYP4txgCw7tN5SYxzfMK17S7eAm08+MBJTCTz+89ThtbkVy0XCRJWEsRQc0v3ono3i9FfjVVPP7Rp2egCDH+vQJY9b9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHVvyJ8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHVvyJ8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5A3C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754517593;
	bh=P9aJEwD6154G0GxvyWQXIRxAnu8q3/AOUtRoX1zR7ik=;
	h=To:Subject:From:Date:From;
	b=gHVvyJ8u+H2iBAYu7oC4xgbkILl4/8WEpNjMmHiKdxYdEaORYHBsnY6P7Tt3GT7rs
	 b1lhE7prw3L7vloVckx33FUlD/Y7MG21WB2dDgqK7MpCByaEIu6Bp6pHs2xKNVwzgU
	 fgVAI962gT6cGHL5wmx1WSDEuvER9sEDPLmowsML7e2YRMtdN2VYqp8R0m8iUqTiSw
	 scJuNvXUgxIfu2+e70WjOURYmHPJbT6ZnnKIAc5AMR3P4lTIc6RsPVZaiUSVABIqNA
	 NSNFcTJLjoMsP+li0L8uUHsNoEqhxrFi7EGfffxYz9OjabKnlqU7+L0kih5mm+eNHB
	 qOc4Rhq1KfrsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC0FC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451759357.14860.17794487200148792171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b316b9a514eb0184ba37e4d6f72b3b1a95e96ab05b88c5ca8ab7745a10a19554
Date: Wed, 06 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754517593
