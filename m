Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7FB2765D7
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776571654; cv=none; b=Rqpi2jrCcOODajTbMqQbAl1SEczEGnlbGL3RpkSXlhXVRp0IxRHs7ZIU5LGlm9iHdZwM6lC5tSm21EiKz7En/0MKGW6NtoUtMcdujRxuPHek7TmuVvbQ5Ffd8wNs/9pgzyDKEEY8mwRsgoxGOciX3+1BdxOW1pnE1PRsjfU5dxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776571654; c=relaxed/simple;
	bh=aqVYrItyz2Cw9hzem5V5R+r0ZzpuYf55ogoEuRDSups=;
	h=To:Subject:From:Message-Id:Date; b=FVwYXABRqCDYa2dAG2/kKd64YyP7dsOHf/680rsVj2gwB82nyQMP2n/McG9ocvWK55MyyJO12O6rCt77VJKLY3kP0o5pxeu0sL48T506UPRQLvdJPapQtF+KWj6yYmGsD9Q/In04YGVOuzmHmZloTiXSLeQd6mj6DZaZAGDTZJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUPUh8xR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUPUh8xR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A5AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776571653;
	bh=aqVYrItyz2Cw9hzem5V5R+r0ZzpuYf55ogoEuRDSups=;
	h=To:Subject:From:Date:From;
	b=VUPUh8xRpHmT/LpZDpup6Uw/2OiZVMjGBe2ZcWEd7BiSTOwNhw403i9zmO4PXI7h4
	 9V5e15vd5Fu8m6NFwUtHmC37Lr72I2ZY0pOwQlg7Oa7WKTkFR8Lk0N79NQqadS4kz0
	 XC2Xo7psYnSLY87LDnf2FUPai/h1w83qEXSPyMY6rvCjoux8Nmjd0lnv8rpzbKEzk1
	 Zpqoyz7Da3D+HOgkl0atEWtx1fnKrBlWtc9wvHDGTKxlrH+dAtXNkZnpz32WtspiB/
	 CdzxZESJ0EzH4fgygQMAQTrGmajx360udUkScBoh2wdVvhn8OLiY6QjCDVpEcZu5lL
	 Sksmkvq5sppZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF915EA7187
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177657165368.24371.15369188657170231207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffcb8a905d328c6c967bf46a2a504beb6a67e276ac37e10270146ca9b7031487
Date: Sun, 19 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776571653
