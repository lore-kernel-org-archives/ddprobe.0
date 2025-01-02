Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1941EB2F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735826154; cv=none; b=p7QH4Ml5ZVygbHGaAPLkw7BYuNyy4mqCPPFPbSF/kO19vHPsj7kWpXsBt9542oQX917t9iebY2Elh12hKaF70yZn+8I7U4RMCqLpk7iI5RjqojRtJ9YW7h8dnxmiZyxnm+m6Vm5IA9zV3kiuw7SLVwomGcUknk+sPGIxPIHidtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735826154; c=relaxed/simple;
	bh=fwLgZ70qZFsLWOk650sTU3ZbimZLodXYLrplJ/CSsGo=;
	h=To:Subject:From:Message-Id:Date; b=ac5H4OcqlHtvYOD5cbu5nZXNQFSZ1QNYqfmQqd3Zlwem4KMBB/qEhVQlei5e1Tzgfcq3N1ChWkVUQo8Nx5wYjHwijztlL3C8RTnNw/AwBwljt/naCCqQX7JE8hj/ku8g5d31pqeh6rlqO0hyCExN8PvLM50WrKf/SghFai8GMS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqCjdL2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqCjdL2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD65FC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735826153;
	bh=fwLgZ70qZFsLWOk650sTU3ZbimZLodXYLrplJ/CSsGo=;
	h=To:Subject:From:Date:From;
	b=FqCjdL2Dwv0rYP8zDqZK+G7hU4THQrz7Ox8U08JThMQaq/xyrWM5V2eTDdQEXKmiP
	 bHYfmpBWwc1AUyrziFCueDP2lRJm+4MCEwGlRwr+qvW7B1CXj8xnQKp5DepLuzX3jc
	 GXY5VCLaKJ3QXU+o0E2tj4HESej2N2RzB1GSYBSWb4QzYAd0/62QqwaWN4pUpPJFck
	 mEfgBBJ9XK6hZASgr9IShpCBf5Rnui3b3hpbJh9iIBJ7T9qMrr+vrEfWZJRDlpBzxw
	 V8BwOnZKJ75pJNQHFjctO5bfJ79RvcYTHVuOazVHb2xd9Ni3nIqKgnF6ldTSpvzaNL
	 Z14CCjxOeezfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E1E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173582615359.10165.16926069775816176621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e1286be87925d9b89db8b58fbcafb46c150c8a30ddde7d0d61f9dc1622ad06
Date: Thu, 02 Jan 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735826153
