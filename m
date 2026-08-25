Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB40342524
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787676034; cv=none; b=r5JI7cSGaNHrWCmadLPowa0jFJob04FzuN1fNM6iDCNcUFCQXMyJeT5sB4Xf0d6d3ctU4RLbnR/PzCJADYEUSgHnYi9F3bzJwslszX7YhD5MQCY2j/T33+6XxpHB5qjkiaYp9eGgyrItfnSmwQB01qq9QyLIj5jPYd9nUhyI2CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787676034; c=relaxed/simple;
	bh=UXjyBvw/VxKiQKUgZLynUmsQPJqrbPL740Ch/XNGqWI=;
	h=To:Subject:From:Message-Id:Date; b=VhvNe2TvTQzb6m5uEWETNgTqxR5MLA0I1Cs35sfZajXipo3AoRuzxVE/TWCQqY7FJGSaMPiIGC6sp+tvj8C+dLGUpYnvCz2pmI4eRppL0YB/Qp0YaQvJa4PlMTnPIiX1oIKxVivMTzsVqSNq0Y61G6ovNW2a/rJ1TOoITELiK3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UCz+FBvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UCz+FBvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3E7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787676033;
	bh=UXjyBvw/VxKiQKUgZLynUmsQPJqrbPL740Ch/XNGqWI=;
	h=To:Subject:From:Date:From;
	b=UCz+FBvuec0/ROPkSSD5X/qwNCGtZ6BKXxgOwuSvHgVd73xhkAikdSun6fgNKCUh5
	 JATwUUIfnlBgyuSV2EfKr7L+PB83wMLHVMBJyVIH7JxOI7Fy+K0RQieRGu/QgfXeHD
	 zEQ+s5xgG0JmnLYwBWtldgzWTH2G8BXy+aS5H5XeGiJ/seAJroFpcjOFDu9WhoksXe
	 eu/fr61s/Hd9urUU26uaSy/udKA81iroP14zzGp0UtcRyng9S8+TSw/n/JtADT/nq6
	 u+EJR+JzRLy3obP9vWI6BHT8oZBp5bib5EhJsMxg4RpIjs/QF9hBTxFI24jW9owUIv
	 D7YAzwf8jau7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75E4C61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767603370.18678.8311721523826096566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8434033f738d9a3af40c6065ee005378b5ceb2afeda9bf34f439b9ea3215082f
Date: Tue, 25 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787676033
