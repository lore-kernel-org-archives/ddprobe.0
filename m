Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 563C7472F74
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791455434; cv=none; b=ZQVzlY33dpT8pPyoNhSm5SqH38PPxBU+G5o6dJQ/j+LMXSfInec4wrVKA4Vd5YPi32xXxYIwRqKl8zs4md545lxsbEuQmrfN2QgW09rQiBeFMchVmBymLbp4kq9PesBO0iSFffpjA/O4jd72fPyYILf9QXk5DkSXCsgYPVXncxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791455434; c=relaxed/simple;
	bh=TtULxhHnPnixsmmoJcQDHF+kWy25L2ieJnYunh1xl3A=;
	h=To:Subject:From:Message-Id:Date; b=HzacwUY/jOlkcWq5tfurRM5WxAhcsOp2x2CH/1uh19bO3BuL144VhpjbzSEqEB0XBEIFyXLX9QqwbejDX1fcW35HrHEEcCCL8odBnZTxtNACRykqiFJWHjqfUCETd06ELdJseHqXDsxYb4WcoreGyilcJjdrImaygPJjmxW6BDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9UHI1Dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9UHI1Dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73E8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791455433;
	bh=TtULxhHnPnixsmmoJcQDHF+kWy25L2ieJnYunh1xl3A=;
	h=To:Subject:From:Date:From;
	b=K9UHI1Dg43Rj9aboFIw1V19mEUX0XiK/q5ecIOM08qMzWksSC9DXKA64L2kxwcjXa
	 Fk6ttCPvkuV0wcIkgJIzs+xLM0pGGhmiVIvisiZdgBCUrAhy0wbWbFrvJUjAP7Pc7c
	 Kko6hiNDC4dxjgYqgyGfZoPK68I8zPOO7pxqoIM6IB9HOQermM4itxgMp4hZbgiqdu
	 BRdxQOU5l+mpHhRd8dgefOxUKxsYCQkIvSitHFSWAo3LbZ+xbEz2OzLy2jRROgDefh
	 qRfQxV7JQkEW19vmwsRe9wl5+g4KGSIuzDupWRv+FxyTNllS9FDSxzBs2JnRZWBp+Z
	 5P4w1zbCmvx2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22BDCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145543369.32014.4705669729299378955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc6fc032248257a52c87dd392760a356bab033ca01016ec34f3198d031ce883
Date: Thu, 08 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791455433
