Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223EE27CCF0
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761079194; cv=none; b=ta21WOnWKDz0ralhdvLihRP1gt34XIBvdaupDW0eVMUKfQbkqPpqNZXUG9tzfsaWo0SRUihG6PMStk5T5hjpnqoX1hR709D7W+AK5qzFdt0bb6yW4KPI4c2VtjXqUpYC3ecaI7LsevKgapukm0mpudYHGuW6/sK8IaOWk3DefRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761079194; c=relaxed/simple;
	bh=LrE0CSx1h0eY81l2sLy3JpiI+/6GXsBF9I2ruU2SUVc=;
	h=To:Subject:From:Message-Id:Date; b=TEqHfQWztKClg+hwEP5kkLoxX33PJqDBYesLUapeTS/qJJXlDRvljoavhhaG/SgkqhX2zdih2cSgWg+lJxBxvhx8gdLx0JKzWdrzscA7h9iocqKaSC5z/O7FNsw7gPYmxQRGO8RMuu07FCZZYmN9EiuXmG7imt9nQnnFWLXAbwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPZWaAbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPZWaAbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7531C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761079193;
	bh=LrE0CSx1h0eY81l2sLy3JpiI+/6GXsBF9I2ruU2SUVc=;
	h=To:Subject:From:Date:From;
	b=gPZWaAbEuY4htWrpOm0YTcUCUpHpVAnmH4BxCe1mP6Isgl1mHheNnh0k5nW4raz5q
	 p4knrm07/xAx3JN8p6CZkFP+Qeta5AUkBwAvkITBkC2QibtLumDL3js8hLHMCJIiBq
	 zlyljYufKWy8DThMnUEnok/AuSlK+0gA0+dyg0cTwC/ofEGfYofb9WAX5tFi7ZphKB
	 3wWQcNCdAK43G01MmPnWgqghR9T2ec0Dfd3PL7FBpRN3b4D+1vd1nWls0xQLV62qVQ
	 RfK3awT8OJ1ESNAHpVyJB/t0GbP8f5n1zBiHzldHdE2z61OkdwgmJU+dH3W+W/scSa
	 9E37/aQTHdvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96423CCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107919360.4283.10230104355001205278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1aaa3679f2926d8b020edf04784bb8279d02785c5f92e5231368b0977e5e55e
Date: Tue, 21 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761079193
