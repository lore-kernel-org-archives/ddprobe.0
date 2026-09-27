Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472183BAD88
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790538034; cv=none; b=XZ6OSPKJDE9iY8LZSgfOww0m8ro//uZUTNxxqusZ54HIJxqs+anRlHG3P9KQnOxUTWgAsYtJpakpytMhGNAlvJ7o/WHRaNm5V+zQSiirwesR8hcmabBV5YkCwhRVEEwD6XVPUq8XOv7feluESDxirQfKeuugulKLXTX5og/IHHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790538034; c=relaxed/simple;
	bh=nz8MC6folTy8cXjEqA19F+IQwUxzzPkHAU8o2EAnvdY=;
	h=To:Subject:From:Message-Id:Date; b=rV0L6mYva4YgzG0qY85rOUhYcgOWmd1wMizK5vs6c5V2QdAZc+As27cYtlII7d+OImlkRG4+cPZoKVMX0SeUYXiLRQBXuPaOjBTKk6x+3mqJSKPu+dMO26Ln0ZQlRSNK70Rk0UxG9e56N6XeoIsztV3VAZxQcc3X/Q18ekm+sGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3ZIEPpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3ZIEPpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D255EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790538033;
	bh=nz8MC6folTy8cXjEqA19F+IQwUxzzPkHAU8o2EAnvdY=;
	h=To:Subject:From:Date:From;
	b=i3ZIEPplF52VPuLBVnLF6+OfiKO6Loe7m5nSI+qevb4AQ39d3lOna0Prm4c/V9rj3
	 jFlsAZpB979SHtCjQnmCuF5VwQA1woMD9MwcuxdzJsQjHYOHXo8QiGHW5UwCAIJe23
	 36s6lHKdJE/fjT/l0hDn0zQ77RM8JCYL+yvCJonZepBsDA77k8PyfsTgmLaaGPMubj
	 qzXxAo6e7xMweJRe7Lf84P+ZJ6uiLdpz2L1TZb0ronst7RWQa1vLnillrlJRbQnYry
	 oNBfe0BaebPeTVSlJ27/nPX/tkV2Uw6bJJnd7nkzcndMVm5qz23Jjf3tqftwDyY/J5
	 35KWdA640FWGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD429C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053803368.4045.3511620384830611404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffa19b063df55e70a7a7f7f866512fd66bfbbc957358e8e9b67474a8c86bb80
Date: Sun, 27 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790538033
