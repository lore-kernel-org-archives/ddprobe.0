Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8EA171D8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717314923; cv=none; b=VWjLfpfNCLePyCVCgPtPP5hAPC13lYtKf7qAFfyLc+95Mosf1FVcna2NCSp9EwkRxN5/08ZOxf6ggblUtt8SgG5+/wFrvg8iBlmiQ5/kHDtQVC1FIE6tl5MSqLj9kyZ/JlM6cFbxcx6ccNpGqnbDvotHoRJ2FTXK6ZzkKlC4wr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717314923; c=relaxed/simple;
	bh=zqb/0YDBOnk59WpyphRWajNqTPgLfdm0KFaPKru4QA8=;
	h=To:Subject:From:Message-Id:Date; b=ArzjhLvuvowRNhveuaP1CpYJVFBTk8RT/uQi1y2hMDlPTyWzI8+6Mih5sJncHhsZOFaJx9fAiCald5mhTTtI8ySM5xFONCLqN4MDebcveWORpRXlkqhW6P8NYSha8DrikRLXh0TpzutGWJGIDB7MCiCI9/MwIwwRXPgHjEB8xf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUD1cqHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUD1cqHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF102C4AF07
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717314922;
	bh=zqb/0YDBOnk59WpyphRWajNqTPgLfdm0KFaPKru4QA8=;
	h=To:Subject:From:Date:From;
	b=sUD1cqHnEvNjHAXZRVqwLE3mu8PLP8EQFvIt/LR5OymmTrbO2QIxf119v4fVBMeoz
	 2DXePDwzsJRoQm6GyJlfXllH7kz7dUj8Cxu9hEQOWEP1bcHnJAJWjg0QdBwoKPpxaB
	 5inDUunPAfdvE1uybCDGXRG+883vunZI6PNVCRO+tvMqD+fNIuisMI/bbcjyT6QTA0
	 XVMSk2hDXCRDINzvbbfCZSZjYJF1pOPp2YWVQoxZXygLCQtw0362yz6qnBxWKJeBMk
	 mlB0eyZvJSJ0kHlDQiaOAhxg5bbMui6qOgq+qWbR/BU5o7udbjUatMtxxPrd8M80dt
	 U8e0FeQXJOZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C706CC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 07:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171731492278.2292.1496826683272371926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c945a0230be10e07f6d1746c66c66032f031ce3cac89680aa34c15c05c6df5
Date: Sun, 02 Jun 2024 07:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717314922
