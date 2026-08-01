Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE7F2147E6
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785589834; cv=none; b=kS/rByYn/jftuScQhsC4aufqzA5A5nqa8TSi0x+GQnba8SZNYlqQFfTbFlE4eNQyWbubHK78+ghnIbsbV5zLx6Z8rRs1cG/mAcEllq4gGnRzoK9ngxdy9Uq1F7NiIK6YnDpNc0eJliX3KgozxsiDZ6LRbrTYca4Ui1K1UENTjv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785589834; c=relaxed/simple;
	bh=oPt9NhZpFKx1qdcclOyPQI0E0C/yqQ7r7LlDruSHDW4=;
	h=To:Subject:From:Message-Id:Date; b=thfHzCKR4TFVr1k0m/zBxylC2FH/97RjILMKo1v1SJq5UGsLbNZaBNQMLHGFXBZoqD05csEJEnGb32RFe/BvbrZ1Ycmsxkh0ljaWQVFqUq7wKI82IHtywvmf1A5nTSFTXcXOaMs9wXzmOm8sFRCQMSAhXzkypG3LhBYpMos+zmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgORM5CP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgORM5CP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D867DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785589833;
	bh=oPt9NhZpFKx1qdcclOyPQI0E0C/yqQ7r7LlDruSHDW4=;
	h=To:Subject:From:Date:From;
	b=RgORM5CPzV72EHqMybHt9towh7EkLEg7B+W74GK67GyzB4xSE6ByBz7RZA1rbaUT9
	 eBOEgXQFsm3SLdUsbrNZfzqA9AtWF4rgpgAerZt4naDCIuyA4XmKCOMf34/3mOZve8
	 yppbCHNDSI1oqZeCjcl/QX1hlwe/6ObhNsTkUBUJ09Z9RVm5CR+OKNoGdkUA1iUBKk
	 E9Axr16WQbSedILKoNdE2lw/nOcqXOZ7C5OdhqpmPID7YcXoSwPpoW7WN9jNCLv0LX
	 hFSDiW9Z8Kf90E4jJuX/wGRpo024BIg6BMWZvGGuoIAqsQA+q0bZZehFra9pDBAfPy
	 U0tcDc7P+O5MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62A4C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558983370.5482.7906146150153497096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4328c747f4ce918fb9a4f45f62508b99760b07bf7216b5877fbe27e91bada4e9
Date: Sat, 01 Aug 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785589833
