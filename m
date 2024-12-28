Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B683C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735345554; cv=none; b=pjiNnk3c9mAhpSEh2qofxTrmfoBho0Oy8yXSYPTmwlIhNbDXcSYQl9Hc6vS/jF7fWiGqk1OsEFfVOzsy+2PL7w6/YQeaBgKmaCmrCJnwO5l1RDl9YgqSmY9bcZxKYZ+YrPyvaireBawz4/NNMjzIHgurz4U9DGWexqzdzedRxH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735345554; c=relaxed/simple;
	bh=sy9Yd2Z9smxDXHgTnSEg6epH5iErT3utMgYPEAgZ3VI=;
	h=To:Subject:From:Message-Id:Date; b=UVJjqZzTFOnkzanfMQUi9ZxaNsVatIXBVIRitrCr/xesv1MoGRgLQIQUGCVSqsrq+YvNDTCCP9v0YiqnRXsUFuU5Z0H7nnL7Onmc07FB9mqdugIgXVMLjfmaGtZqdyWFViOlx69G+i/6LQUKYGiXotSUnyt51vesOfWORNbIycA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZD5TrX+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZD5TrX+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC621C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735345553;
	bh=sy9Yd2Z9smxDXHgTnSEg6epH5iErT3utMgYPEAgZ3VI=;
	h=To:Subject:From:Date:From;
	b=ZD5TrX+ZbKbm5YKnnJyQBt5zO2sdl9pkfuhmRHvCq98d44HqjCD11VBspaaALN5ou
	 70Y1zVbxqyx1JcMBrTxbhXMYaSIHqyhL+9pgarHa699XCSwc70eADrm/iha/kFAgcX
	 ubUQfntf36IdaO/x0Qczy0r62WOLwGJOr4RDyfx8tuVPYIKJN/1vaj/KJ4H3d2LHDW
	 Eh8c0AqFzUH3EOgJ9HhixtIhYdC5+Jw8Oj9igeQowMdXRc5RI7YI2oFSnHoq88/PQN
	 3+xVz75TsFubH9AISXxTpjrF+1w0DVidDNayCUqxDiGm6foZaBkgTKOZRuYuG0Ddlp
	 hDxFTb+0GW+yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC47E7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534555359.14159.14965998504475714034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363705650035e098abc576d6f17e85e385a12f1a748008b4e066b47a0877c818
Date: Sat, 28 Dec 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735345553
