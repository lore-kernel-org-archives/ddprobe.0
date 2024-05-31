Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C432E3F2
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717176863; cv=none; b=CdvOkKhJVr1oWkpvjUgw4T3VMNdgqO+Kxk2Mk8isbXxrlS7OJFaiWmI5vc+QSS5uT7fkgd0hCI3nsOvBz9t2Qc4FBKe+v9DGwIsPe+5yKU9CywC4NNDT6UNu2Py0U+bMju4Zz59RVcwKhqSPpfAQ5frWry7Ax/0ORpaNj5fgB4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717176863; c=relaxed/simple;
	bh=OQD3ot4DINVgsL56EFNzeahJFW/OuPIDwUo0O2FRgSE=;
	h=To:Subject:From:Message-Id:Date; b=JGZPY03HuPEgBRWk1U8COY2Jx/U3v09kvho/q5aKTpdzi8bjmk7sUQnoLDNxWCB4hX4UOg2VjcR4AiP0Wr9LfqtbF0DJ5GakPi38OrWUdhREmqlmrBImsusjLQR9zADv31xlZNfNLvZJ5BjpYzafNnf/YwuQG32S5yzVEuEsLm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJdgMf7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJdgMf7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F8CC32789
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717176862;
	bh=OQD3ot4DINVgsL56EFNzeahJFW/OuPIDwUo0O2FRgSE=;
	h=To:Subject:From:Date:From;
	b=NJdgMf7lrZEBRbAy/hi4NxRcbXkETpgmR0PZa+QlHViOB5SvgyifvrbeB1WSZzBuq
	 sGSVgtXkVrv56gnp+eLgL10uwV+A/f1LVPj4GiPh85Wp7D+NcfSxK/mpkMGSUBawQ8
	 M+Nvqhv4LZiwK/z34mZHCR4YxLvyK1Osa9+F2w//lfJufdvNxiMfzgk7bNynOMadk8
	 tRHki5kYZW0f3m+aQcn92uEKuUMpww+PgZwob68cQn0zSIRnTx0+DvHdBtd3tYvUNK
	 ByX+9P8Sq0fqHiug4UMmk+f6FwbkRcO92W61B8ELDhXslVZL7CpTNQDHgENoh10swt
	 wtvWFd7TVWK1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC667C27C44
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 17:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717686282.20784.16649892381861046938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff916dad3561653620a8754a18cd64109d3e74d4c7f0cdb396effe9819e4e218
Date: Fri, 31 May 2024 17:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717176862
