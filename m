Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D796FC3
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759635594; cv=none; b=uTXZemSe9nR4fysXNZKAprkcf1NwJsx/nVBVhzmATJTLGafu3B2WGy0LSR8+9wVSSIiFaYHD3/9jkt97qNJL9lYBKpzl70OUo2g6axYyUy3EsAKS0if8E0Cfy3RlFUscDDd1c8Ugo8NEwbTdR24iYyb4w0RC7DDn+tGNorJ/mkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759635594; c=relaxed/simple;
	bh=FL1mf8rjreqTnWWU+xJGmELtLue92NCDaJ8yCs0jT+w=;
	h=To:Subject:From:Message-Id:Date; b=kXs7X+YOjTQb0IVnu6IB1kxw/D8D1cQCTGleQU/OcaP7Z55vjiCXpf58drJloShGVOUPbbqhYUWKOfmhtbBRrIlzZR1qmPIjGM43So+sKCJmffqmrpCrAscg993R1GCStzlfmxbvkUrgjlWhiwGwJe5cDJGDVLAN27vVWX3XDQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0fpqtLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0fpqtLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A613EC4CEFD
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759635593;
	bh=FL1mf8rjreqTnWWU+xJGmELtLue92NCDaJ8yCs0jT+w=;
	h=To:Subject:From:Date:From;
	b=J0fpqtLcJP+DrpaIKgx2qBn9ewveDoztYLLZXkhgx256CHAgUyRTBKcBqCmzoN+G8
	 QO4b2PFL80MYmx5VV9uOv9d5Bx9NrFv63YXp4OiBaMpT69vh9hSzawXyxmGjVrnHof
	 OCMW3E7qM5rUIPW0UZ9wPUTHktABTLdAbzgwWb7DZ47gx67ZnqqniLlykC7jHJyyhD
	 +fDZEk9CSxumDAGJOfdfG6cSXpbNucW6ZhZL1Tv+4fwsmVBB2PLMstqo3lTgB2z2s4
	 IYnmH/Q2o5noJ5tLF2I47h8S+0Qoe7UsoounhOFJc2IZ16zrwDMdPI9JA/e/FCMCn9
	 LmDsv1uCpGcbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95382CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963559357.5268.13958032311250832314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 811de8aed3c72cfebd6375da3a57da02d8b0fd5b968151732acd943c5bfe3096
Date: Sun, 05 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759635593
