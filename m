Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8142A3AFD0C
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781675194; cv=none; b=I71/8mOvLQ6p+1GlccIIetTQw/LeICdMqzqu1tXTL4WxvtPu/BQD98t0mYeVO/uYnej2/pMBqd80/k/jELACjIgfiAOpgykmo1hLFRS2fHSgvV3KkxypNIzuTyKhKdIVAGD5/HzVGTGGpRoqu2XnlMMxXW4B568v+lkr9i4vrM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781675194; c=relaxed/simple;
	bh=P9//mJlRWfI643Uz3wC7jagySS0jalUJ6KVUBpTGeAw=;
	h=To:Subject:From:Message-Id:Date; b=ca63ljuDEOKVsZDZqBsh+S0UKpsk44SP2y07N6++EzsepTbv3cw5GWtkYoSnzcllwbTV7jGMSgrSnczZwSsN8Q4ikPu3X9oKwDa4xWMYE93IXEtfVMjr6k9mKzClUXAGmXpn3tiFt93SbfXaccdwAhOlMSdhaRfSVbV4MJ/Ogx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atuMqU4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atuMqU4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16D32C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781675194;
	bh=P9//mJlRWfI643Uz3wC7jagySS0jalUJ6KVUBpTGeAw=;
	h=To:Subject:From:Date:From;
	b=atuMqU4X7yI+weYrRG1fI+USOFTPWOBoc3VyrJA65fkyGEeYJ4ho6vGsIJLSPwMz4
	 ZF44qHM/8FKWVd+bM8W0I3Xkt4RfFqRo87UnX8U29HyUayxWz5gdUz++17PFem8jAm
	 cVxqhucpJRS6C7Ubh9i/biycwJUILmCugbIE7DG+lnVU8zq6HJ9iiGWEhlkoNKX2Cq
	 NdA7/3UHBBvn3/vEqXDUqeXwFx93WkGJjb+gQq0DLZT+vwAWtxz6KHZLDFOANyyXE8
	 /vIHwcaDMpXxsw3zqkRl9fj3Ub9riTR8kWmag9xJBArbEHI6KF3frt6cNBVusQGIVO
	 LR1CSRybKERew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2248CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167519384.26472.10343683977228967423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb57132d1a654640ccb840c3f88d3abc762a66110e0c9848460c84e4a52cc6c0
Date: Wed, 17 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781675193
