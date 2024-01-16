Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156391CAA3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705426698; cv=none; b=FNw2NqQC7qyLps4gWKV9wWi4vy4lOqXPtt/ZnLEAkobNQ2WoS9SXb3og/iDYmIY0LqJT+BBH0A+zmcfJFubpb6apciJhXj8O/mCCpUWWViBAAUpi4Lv1BMZ1KOIfhaxjeH8PrVubnx2TF6U0m2JTq+8ofRYuum1J2lUGxey/q0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705426698; c=relaxed/simple;
	bh=pBtU8kfD8XEwqD16L0wE1n9A0e1HcybkWdV8Uv3+keY=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=s2cAff4ANHDNSUNeogNcWono/UA4brqCDvGiZ6yqcU+wULY89V7n/47wQr6svgZTvn1A17MRRt0OYMzca2ctHhrybNT3QZwp64KNccHzjJKlAtdOTzaM4700KOB4Cp616LGR4ykHoPJUrdMao5rwo3P/+pJyHlO21Lg0oPGla6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QP91Hlq4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QP91Hlq4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F980C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705426696;
	bh=pBtU8kfD8XEwqD16L0wE1n9A0e1HcybkWdV8Uv3+keY=;
	h=To:Subject:From:Date:From;
	b=QP91Hlq4M40py79pIo15GEVg816XvHr6cEtSCDCdXVViZtIcyYFCnFEEu6OFdwhjW
	 rb7hlb7nAfwk+lU1xh9sDtVvcUXCiQqK+RMIlXhoG8xcnkgYTPhnGJj53s+U8lLSN1
	 reLYHjvxAhDtm3pSrJwYMebuQb1699U1Sdw98QfaYVBuZY8eiN1Wv75eQ2eVX0D7vM
	 H4Z9rFSxoZE5oGe2rEtfDm8Xr/e9itzykokhI7Sh8VY0bS8ycDOMWB3hmkzLSJNMWD
	 Qsm0p7HteFZ4amnm5ehdLKe7luNiTmgu+MyzzA4n4O49txCoODFeSWL1q90O3zcQNy
	 wO5fRRIUQWrYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E7EC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170542669637.23061.5627702280679836685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a2f724d70e2b97f2c7f1bec5316d5d3b1b21644323c0274904d43e2d653260
Date: Tue, 16 Jan 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705426696
