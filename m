Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B4E1E0083
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765744374; cv=none; b=j/5QoBTEkRrcAf4N9KiWKLnkEUxZvnbwiRAAJ+1EA7eKVvZGyEeIU/aepbAV8unxRKksrhawbUAPnVXni3XoaJZHi60wVHq2CRYI4p/RDdPHNJJ0K9gAmw1bIWLnlYr9UPbvNXUo+x9fBkmb4KdwNJjr/2wFv9BtfZiAhzl5CLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765744374; c=relaxed/simple;
	bh=zZAeIyifd7j8nxxPlAe9hSpIEu6/YwxKb2k8h5Tj+M0=;
	h=To:Subject:From:Message-Id:Date; b=FXuWDkImZgGUJ8Ha3qJ8Cwp9ZApV02yiWHA6nShLAvUsfMnRM7GVm//M1w2wZ+uoZJYYkAklJo65bsj85D4Rm/b8ke0XDHuuz5CoN65GZmOD64iBso/pZyv86IVIISt7MHEse5OH/viZZmtEvgj0OTVg2miTtnEmfKZU/Eqch6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITyqxx4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITyqxx4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3EEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765744373;
	bh=zZAeIyifd7j8nxxPlAe9hSpIEu6/YwxKb2k8h5Tj+M0=;
	h=To:Subject:From:Date:From;
	b=ITyqxx4iPEON8A7xx6K+2RyYkqpm/aEWRadrVXlubA7/ea9e8ZabiBTnjtvmHPJJM
	 obiIoERG8nmirCuWbMbJiF0o+nmADtUrUVC5iQ1IwIRThooxHRPriVDDflZpYyQdfN
	 sUr2gj0DWTeI9EPYuajTv8yeFxRHof5F1d6TjGn2AcKAv8RErE5r/sseGRbLBvDFL0
	 rpcHrNXgJCf67BtcZXV47z3rame8PTxpLWWTzHISvDhWfTxnZQMb0wyuCY+EXXKLVS
	 OPNZMIxlNLL5sOyjwxqjiYS9vcsN8Ja4PydjTLFzeGWCHegINDui2N+4HKDOXqub0n
	 tjDRg4shkrxsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976C5D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574437358.7745.15113907195974353786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b1bb6af8458bbfd890d612290fc6e0f189150b7407c1c5378621a5019120424
Date: Sun, 14 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765744373
