Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD5931AA8F
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784752774; cv=none; b=ib0QzcLNyIm+Mf5Tl1MNYg4j1EqQ+jn+sPDznZEzJUOlpFQ3V5hcReLAsBqh4zobwb6Di2IKesmUabqBcrpGNGvrGfs5d3eT4/HtpD9UidMjAB4cJi2MyYv0VccRYZugFyHGdc6J3Ggod2tq6ztUDrxtNohQSu4eteRqJTM2E10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784752774; c=relaxed/simple;
	bh=aotNBtEJHYih8haZ+FIMwAOnva0M6UTl3NI6rVpjJjw=;
	h=To:Subject:From:Message-Id:Date; b=jFtv0IwtCQFCszZAvUEROc9pCkkdjbN8UTunthz4ecflUx2Yc4uLQxhzdkxvbFwySqDeZUmR+irsDg340GHZaLrd50M/D/nEBeErU6j7IjPEjr0nqZbi0DjlKUlm11KfJg9DaHUzUtDoI6ivH2Dgx1UeFcevLEmbAHJaV1zLIuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8VD0sd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8VD0sd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29FBC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784752773;
	bh=aotNBtEJHYih8haZ+FIMwAOnva0M6UTl3NI6rVpjJjw=;
	h=To:Subject:From:Date:From;
	b=n8VD0sd8iCct3M4ntGfBULFYR/TWs+HqN1nS2ptb7nF0mHFM8VWMeOzGkZoGmY9Q1
	 +HwCqTnp0vxULu8hOBPhqgi2A6gHEppkbIBhAID+nBxRuPfwS1gN/zKv8VXOkqCMp7
	 tKHzynBolCqISRv3Al4fCO6QdyNr3zrxmPULPK1rQ5c/4AVC38rCKu6j1Iac39BFcv
	 vnzSiq3yYFYuqwwer5dEur0b1dwJ+TY2bDeFl8awofDV+/LF1M6pR/BHqFt/HbizOp
	 rtu9SIGpI6zHEA+cO/B1la9Njaqry/ZqQ5Ap4rK/F9XBFAO7Le+U0Bt8klgeoNl7pp
	 HCU5uOGRkvirA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE81C4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 20:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178475277375.18353.14186056714029172579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42edeecd9660e12b69ad6b97ccf19a1abe53c324457706c68d165ad64de9be29
Date: Wed, 22 Jul 2026 20:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784752773
