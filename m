Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131C138DF2
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712431697; cv=none; b=SIWmluW41ZdSLM9wYn3pfFhLz7LfN0NRG6JDHejEbpZRtoyLjpaVDSczAdAA9FLeDKIk7T4uJkiZ2ZMPLa9jYJZWCeakEdD57WvnwnumwJR259HaWPjEmOwDhT7EotQujPG1YnKnLcpEnidGxGRiHpVw680hUWhMA67eKW0m+IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712431697; c=relaxed/simple;
	bh=0fj+7eCMUSo0ZB7YCe6pbqKIdCh+Jq88M1UzQRPSKsE=;
	h=To:Subject:From:Message-Id:Date; b=iGrBpwDNoP3FAhPIoIRpNOJTCwH3E4Ul2ImTTZ5AEZKXKhy3auYd7hMLEePCPO9uqa3UWa0PPLQgcG1eJEydaW/6DeQg7y7XdkRniEo1Y68W1bf9VaB2VdTONfx9U/zUMsTDQntBaEJ6Ujg8UStERThRSGT2ga/rChOJklKz+kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtBX1QBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtBX1QBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7306AC433F1
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712431696;
	bh=0fj+7eCMUSo0ZB7YCe6pbqKIdCh+Jq88M1UzQRPSKsE=;
	h=To:Subject:From:Date:From;
	b=KtBX1QBlh8p2fXYOjxcYeLsbUFWuxKv6/MduS2CIiNQ1HC1aw3mwe+tckazfmA72f
	 XUlcqeY/DClMpEVBm76YBMBSdu4SYcGSjYbRKSlG/YOl6Lqgw9z+Io7oQmpH7ZToDQ
	 2SikWjMkgGibSREe8/0cfSZwNQ5ochnr7YnMSHqIr2lPty8kW0Eq8XOkHUNEAGIKUv
	 VS24dn42yKqQJq4hTzW2z6aID53DpF9i/9gbaSVoaxTFazvYIPtIl0pu9OUEECQevy
	 tkx23vOmjMB8fZWo+ogsBqOZxB0lSGT0lm8ooeXArM1zStlHJdXGxlC+KV6ALj/00T
	 RNpBVr2ZhpKZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FDEC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171243169636.961.1681871467317095215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89ef608a2c28e4c102c94bb2fb5b69ff42ff9871aee3c424c9db48ae8d0293ba
Date: Sat, 06 Apr 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712431696
