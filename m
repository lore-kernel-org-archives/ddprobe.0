Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C00A34A3CC
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761919194; cv=none; b=McknHoVT9zfFQgXiwKzjZ7vfn2QRJ1zM7r3kA59849b7zhVjDJHtRCh6L8LJMXusT433DtvUYKLuIpVXzhnkNqB9Nc6eqPio/0043T5SjcdF7p5cr93OV4/r4h7rPDC2Ra/dwhHnCr5Ml2QswiKTvO65JpDWNDqSts/95NR++wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761919194; c=relaxed/simple;
	bh=qVzXVWNOorInAqqZ8tck0P2IllwA3ltqg5/jVPQOrYs=;
	h=To:Subject:From:Message-Id:Date; b=D9XAvkeSnswijPHWji+39YjGDhUFEudWg3uZ5aXLAf5rbXJhsL1/47BtYWo6szrC+6AntFPEdFbDaEhPZk9YH2MtZwtHpM22BbOgYPq+z1AJYrJ3y7phnhjHrpD8WCghjmem0n5E7+grWj7Jk9+OETaWraaUqQmRIsyj1unSy70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCXpSsTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCXpSsTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA6EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761919193;
	bh=qVzXVWNOorInAqqZ8tck0P2IllwA3ltqg5/jVPQOrYs=;
	h=To:Subject:From:Date:From;
	b=sCXpSsTbgAhrv/w+cne4HO3pTvSwJ3gknTOKdjarAnkbWPwQe0BdmkAFSumMReZ/L
	 +jQ7zjGnQcDP/m33lXaqFHRAWcf/EOsbphZs3Eu26wNz72RfFHI1uyNveVWtv3LffF
	 pTQAObOmq+IRDRTi0Fu3FIrTX/1yGgN1mc4gC6madV2AXaXja/z604ND52BcqpCUQi
	 xjbjfJC60q4AFJqcH2xCKzqoIwln2EChevQVHHrumdXPXEicJN4nthtRj63COeWCxE
	 L3twnqav4Wsi39Q/8ASgmP9QysyI8Ha/xw0gYeGxmuxlSBbiaKtLd8XN2GOtjHpBxh
	 T9e3UuqxpF10g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC10CCF9FF
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191919358.25633.11009970681479211039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee739ead527f681d744b8c30ae3cbe6cd9a680e64c63ffc27aea2826a9d5a24
Date: Fri, 31 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761919193
