Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1341CAB3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752885594; cv=none; b=Dw58k47rUxiyDHT1/AXJIqRNZooHIPT0LorKNtKhTjU9A83nkfJ4W/2A8TDfkvyFuWJxau7jY4SjUL86L6Xgc94KVnO3CJ7pSqylLaitiVGxIlyt/b+uSidtbj72vL5SnfFoUWSs6yCPJyMNg91iFVYAQCBd7Y9GI77pRRqk53c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752885594; c=relaxed/simple;
	bh=fryl7bRvo9wO73EUSJwICNqFWAjsvjSByJ/zFZHto7Q=;
	h=To:Subject:From:Message-Id:Date; b=C5YN6bytQs1ABNoh5RU/wUP9JdRLGqgDZkIm3c7bk4aLlpNCtXSPIPVbASTLkRn8ZMoFsdoQhYgHhHVlB4L0DIj/IkAlasVqMVkoSEqWJx2FS6ZHzhbjWqXgZUZRxrFZkXtNN9tftr7XGvWnynRU5iCrbT7U3H+LXFQLI9rJfOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqFwwoJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqFwwoJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D5DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752885593;
	bh=fryl7bRvo9wO73EUSJwICNqFWAjsvjSByJ/zFZHto7Q=;
	h=To:Subject:From:Date:From;
	b=ZqFwwoJPwTz2iLKWYjjAVXWzmVIhcsDxnf/GJsl1P1PIOWnwkxuV07ZkqSN49aDAy
	 iRXNKrP/CZmew9onzTVYAmjACuJfbrorBSzCQbZ7avqVZkNkGRpcfP6SUJ1G/JiQJB
	 0OjV9aEXW13k9RH09cRqQuAtmcWoFuNRP9BPbzyhBW4Ra/JgkBcKtJFq1SKnzfecaK
	 ZDf7NfWHWm/4Vns61cbwE41aAv7x9R3OJnfxSQHfdaCKvSx1GwwzK7uiWu+dSRA6OP
	 vrRXb4g7InjAlRHEvOVZoqHHsqKW7qFQGUlx7t8L/qW2MNu72AlPK/Qr+1m6m3DhtO
	 e6yEkXxoRJS3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584AC83F17
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288559358.30139.8347528205739606671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3eaf74520f184976846245e05774e97098d7e5295f9a314c37d27c41f09f6e
Date: Sat, 19 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752885593
