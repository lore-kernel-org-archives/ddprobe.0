Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45631A239A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767309233; cv=none; b=B/68iL3d/pgPEs5nd67M6yoQYoq4mqHyd/h/M9xh+IT1VImsfQq1enOhxiuusidbgvbWkrn2nQfjLDmqKALsSJBCwgjSXHTZGxl6JjJyw+kohmJJ7n1Vz47DdaCPkpmDGH2vHGiagbdJ+yeSVxw92ZsdfBmC1y0WNbrCr/nJSY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767309233; c=relaxed/simple;
	bh=kFiCVanM1ZswKqT0rqF7Z4/I1/6kmLzsC/nHY+MwuCo=;
	h=To:Subject:From:Message-Id:Date; b=tLKm1c9KlUS4ijYbv/RUMsq5o/gOF3jsYywR+B2aNSdHl1V1eE+h7WXeFOfhcaXz9yvJmjuRGFuVfxtnXoKecQTwZBvYetLk19uVAwC/yWJ/Po3wSJ6EerbXZK7Q/KD8LqbDcd1kFXM+PKMAYg8zT3RiFjB3MI7ZFpio06f/SBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IUAAjA21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IUAAjA21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A196DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767309233;
	bh=kFiCVanM1ZswKqT0rqF7Z4/I1/6kmLzsC/nHY+MwuCo=;
	h=To:Subject:From:Date:From;
	b=IUAAjA21WMbDALpxZJdBAX91wYf0WeSsUcuJg4D4Mn0rSrLeLte5MmmhRh/oMvEOT
	 lj2jM9AM9fZLbfIXjyDlKdTJ9+YLF2ZtBXLPslneHRlzH1FClg5tOq5oYowKLRRf0/
	 I6wsIh1IeQOUpmxZz6X4FQpK9iVAhKz9kpncDYnjPtg3vmIFVNVtzm/00HsfZe2o7d
	 NIBcYqg7kVmegvwd+wzV4ir8NfH67YPcJZ9OlLwYDtccTJiEI0RbHe4jucbd7yVnSY
	 AL3Nf5RFZHhGCq30JVNL7pTyxMArU+yR/eJGTO6+wNqWQLgAjusGYkADvl2iSmHuAh
	 bo/1wzo4Wb6Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB81FA3722
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730923358.12835.5366762435116828444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69e5ae9e69307028347b4dbdbecc1d296ad853a2e19f1ccb07b6d60e65ea79e
Date: Thu, 01 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767309233
