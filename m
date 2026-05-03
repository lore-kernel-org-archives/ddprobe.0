Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA382236F0
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777816054; cv=none; b=JEU3L1vAigWEAh/NYWiTxnIuFswx1hZI7pMXp6gxnDya55SK0uybnoQUhwV7CmN7tQ5Hhv49eIh8fUHNv0mHfdhygArxmpj1YpMCdAQBfBNAxaSEtUmpvDNRqfVGab2ipspIUxLZUxbWZi8htJZvK/b6X8dJ1FDiXrubsdzq4+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777816054; c=relaxed/simple;
	bh=9HbKRvaKfV7TTl/GmLAMw4yGS+eINtwElWvz4pfWj4M=;
	h=To:Subject:From:Message-Id:Date; b=iw5UlF5xgmvJZZM7mcJJjZQjv2RbaC3vgfsp+aFLT7WE49iiQOvE4XIESYLQH4i35pf5P/g0Bhv0JxzTE5NfMn+er1AGtWOHTnF043H9lqri/g07A8++WJhDYEu/EPTvlrNEk4elxhs99Jd7bsXxOU9lLLjuohtODcofev3wsF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouJ1yAgS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouJ1yAgS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE241C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777816053;
	bh=9HbKRvaKfV7TTl/GmLAMw4yGS+eINtwElWvz4pfWj4M=;
	h=To:Subject:From:Date:From;
	b=ouJ1yAgSf/4nJqdO1896byS1GjmFan8FVYMnmG5jDH7OfQg1hRhwUmHpWH8T098YV
	 bZAkDj+CkGPun8Y1jgG2X3RQd/YM9LwU0nMJoSRwMHq3anRNRlpIHXZRU/38t5JRPt
	 c0MHKiEmM8EVCADXaei+fGcaA+3ylx+9BPqOHbtU2OOnYJjjZTMq6iRS99jOEhNQ+7
	 2bNRVWxeG5Lb1ywwBUds67v6UlzOxIJRAELQ55JCjCIMLNm8tPZ1gaflwPKN6pDTTQ
	 WAnC70DNx8TsH9VW1FSO7exJb2nH2CTSyTWB2bEntn8IPT8natVabzsID4z8hKjMZX
	 mAVGPnYQLgODA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03A2CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781605368.31563.16558390522891595350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0dbd53f755898abc2690e36e106c0260018568189f640607f6b4c27d455fd9
Date: Sun, 03 May 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777816053
