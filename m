Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5935D3542E9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769165634; cv=none; b=X7hQGbiTxWjTGqWLWj1S3MZZ9sOCArZ/hT5IY2oa4LCm6fYm/noixetBsjQmO/4laIgj579cUaeMIJ56XZYDsoUXST09oJujYRUPLlZmTf/7QAy4augMrzFck6dW7ilA1PJszV122qHLjNmuDriDtuhkIl9SUOf3X74emA0U6w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769165634; c=relaxed/simple;
	bh=2eiKvJXtZ+EIoMP9zzBB2SmZJggdaHWCU/YJQ48/d9g=;
	h=To:Subject:From:Message-Id:Date; b=WzfdTj1kxpRcHHp01BJ2xISQM7KVoahZQWE6ZbTfGYq08p0zSvCRhMMzM+NiHTGjVxvyPgt+cF8/SpRJ1aXjRzI7bkgAlINfitB0036cPVRCCMPOEbqncUxwlhJX85s3+yAVx99Nn8Q7CjwFtxWCKodjp3Ed6LG2PKjssTfvOf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIiGJXLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIiGJXLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A193BC19422
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769165633;
	bh=2eiKvJXtZ+EIoMP9zzBB2SmZJggdaHWCU/YJQ48/d9g=;
	h=To:Subject:From:Date:From;
	b=QIiGJXLRrhGyk0aeBEOsNbpqow2enhW/GKLT3sc0Q7raY48+gWYPLEm2RfQNHKFNc
	 xVZklj+046vhRgVg6ZshDmUitDd4VM39aApGrXeHO1djORm5esoTj8reiSw0GV46uk
	 rOdTT26V3A0r2j1FpaoYRCIdo0RUOYWqa03TRFp5PojBgwJEOwpPamJTymcN7cD4cH
	 AtHg+Vr5rAbNf9N8ZkLOdAsRrOgQjViG2jtTYolD8+lprcqenUy3WY8hJyQckJDP+8
	 ODY8ilhNjl/C19ki+4iRi+Fn/5SNiT7ZkgdhHz91cYAcwCEvIOq2ImLE44RQkdwLmi
	 pPt+uFPpKRaww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D4DD72373
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916563359.10014.6890307560968936088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f4e874d1d0d782de0e65ccbc3b3e34321d1c326d226568fe1d59d31e12834c
Date: Fri, 23 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769165633
