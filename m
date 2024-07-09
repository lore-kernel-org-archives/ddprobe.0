Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605031474BE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720569383; cv=none; b=FvinERLXW6m3TiTzMU3TeT3OiYcrZ+kPUUm8U6EY5YzRsoeGSZeFhillEVijC7LKjhhOPAXYN3yLxyB1rzsDLBkwZzu/+aOJ5P8aV0QaD481mQryiM6qXCcVu/cupsV5Zb36q+Isbpc1xXvoqyyHCZeKeXtxodJzyHu0Z17xcD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720569383; c=relaxed/simple;
	bh=lW40/TSJVSTGEykdajTrXuMU6bLMKpFiutVJUuz0PNI=;
	h=To:Subject:From:Message-Id:Date; b=WGXf+Ayr2TUiFIza8DEKuqfimpp0sTNWUBi8DA0LXeuPtvI6WlRrVk0DmDFHALdnwQDzB8UBJzAJ1o++sv8hdIW41X5N1qhMwGmX0xlmgXWEfqg2WYgW8niMmBWL6c4UwwGdUX3yUOT2L8wewvZPQEBzPmGR7oh5pTWkCelLpP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOxic8JB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOxic8JB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB3BC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720569382;
	bh=lW40/TSJVSTGEykdajTrXuMU6bLMKpFiutVJUuz0PNI=;
	h=To:Subject:From:Date:From;
	b=dOxic8JBxLJfNqysTosTRq6RDvRbB4ZF+NTl4v81jJ/ds5wKkHousca+OJ/agIRVz
	 +1ieHkTdcInSKmxaLut3Zg+PNMy9TP9qxZwrBMk5lx/BpaVjS2o3PshR/lOlFit3NE
	 pOab70e0pjVXLrDXMnfG5w9r3sNmAJikpb7CEmCYjrVW8Act2QBHgxMyi4VnHVkXLC
	 /ViYPWt8HcZB4scg+i7WT2jJU/ovm18M7tO223j/kzqLxv9lZn1+8wFBMOwmAub0FP
	 n8dvHYgEqGGdm4YTgPHxYNaIQet2E8vNGg/lRl2Zx3swCbQ9SF0UETkUaMgQduUOTX
	 27fXzZdIJ3UIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC047C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 23:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056938279.25177.16728255455515691024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f430802033d0a675090dd1f6f1985aea06a549d92cb5afee175d9f96f0e7e2
Date: Tue, 09 Jul 2024 23:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720569382
