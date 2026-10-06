Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B564F7972
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791328234; cv=none; b=b5OW40kdMbCihiB2UqrZNXI6FSicZsmcjWdp/qq4a4dKyIbFvTmGk75834zgO1CbgT6VcvzgpUg8/nyJpmPxO5ofRmwnAM5dknHiVKVKznYE0ZNzrI1JeWsgk6sXQkr35cNiE+v1StDyhq1qYpoiwPf0hNKxEL7IGmUnpwF9wp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791328234; c=relaxed/simple;
	bh=ChWIpCb1YjUj6P32cx1ZErdltIMi1TDbJQGEbYpXXBA=;
	h=To:Subject:From:Message-Id:Date; b=XMvh/erocIu+NFPvb9Raqczd+VcPm13gydEzr/wYdsL63Yv53qHrmStfbL+0KvM0KN6QFe07DHEny5Vo+OFr0IYeDKUma1Uyi/jSBSdimmqUHk5a2F9STdI0vnuy5Pr+Qrvv4lmotPgLJrCnaDyD1c3aw/wVAhBsLuF2NgL6zFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQ004IYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQ004IYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD33C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791328233;
	bh=ChWIpCb1YjUj6P32cx1ZErdltIMi1TDbJQGEbYpXXBA=;
	h=To:Subject:From:Date:From;
	b=tQ004IYN7LQfJapkdTIgRDCOgkQB2MIG8MYopTvclekuiLln6/OBw5DkV/dFsV8M7
	 XDej1a0SK0wYPA0bb63GWKNy+tFk+v1SgJMs2dpi40aGPZxlPeo9OhoSQZvOPQRjvl
	 5z10gezI7a8gNcGXm5qCAxtr9M6ovZSHdKnYaRSGAIPrwHPdZ+TBYhfqX02yN3ImaP
	 UTKWnCQopg7qduHHwsJoFIL4YjvZ7mkkS4ip2WI4DY6ClTuUFC6tyrbDHeLIiteUk6
	 FaMLkw0S9vPDRtgaoSWCTjrX3NbLg6GaEqARyh96ZvFYAkS1BAIMZmceOnwa+Gc3+/
	 U+mEtSMr+Xm8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94B3CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132823368.9481.4081123275803527484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc220cff4bd0dbaac8484682893b6f19549f23867a23ad5d1b55501405227e4d
Date: Tue, 06 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791328233
