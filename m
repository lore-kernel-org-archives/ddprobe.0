Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AB3757EB
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717104263; cv=none; b=uDPUtkI5JVIxzCTh0f5UkwwSgc2+DiCu73+KKctPz18x9XYzlMlkKzdmUAapa1PzYXHh8MP3o0X9T83cCxkAbnrq/vXzsXbQpFdp8K1FErQFuIAOdu7caAimKPeaOdb1/9kY7ZvYeKsIdgTM+d/5IDRaLgjU89XfOPySHqWhZfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717104263; c=relaxed/simple;
	bh=bPT0rbC+pc0t9UZmqxWq05Hi5yq7mGReT87dHCxmDXI=;
	h=To:Subject:From:Message-Id:Date; b=OaF7YMYg1ATSLmGXHIPWYMPMNbcfu0yJdnYh5HoaFwLwXfciSgi5tnYWVExDfIHNzQWINWtiovYsY+NGNbFL53X5JOJwsuXMwto8uRzgG3GVf4k8YjuAJKatWwI0tY6Ecnl96K9+TsVYx/Cpc/sCVDqk25U1gBlM1quSteF3J+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pSg1vybB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pSg1vybB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B79C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717104262;
	bh=bPT0rbC+pc0t9UZmqxWq05Hi5yq7mGReT87dHCxmDXI=;
	h=To:Subject:From:Date:From;
	b=pSg1vybBSVec42drYUDm8Fj6YslTduEexH9gZyKiBDSc0yP4faxmak+Ds1Ik63PX2
	 6kX3xJYKsvmxufrtIzfX6Sb6xTu0HmdCU73+NYp7TbDMZS7DGhrBifqg/tKrX4EN/d
	 LwTV7Yiah0BhlP836Tt2ypx2fMLiE9R2NbbP0cGlghxUhrsvHL0iJI53d39qbfSYiO
	 RYkJkfgrXPuSYSwF6nTx9/58PT3biLcatX6nXt6H0fOL+By+FV5xeZ7QGx1vcDBGZh
	 p0A2MdbFq4jPaHBLKwCq3RGa8+gxEp3B9THmCOMGKktlTYMhQFxfvfv4Euk7Iy0kts
	 Yai4Goy9wwWtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4496C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710426276.5005.8739347149734108521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7890f5ed5ec9746d64f6f67aab0a430a337cf30783ac7231238e413c98f2c4d
Date: Thu, 30 May 2024 21:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717104262
