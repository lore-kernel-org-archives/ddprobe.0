Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F1916A95B
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755221394; cv=none; b=YVRWp/oAyaxpvb7m0YiJ283ZlUWuXrh1er2LUKK1eZHcn9RP5WfozE3CPUcBZSaj7YutgolvI1hxn+3VAq7Tb3HfnfDDgKjAQ4o156no82R0RUwy73ziwq5cZDl3gDcOccjvkX+y83JUaxsmXkkirT61YRVmj/dryUCN5vxNYFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755221394; c=relaxed/simple;
	bh=XpweYgQffFTkV4Lk09BR10BsYydG/Lrlgh+k+GVXj0Q=;
	h=To:Subject:From:Message-Id:Date; b=NNR0xl9r3ivViJFxAzXmJkXONXcS/QfrtaC487lPQWs6lHc0snmR8yH7WE5tPjmYZAex9fwsO4arBSbinVceD99Fkd1I161CRnu8swElzUM7vFPFUzSUhlGpSkFxNmavPqDFEW/TSmzQ+FKTayhey01Rh8Y04Y5fWrVssB1Hidk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/9KNqnD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/9KNqnD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A202AC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755221393;
	bh=XpweYgQffFTkV4Lk09BR10BsYydG/Lrlgh+k+GVXj0Q=;
	h=To:Subject:From:Date:From;
	b=l/9KNqnDW/hfBC5NRSychdwP8OSmaqH/IfEA6jgOVlMLmDDNIrB9kmT2y3wWhMP80
	 cgEHSOLY/MXAmn+wERmkByqMRZ43fjsV+1cS2MJpnvvV8z7dL7CeVihCcQ3TYh4XWk
	 UQJxxoPe92U9mERc2w0iYOL8uN08P2NXLMK2lrSrf8Zp0dRe4GHoEHK7APVOc9N1Rp
	 pdOp7QrlgZ1h/RK3TH7WU/lyJYqHYlTN57wCgwsmXbNNAaan038QXHC0PABVdkKe2T
	 d7n8UucxTcUNzQVYM1thQaiJ+9+ZT43YnU5qX+jCqLl0mJrjLQZ6VXhtasWqRgpyiS
	 +K2yGo8ABO63Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC3CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522139358.12539.808262657759485484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c5dca61c872396750847c936a510fe2114db0c1a95b2b8d1835da87ab2a9a4
Date: Fri, 15 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755221393
