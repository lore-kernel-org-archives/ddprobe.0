Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2A8365A0F
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767978234; cv=none; b=aZnBgT4kcUtsU6Re7MV93POQOe7uWeg2IOyxbfegx0xc1lIS5tkDv4ImmnW+qlyaMT5zn29DQjC1+OzYwuerZP/liFFSfhU/J92Fl3h2MhTB7k6rgb416yPBtDAlpUzHPLk912aOuE5nsTtbmwoDMMflkX0kZcF9gRVMeGDsvdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767978234; c=relaxed/simple;
	bh=RYE2KOdgI9jdualY1fFD4lbsmfeTEC3CwodbIdGUkwQ=;
	h=To:Subject:From:Message-Id:Date; b=GddZWJG5hGKpP/KFRPfPlFPIvYtqUATtcZn3rzu3p/cK4SiBaEoFWVqH2cQKLWIsVC+GQYEx1QWoHLQ0KktbWCBrwExgWjZSpvKzbm9XLjsJ/lKtTMWKMvbUPzcK9NFedlEUkze9eRUpdOjABcJdl8RTLnHnW5C2d9gggM68pgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ir5BbLiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ir5BbLiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0104C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767978233;
	bh=RYE2KOdgI9jdualY1fFD4lbsmfeTEC3CwodbIdGUkwQ=;
	h=To:Subject:From:Date:From;
	b=Ir5BbLiBtcsZCc/F0sxpgHCZFsgfaIFLDpeeVv95UC7ob1qwNZ/2TISCoMuhY5ssX
	 Lm9jUI12051xj0cjOcZ2ooGUmMHm83uT8j9qmxT9dOoAhLSO5mCipGkid0+e5RWk+u
	 yjb/kErlCNzLTuTYPIR1FkalAuNdye2LAXARmYnrVwPNKVvnxO+RrD1QGrd8oje/0f
	 COt1G8N+NhJdWEd7BIKscbkWN+nwt3q6fW52xDGVzhoD0MYWbGGc1hINB5LTe+jv0X
	 IfSVdiC9IMwtl/HP7YARy1PWBHGQAJ/Bq3aW1lcCfsJalHZKPhdIyYj0XtcLy1ZOUG
	 5wDAKM76pOjbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C7FD26D71
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797823365.4471.12855031919070653127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38faa691c99291cb31c66b49f97db3ab8bc451102a2fce4460010f19861a3c4d
Date: Fri, 09 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767978233
