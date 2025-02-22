Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E1F2054E1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740268136; cv=none; b=age1ZPeMI6QuoX9KyWcB1Hh+K+AQnAu/ZVbGKuRWZqtuQPbHSoby5PACIumDpvMPnCBbZ5nWCtqVFfdprRLGWokVUrCbSqKFwh/51o8SNkv+BDUctz1jzIMTVIUxdrG8y8STA1SqR+4k0UqH8B3DfRVUzh6aLVGQ9DZUAHAlV4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740268136; c=relaxed/simple;
	bh=mXu90k/kP44wOfZSvFXy9tpVfFAyWAubj6L9fXIns08=;
	h=To:Subject:From:Message-Id:Date; b=WDXCF7E6sjUR2+65Gv47tae34XTse/TVNK87Rm2WrqKuBtO4g1YVl5vO8HuOUIPYOLBGFjCceyDX2qap6sct9cXV5gn3CZ7uVt5ahpz7MI66krHSgHHA+Moe1U9uC5jV7vf8j6M3YC1Up9yTKUpVuCTLRf8QeoJNTvIxjavzVUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afTUuAZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afTUuAZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99CEC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740268133;
	bh=mXu90k/kP44wOfZSvFXy9tpVfFAyWAubj6L9fXIns08=;
	h=To:Subject:From:Date:From;
	b=afTUuAZRuU6zj92wYOi9p2NQxdEeUPIpsxZV1XETll4Wnw93GVp7ZM30QVrjE9TkU
	 YTbnen4BZ0LTUdUPBV9L2vDjdSCdXmp1sYlcnKfLEWMmGhpUgXlpmT3qQbfCLVzO3G
	 VmV6V2R5M2YYOaNB8XOlFkTZJpSDrcJhuo+GRwsX91NId6yVlE4Y9t/xCesNXLLhvT
	 XZLOejxuwnjuMhMRAVsv6RGVXNVxZvq3+yIt+VslutFcX+Jd7LG8XwRkVi2E1yCexW
	 9uvIZVSNmcRDcz7tNOYf24rXhoZOeDwmAaTClHehBIRvak9ol8nczYc0mnvxachthZ
	 8S7UGTGTiCAvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3319C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174026813366.11773.16957992088054400186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f597c5c6b232362a46e14a5b6515a782174f41663624045325eb27664dd18d5
Date: Sat, 22 Feb 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740268133
