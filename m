Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3310422EF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753031394; cv=none; b=aq6NVHtosK2MkjaB5mxav8S5f1dC+I5wfcqUMi2+DWbDRBA10gF4LB72xiEn5a7GFcnvJIrMNPZfiKu8uHXDrmxolJuE9xz/W3eC9GJWWTbxgo+EvD8n4VExPtY/sRwwggOO+Y8Gl74RM7f7uFmQI9t67+Lou1zIQJN81ftktX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753031394; c=relaxed/simple;
	bh=IWsp97zlAEv6ZObd44urXMGjxdhlO757m4o8TzUWCeI=;
	h=To:Subject:From:Message-Id:Date; b=n1SsSTU4LZ4Ovzjas29qgaf1+/2H6KZ9YkG1hJp4dMt+43kJgVC84i/zyr/G3uJrfJjl9SK2o3itz7A5gUsvdAi1ZVr5teShmzIhMBa8YfbSRr2QzS76DonY0jGTgDCM43hpoJm2OsJ6d3IlyD/hOBj3SBHfbV4ulXsyBAArZPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUNm90PB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUNm90PB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF2C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753031393;
	bh=IWsp97zlAEv6ZObd44urXMGjxdhlO757m4o8TzUWCeI=;
	h=To:Subject:From:Date:From;
	b=rUNm90PBXbhdZLIwxTNMfBpoqyvfiX8AqzBTxa791/YSmnPVEZXVi1/FHNtAKBbbF
	 SwQeowADboadGBFpQey/bLHMtQbLW1hZPHPLt5UcByZBNPxfATN/ApHb50bvzs70dS
	 lg17lhMaEjl17UGUl7tpqln8QYiZqrQMPtrjVahQrbMztYar1xJObfFMz4tSGcgfOY
	 yIg9jx+qABflzrm7Z4YiPkOdqJav1nKmhn+reFZ2aWrAGis+i6oJltJrL/X9C29x5A
	 S1m3Xiczh2oCfhuHKGsUc4Opj4m/H54D1rKL1sxaatQl6SQI/tNEzl3DCpuAMgoDHI
	 rETs6je7yat5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C2DC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175303139358.9633.2789205265903258149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 368e5504193bf3fa252fdb9314357a74a802b8dcea857bba95fd33e89ce4d1b8
Date: Sun, 20 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753031393
