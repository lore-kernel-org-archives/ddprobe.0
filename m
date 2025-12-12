Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9092BE051
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765534974; cv=none; b=SUoO1USz1wPzwenMsW0Y37jRqyPeEWG8xx9OJ4ZS6qFtEIeQUXVFKGTCVtbV816cifRHe9BVYZrgCODaGeR2tTngvFv9bz019as2pvAPL0mEmAScUs3q/PogU5CWc1Gv5Q63HE0YtdlOvM2jXJPVXSVn+7NNgemUqpIbFL4/RsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765534974; c=relaxed/simple;
	bh=UL6428F50aR/s59+ZZ4AOZbW7YJ+5dQ8dEHV12y0jYQ=;
	h=To:Subject:From:Message-Id:Date; b=gYR7tqbGRXfUj0PVatCORftIUC1ItHjoakR7k8nMAZ3abMLBq+e7yJBBlpP2AM1824oQ1u2YaLtg1u90/rzciE4Gn74/i0cgCV7I21di4p1y8dnNYthZBFRYbBkCZYZFcgmjw0eyT2Gl4aK/Ld9g0Qhzssk7ppfn1cRKi30/hJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7oMP9mf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7oMP9mf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28A5C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765534973;
	bh=UL6428F50aR/s59+ZZ4AOZbW7YJ+5dQ8dEHV12y0jYQ=;
	h=To:Subject:From:Date:From;
	b=D7oMP9mfuz8xZJH8nWVZEPGrW3c7Il9DPTr3QYqamgebdxmIUKGPQB3xj2O11QJuM
	 x4eqe278cSqijG6P+IRlUYSL2bHKA/lbD2pBGUWwFkD3DuQxh7tBpcnZ78gajpj/LW
	 uBd25ImGwy/x3QwmmSffc/MFz0p5bTBL7uTR1ALtlIwgm7JOEUULODw4YCScAaIDs7
	 gL0z7npmjnxx636vhG9uyqBxtB4XpiIVBE7TXudsx3O4GHRczyK5HNekTDBmvdVkt4
	 DWAt6c02qjWjw33UsyX4FWTVJAmivHBs0N0QjKGknRMZrftXtDOZjsfK01RQDh+Vvf
	 mk0DMXhdl86wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909FED44163
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553497358.2508.1306332163598896719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805aca0634860b3b0a1ff00a9b5a7ee2220b9afef63699d5100057871d4be4da
Date: Fri, 12 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765534973
