Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FBD25C818
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776292654; cv=none; b=Cjj/ZR1YADMVZevTjw0UvBdLfYa4f23nHnec7ivX0xO5DLLSEyyqasIvKJvRle4sYPXo/qEEO/UczPXlbTCch1Rmp29TxmymTcdGvYPW37+nJLt70ConIanxlEpnnEhQLk2OT4ZaC7/JK8geLcm4mgmEsTEJKv/TWePwUsCPs6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776292654; c=relaxed/simple;
	bh=GmzpoZIXP7yybNKFexiGCQyvhxLnXrzc4TdfklQT6Bs=;
	h=To:Subject:From:Message-Id:Date; b=if8Kyn0+xV2lX6MnuQCrnx5CiLo24wwNQtfUnodkqvMt0DDsu7fDV+ugzKhgHEpejQizt+Lnu3ssWzcVM4d++OU5QzwKrTlGT5pEvzDkKYbzCgy8s4NFCRNXNjFqcDvTgVTa+PrLcLfVfJWaN6IdAOIGZaoKPyHM0eWkwF3rR9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9b+5R/R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9b+5R/R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF0E6C2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776292653;
	bh=GmzpoZIXP7yybNKFexiGCQyvhxLnXrzc4TdfklQT6Bs=;
	h=To:Subject:From:Date:From;
	b=I9b+5R/RzEyiu/xUc0m/tl71fGMo0K8TUxlnCqOOA4G45EVChFJ025+erntBU461v
	 pXOJVPI/X5sUP+fwDUDR6lp0qLEIayz4oNHe5bB4TBMAAZI5EnizuVf9PokFFoKRiL
	 dQe6avZHwDqh2bUFXJgmmjZf7LBArJU13SR3m07HHnVvr2Gt3md/PUJWnL3PXCCeOV
	 cP3hH8w9Q2AS7Eug0CLRfDcYZmat0z7G8H/X8z3EOxcUxHYY6nI+d/0loge8CpGpc7
	 zUuy6ywPRC/grg/ebprez1RT1022+Zc+kX7YGCMBaOgMLgGfY9L0+skXaaEeH1KOaI
	 VE48rARrBPwWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B047AF433CD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629265368.27380.10211142467509255289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd85b97d843daef865da1a12e9c945392e32612275d9cfac0228985b17ce6db
Date: Wed, 15 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776292653
