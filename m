Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D0D1426C
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748719794; cv=none; b=RY42w8hsqzZ/nTmJezQGmb+VIvgRNtNjzy2/uDHJGDc5Q5pdIxHJDul/vtCj++t3uSlXVHhB+IYxh1mqWwZSGh04JllY6HZnInbVI8pMxD1RPIk2dXqU81E+HXhzDQOQ3CW3V3szx6tKZTIcAzfaThMO1/5O35MJeHVbCfK0jNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748719794; c=relaxed/simple;
	bh=q4zeKDerIHbaO0NT0CZTCptPijbtZ8WolWjXFguyc98=;
	h=To:Subject:From:Message-Id:Date; b=sA5bXWEgm9A2j+Xl8Zsi+jYSbNp+/3F1Bm47yTba3ZokhR1m6E02vBbIozjLqTYh75E27MxvF7sEMCr1UkRDgb2PuW714Wwg8nBy+Xbl0F69mfAW89o+mERHYEUUsx/LzQz2Y7+SeLugYk4KZGi21rmBxaZLhg+3JnT3R3SQXFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwOo5Wrw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwOo5Wrw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F41C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748719793;
	bh=q4zeKDerIHbaO0NT0CZTCptPijbtZ8WolWjXFguyc98=;
	h=To:Subject:From:Date:From;
	b=pwOo5WrwR/+0N+IQ5bqgTDCRdRDzmiuhANlxi3vhsrxwzHqz82EbAFloQIbtCpFSl
	 QK+ySRRM53dJnt4eNO8S7fwfchSizVL6+S8KC31l/M/Vcdda8x6M/6Yz78fL+7YPDD
	 DJLxahEOkfplA8oxAWlVzdyy3K+b/IWdLdOgoYdRqATCW74Z21tF1/oYALZJKPjy3x
	 DJCnY4J+orK460eRW/1qjVO7h4V+uA3meSJ26jmfal+0kp811CD+O8FQ2lcj5ZX6ry
	 Odu5uBDREyW5rpeK+Hn3H0siVeGUB9OrWcUSMjIipgnSLYxRTvMVwKgl2rD2KtW3HS
	 DlnZGVNDNm3zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7FDC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174871979357.26456.3434243590952294294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb8ff90bafaa5b62c84319408fb566e55be6edcb53cdb3e79a8e5dd0b694757
Date: Sat, 31 May 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748719793
