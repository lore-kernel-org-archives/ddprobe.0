Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539013D567A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790185834; cv=none; b=luSuM2ECBEZpy0Ty3nLULYE3butgTDFravjGpmgNZNuhWir/aG0MrIsf2CDMNcRSTY86ybs7+cx65h9XTLkyS7YaRXQ0w7f6zbpm2T8sWocLW9d1QD13SCTLbr+jx240NNMAtWko3ZfMv/lUfBT24J/yvN6++l+R8q2aYBzuBIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790185834; c=relaxed/simple;
	bh=n1FNcPj64C115RgI26YiECmGsByWR1GT/Kin/79MCF8=;
	h=To:Subject:From:Message-Id:Date; b=JpXLa9VnTxd73zbLV/kkp5Xgul0atRk/FPCI6Nc5uof01SeqqHRNAKH+Wf1OqA7equYehqlzarTXreqv6Cqq3onPoHAamWgNPPEPNTjtsHMomgmhJsfP2dZ3M6KFrvZEB4Hg7V0btWCqIoMAzOacZj4OyWNE/ozK8Co5Kj87WPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZ6P4Ajv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZ6P4Ajv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAEC2C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790185833;
	bh=n1FNcPj64C115RgI26YiECmGsByWR1GT/Kin/79MCF8=;
	h=To:Subject:From:Date:From;
	b=PZ6P4AjvqZXkRm3i5hJQVr7qxetMa7H+ktbZTrFLTKFrKE1N+LQItEwI2yAZtkxBL
	 yoRJWKkDPurfU4UUCh4lbEI/ig5OLius8qAZyv62jTGiwrmI7K9nPn8wkEynQ0nZxU
	 dFYxW/ExviOsuGO3lyBKQXjimh/5Hc7MLHN+p+ajD/Rwa8bW+NjvIPWia+KXCQoElC
	 Yl+iIvX8Uvsc4eisIxwAGKAufyAlpzLkcz0INsWRZSg7DLAhtIeft2apOrKgQ/pp2o
	 u/MoQ6NypvVY7nlu03nFD6ZYE6D9yzQ9MmZsT8NGha43k3yxy7Sv5YvrDdFy7ZRt+P
	 Emuuj5h5JMXdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0854C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018583371.2761.9672246143801513058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f1df7119feb45bafdc92924f20d2dd53bb934947ad10efb52872aa21473b93
Date: Wed, 23 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790185833
