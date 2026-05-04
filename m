Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263653E0231
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777906654; cv=none; b=QEFYDl8RlMGtGW+Coou7uTm1XON6VpDgcvGGGZMmQc5vXSbwcRUrLAQUSWCNbZB0CKqgfsLokqydep23YEQuu/8iHO7vMU0XEADPE0BVqy9jegkyIzncYCZyGVemD9Bc60Iy2VV8dG4QF2FFdMEwk+WHmNthJFNcFAeXYbQV26w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777906654; c=relaxed/simple;
	bh=O2sdGpXpvrwndFCwsqxMexa7LPTTM5Gk4eXeb7+SgiE=;
	h=To:Subject:From:Message-Id:Date; b=V4eLQP/Ovth3sNn+SQHtT4Zz+YJbL9nJAMCYWSifoCOTBk1qIpy0Lzocpm3fQnymiqMn+lNsoduKRh2tuW/DJSQ2Yu/zxTL/Z7XTvvAR4fvCEu8ubqkX9kdj7GO11igUK5yzCnY80PrK1JEv5vkLyraycj8rFPuubrSEzkH7/Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CD0hJzM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CD0hJzM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E22C2BCC4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777906653;
	bh=O2sdGpXpvrwndFCwsqxMexa7LPTTM5Gk4eXeb7+SgiE=;
	h=To:Subject:From:Date:From;
	b=CD0hJzM5/MNd3EKqwz0zdxp7SJ2RuBVNP4TbofXeb3RQKSLT0Me5qtP9BaQq5b0Xq
	 y38O40sphuMW6/szLcEr+c+0X01tmYsC/0hBIwP4HAPjl5uvoM7tCEiZuy3EFnlppv
	 92G7vhuKMdAdykYTKBQqn9dC69PEiU/+71vqXESBYxexAVBJgUPPJqrF1okw9r7di+
	 +JuTQ/DfQEQgiO1L970t1y1etlUFd50g8iqQZsL/HJ2mEjLt/PAZRYC1C1AdJe2kxP
	 6s2vQUhfmpXDak/RDXLOyUcyVvnR+L5u6hrpJcs8PU3n4ujBq+XevLJ4Dlt4EAKiwR
	 pC5hVMA75Z0+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA08ECD3430
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177790665368.17902.18303948521903460198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d089d153fd07e41154bb6645837143e96957feacfd7e1524e0c860b58573fe
Date: Mon, 04 May 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777906653
