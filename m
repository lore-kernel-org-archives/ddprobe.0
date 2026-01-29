Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B30F156236
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769663034; cv=none; b=oLpgh1ArJMBswcC7RHnbEoHQqTzHUAiDKrlgpgtX51/IaM/rCeoZbE7giiIY3X/sCq/S8ylFx+JedU9OCsV2w8sR/q7t0KJnLUE7IrLW/WWb4HmXJze2HEgAlat+woaGX8aRi3UCO/hOoOVMKSBX9w+8DNJ/tQpldXAGYbuG4jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769663034; c=relaxed/simple;
	bh=B6vSGMOniNR0HtluYQQTorLVTeDuMGWds0gL7D9djgg=;
	h=To:Subject:From:Message-Id:Date; b=Ikv52DVhNnB4p0qQ1pEnNTX/JRsBPzc05yfAtIAKrPvMLgAJb+fPScdq6S69lRHqf6lZQv9NXGOHvwqtW9YDKgt1AeAAnWUjJ4oQvpprjHubH6VjbhzgHPbk4ZcLDc33Ta8iRIWHimZlbOHvMSyQHDXHFrP8HhjjbVFtx33KzaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbt9Ibty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbt9Ibty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE18C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769663033;
	bh=B6vSGMOniNR0HtluYQQTorLVTeDuMGWds0gL7D9djgg=;
	h=To:Subject:From:Date:From;
	b=rbt9Ibty0608vhCMf9fBo4Z7vlVPTzasX8kEUK/SbqMaZEssSjom/+t8XUXSG0dSn
	 c8ozmrrvqkSd/WyYqkVk+YDN36GDOnxW/34CKY8qWScCH5Sf+ak4npUL9MDTySQoYF
	 9k29qdHZZ5bjpaGWx/bpPD2eAtq2bpgO0dPS8qiF4ComYUgq2X+EOj1GtMG3F1aCyN
	 00ER/s/otg7KAYRpj6VMyDrw4UgK19GIV8yt2/SS2boGZTEoh/5b5B7F3LQmLsjipc
	 aW4yPRaSTJrFAcR3d4eqX8NN2yE/I0qoOZHMRtPsoctSWDbEZi/gfE4SMTWGIM0dP2
	 AI1+f17qmTFng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F573D3569F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966303357.976.6041959045115991673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f105cb8c60d87f3d87fba4485257fc14b056674f75429d76403fd1853fdbf99d
Date: Thu, 29 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769663033
