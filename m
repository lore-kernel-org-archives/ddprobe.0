Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3843A25DB12
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782766714; cv=none; b=gPqlsjHqqY9oCJXMxkKOcmBjasFoCOc51kLB6IDHobjQ9+zht0yir/cZuSie/acZoaGNngjKkSxy0l45iZbIzPRLaUXeAvF/GuGyWD18e0dolCZpHumI4FfbIcnojok2LkgZayw51XCBZC1k7waPqEv+8OV0grcLdC/crI/yo+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782766714; c=relaxed/simple;
	bh=EruiIM/d1KrHgZiiqq63C6CTDM2UTfI707pbpDTJu0I=;
	h=To:Subject:From:Message-Id:Date; b=pcnDAhlrwzuxyXxO5vgdcTI2OZXAbXtCRPoW/DC636N1OrOiXurjO4k0y47tCIYScCEX+r5ZMaffpatVUphp2NAlARPFkUUpE2iyFAKvqM4BPghW6b3yWjqBOW6vxP2n/+v8+YLGoFxclOHrwGREIHg76C5YJMDXpIP4GFaeThM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcLSJYfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcLSJYfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8614C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782766713;
	bh=EruiIM/d1KrHgZiiqq63C6CTDM2UTfI707pbpDTJu0I=;
	h=To:Subject:From:Date:From;
	b=mcLSJYfsoj9n5lAX3mn+Ra5tGoNLcsYcvMYJIP3oIq1BNO4Es4+Yr0BjScHcWBINl
	 vRfS8WJIOIdjrSSbM9owP7k9/RF2QEH0xfnJRqWoaMntq0NuyOewAmjFk0LpEi016z
	 xJTHdbpcgppGiwqx9zUJcbxQlTkScYHJ6PjGW9YAbjopnWvoUjgMHJ3USALg7ZOF8b
	 QfRm29zrG73Ja10B5hhNaboSdV4DcShSK8AnJcpbc669kOpqZreKZM5uDIUY8+Zmqm
	 CS1f2Au/LbUg8ddVnprYSddmez2KcRcnJlxBkv4BkUzykeVWrX39kXcaxpVKRY31rx
	 w2dRFepoJ5b5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B49C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276671368.14669.14417282068530817365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a12626fe4993243a85cc84e17fb7f7c0c444bc126a8ffe7c9b4a82a3ba4ced0
Date: Mon, 29 Jun 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782766713
