Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388822A1CF
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759567794; cv=none; b=pgK9z2lpG2ah9M1eKf53BafPE3qynLWbOjLHeoxj/L9PXjIaWMRVK1s8E2KHp1vgI3ajkQC5p3j5bZVcOY/SF4Mjk4eNCV3bl78fo9iovJvm2/s7IfNl7XbhzTUkIWA5kWARspjovfASzSC3UQP36yPNZqqjrdjWxMFohWNDMmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759567794; c=relaxed/simple;
	bh=5RmPx415LtCUXkTpAraOxuoBCvFqSBoNlyWvb0fP3KY=;
	h=To:Subject:From:Message-Id:Date; b=UCxJPAb5F0PLYZZnxJwnsGdTimoIE4hNO9MRdxu8IHrmq2cS+1grBnsARRoCdiUF8mEpy2xJ+1TtlSDG6yiwTsRzv0UizPRaaCwUmyiUev5vVQtHh6haZEh8f3NCPc0H76ItNdr00gGsk2/JdGotKK0/NOlcQE9rDSHXnYiDRKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKMWVFgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKMWVFgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE9C8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759567793;
	bh=5RmPx415LtCUXkTpAraOxuoBCvFqSBoNlyWvb0fP3KY=;
	h=To:Subject:From:Date:From;
	b=OKMWVFgUBzxBsy6Y1NqpeFA2pb0m4QpUSTRwUdcAzTyAjOcnN4PmknLzdU5HFR0IY
	 kWfwrDmnTDzEtdlRKZQknhjwYv4GNJ/csX5tnyuG34qNJ0AgIXoLUa9T0F1XIeOYHv
	 YR+c19RYBYfhAEq114si3DGJjsUYNLJDT3xGTmOeuhbdZBtbT+I/boH19FV/8z2t6W
	 RscA0yQo7zO6MM8Hb1K09hg8QsUyCWfk6YXKAvdS/hjMA/oh8DXzjoIfwKdf72hzOn
	 BB9ozo7UnfqkVHscRau4x8B0Lbg/SJTezfomJnwefWE0ndOpv0AuvLqkLk32lOGgAL
	 DDwqiabmMRT2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D27CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956779359.23396.17989520818830348836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd07c1acd0239cc28fc81753954c75657dc1bef1c67a4986309ef4e76fe841f
Date: Sat, 04 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759567793
