Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690A020EB
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 01:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741744734; cv=none; b=CbuREkoPatwrJGy89QTKaXa3Wj/WE1XWn3RTqc04lhMxM3O305pscB6KPFtdl/T5nElMdZcVez/srnCLJ1kqGhOUAC7CzyFsWJSCIbCu1Kd5jknvBtUhbUN/780XQW6VeO9gQck1ilpwVDTS5wnJOyb4zrMHSpiaKt5wZU8G+bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741744734; c=relaxed/simple;
	bh=oV0w8/havJCnt+sbrLqzGZjco9pb3eu2E+cAbx34SyQ=;
	h=To:Subject:From:Message-Id:Date; b=StBU3KN9dx8raCr7XQof2yMAt1SgRo1Q8yNtsTaDTC6waacIh2XqzR1uW3Yif6e5xnQs9qxzTaf0zcq1lt7PYxkPj+PVCOtiRxo43MUPny5oiz/giQAaCg2lhAXFPUaA5A0Ya/Cg66V6DXiHa+yz+Ck1ol0LZ+ZEwJU6d/Aa84w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwafFTCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwafFTCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09DAC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 01:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741744733;
	bh=oV0w8/havJCnt+sbrLqzGZjco9pb3eu2E+cAbx34SyQ=;
	h=To:Subject:From:Date:From;
	b=EwafFTCZvIgyTX5fazitRnJYAMj/DuxLxj2TGRboUinYT3lqvBGPtigYRPvGH+4kK
	 t3rWisU7zT6nOfPHcIwNR1qP7hPq4OZ7xp7lsKNIsUwGroAPMaOdo4D737LZyd7mkk
	 NXqhsOWjUnBn10TQ2qge51VTrmoTUh9kqvKhgxucvlOGmuYgCQNQ7dVktzX5RcZZFu
	 5I4cSMgGTa4JPDzNdY17dziFuvbDvhJ7aIiuiLJI/WbuBMqOyUMxv3uEHJdnFalLci
	 2yXmqqXWXmFuRkxpHQzKGm8lTxE7J92IWlNSZc/2/xFZEVuO1H/eN1Yybbw4JgG/MA
	 Xv3xvAdAm38AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCF6C282EC
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 01:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174174473366.8137.13558467602352534550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d8d4b35345c85b2a34d6fd2f355795de5a612092a8a3616f0c0fb904fc6f7d
Date: Wed, 12 Mar 2025 01:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741744733
