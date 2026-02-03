Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F46A28D8DA
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770150834; cv=none; b=gzXCh2ZG8a4FEZv0UPcSSzokEY9s1pZRlFAC5AMvl3Pci9TG7IfA5ugteCkUKzuWfq3YYX7brbNfEhC/MipSKSgLuAO2oPNAQ/yTZ8Xkfw7jjSSApyA4oaA1QWjjehmgKQYuhB5NBo0oa6hklG6Ew4VEnBCc2qrSHHT+6Q99SXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770150834; c=relaxed/simple;
	bh=36AC2qlhv0txq/mYj3kVK96qr+c7Gpc5Nmr4M+iLk7M=;
	h=To:Subject:From:Message-Id:Date; b=E1qilkekidhy7sLQwtHMVpaJIGcH6aczLQqFB8HFh+Q7tgrA4anFZRvb9Loqj/uDw+/bn1j2q+29gRwoXO8rkeR+zhzcxqsns+RzT9qaIIerq8+NsaVlsb7bwLTDqGz577eNbdG2xD0Nxz/TDD7ylXU0EvfoYgmwlg15tq1vqhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KWkoT/US; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KWkoT/US"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF07C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770150833;
	bh=36AC2qlhv0txq/mYj3kVK96qr+c7Gpc5Nmr4M+iLk7M=;
	h=To:Subject:From:Date:From;
	b=KWkoT/USV+jwYnDAay+8SABmmfx5BTpzB9G6IM2DY5NwYnN5NDmfdmyn6FViz8pMw
	 iGtzXMChljREMeAhstcjpQ/0dDwgHJfpxaz7Klzz3cxQqAHcNL/1xEhr9yBXNrbBFW
	 kENIuZgUF1/3tFaXwRZX8GIwxGn23R7LhvKNtg9Xmn1+rD0eD1gAep1LwXGpsBr9+B
	 8FsDJEAr9//fVzUT85P2yeNVX3inIvIAKKIlTmPMCFmJZUiXI0EADqe6OW9PyShAOI
	 +djiCKqTbqjOC8ZYNTak8J3Hw4cH/o8gtqa2iXEoltcaEP5FycYv1GFEfMPT9lh7N0
	 0kibwumQDE2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9108E8B361
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015083366.18821.2127618166362355832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886eec412f448e8a72391afb870d8557ef91689870d3955c6ca74d52c3ed4389
Date: Tue, 03 Feb 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770150833
