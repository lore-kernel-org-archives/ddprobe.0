Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C70296BA9
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757968194; cv=none; b=HaVFs16YL03iNifhnIuLTUa9SLtSkiKjneyQxrH8bwrYWYolu95abfXJmTI11CrAFeMYza3N/hl6nKFAer9nfV+i6yO1CodyjzBFCPdBuvozzlbhLQIM+c5nRPBDsGZyvVJN3GMaDRPaWMWsVGfUTPv8Z5vhqFrCwxyblvq1qZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757968194; c=relaxed/simple;
	bh=3vLXSQjmyDnkhS7vZ4HNkkGwrpnWLPOgf/XaWmv91E8=;
	h=To:Subject:From:Message-Id:Date; b=kGfuhygktapsb3FcLApJOs4AqfE2UJQ2fsjdewZSscZ7jFIHXRpPctDBP6ywVoXllmMG1mgyxJVHDUMZTL2gZEOfCfinqOhj4ChTIL/ihrieZJ7hJjiD86cSfkRZB1YAPJ4rfV03S3LUofSh1JfNt41OqsbGEsOk3JKRduTlYPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpI7xZ2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpI7xZ2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E13DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757968193;
	bh=3vLXSQjmyDnkhS7vZ4HNkkGwrpnWLPOgf/XaWmv91E8=;
	h=To:Subject:From:Date:From;
	b=jpI7xZ2LICVgCkMKwhrekTgkzljqGLzxk8cughCtQR+9/58GosV54rP/jDve0JdZ1
	 TROoSLzV/brWD1n2o05/K6xC3ANMW79pF5y0fnVzuXMODEJ/BZzQiMpIsONUNRvcYk
	 bYuYj0v/rIzS+YkbToJwjNJqAJBUvNTGo8EEQFMaelNRoJc3xpWwKRUdzAPXkrYijY
	 n3fTKlGMOCb0uEKU2cLykyt6ut5bHU/zqBHWtYTQuzYNpavtKdJTF5MT3Hwg6PijHE
	 auOqmseRSzYCd3IOo+6GKlT7xZustORZOG3etA/UIs9cj8QeEf6Yjt8/786hAAfsBP
	 Xfka2i4My1BwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F482CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796819357.6151.11034632978298600933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a3d9640b5884aa52746f90a198bf74aa9455d12a8a883788a0da095890d2408
Date: Mon, 15 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757968193
