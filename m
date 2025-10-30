Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9D313FEE
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761823194; cv=none; b=YR/e8RvDSxB0YIQ7wGlvod8dSbfBB/DKhEFeLw+8mIvEJmS/OVXoiNked8jCuN9TxjU80Gsb7x75L22WHMmU+SRuPFQXdqXte0y0dL1XoeMg3LbTng3Xhjag4nMFHBpVK4RYRwkbvWTdOfy6u3jKzntCfb+g2OMqokCrWKtYp2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761823194; c=relaxed/simple;
	bh=vVjkUu2TLkP/gIeH8ct+Z8HKooa0nXGJLkoj4npgqj8=;
	h=To:Subject:From:Message-Id:Date; b=KE9hEbgmqD9BKIDxCAlIH36SfDmpkfqo559+SOVx8urDDG6EiSJi1FZxqwYEDq83uCQ8SyHTOOOOrtfgSP76bemZuCqbPA4v8Q3/Xc2ljKvheHkFOOZ+WrrO1QaQso3Q5f4uAh3Bv8QMYwbs4NO2aLFSHOlcCb/LdtIEuQTkuYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CeZW8OHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CeZW8OHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1193C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761823193;
	bh=vVjkUu2TLkP/gIeH8ct+Z8HKooa0nXGJLkoj4npgqj8=;
	h=To:Subject:From:Date:From;
	b=CeZW8OHgom9VMfbJfBQ5uM/j3W0pKUkJu1pmiPVDeES6WZEu6jzAXaRjfmlurbvqs
	 10M9Sqeifelq37SdSJVS3sAlTWrt+a5IFFeFaL/nSHKoch5Q0MNfJOtXfXkbJo8pKE
	 eUSHcxtLMN3jWF9rqHQSa9F59R6z7U/E1gEn3Ek/QyoLtZsAJDfcIXCFeTj7aH3d1k
	 ApY2XIF5bhklLOb0IpDcX+ykkChqFrzhusla5zvR4ubfQw359rEsX9SD07+R/XyH4N
	 47/FVHBVq4UbdxQGT40QMw7c9GpwfScVHBw3TBSFJkPSxyeQc7j/S4NCN6E+bmgvUZ
	 skIZnKbwgiOlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C0CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182319358.25385.9687951395121050887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d610e1d2021f5bcb4b7df54c42a0b0e2b06a2ec51bdcee530548f9e4a2e14e
Date: Thu, 30 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761823193
