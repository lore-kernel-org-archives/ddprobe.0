Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EF133993
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750124394; cv=none; b=eVKx1EVgo52JF70EUUnTGSMKwqFRIrMFw/lJt1Yp66NKsHQjnPkm5TUMiBcMxs+bjFMMxJvBG51YIBnwNYIef0ytLSyBC/LPmcIY1nFYX2ejuOrc8pFhM2oD9M56nqllLwqBIG/rkbibUWW42CKRqcPzSMRTWTlLGLa36oC2GLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750124394; c=relaxed/simple;
	bh=qXQHHXConVLD9oIMA995k36oUkkklNj8G4YCUOhGrb8=;
	h=To:Subject:From:Message-Id:Date; b=pkb2QF7RzPAeRFpY0LLmdK7d938gRyGrGvYiydBW/6SOaJEyvkiO9lOIq1+HsyeBOVhtMHQj4ben2Hu8bFa3e1tJPWufiryjLIpXjuz8+Fd8HiuqpKXJWzJpLcr2tuixGbORmBoc4YrRpvyNIS0BYLagKLzaJGbh3ey6bWN0f88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUmwV/OF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUmwV/OF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E9C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750124393;
	bh=qXQHHXConVLD9oIMA995k36oUkkklNj8G4YCUOhGrb8=;
	h=To:Subject:From:Date:From;
	b=YUmwV/OFVG7wAIve2pCos4ZC1vm5J6uZxBLxuGk65qxJUhY0qjQrT/n2sreajVUJv
	 JsJ/3CeIh+B3mydH7Jmody+ZutFaQgsKxffVZ+uFIrsnxNBSJFGIyl0xObh8yoru30
	 +9h5RPG+kxeds+MQpYUTPvUCFsiE6xvM3yKtWVJQkGzVu9EQE7AlfoW3ScxOwc9cV2
	 EJRla3TFr7d/IR/ocgSD3hYyf0BBmYs/bwyz58zEp2KjDpP6YXq85J10gLh2Yb+ck6
	 SmlP9+v8AJ1CEr2XjoFsuu9mXFrjQUAQsZmYIfRmgWqTsk7zfl9a4QUogwU8BlcRPg
	 g6z3yR94wzCmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9200AC71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175012439358.31800.16011106120573722812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb4ab366a97e2387c7cbc648a0dccfe0ffd8bab36cb6f30e6c3f033b40473be
Date: Tue, 17 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750124393
