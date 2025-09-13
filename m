Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF494274FD7
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757764194; cv=none; b=XhCGv1CWZ3JNl1bapCsOdGwZUt/v7mxq5N0YKYEL67IffDsJBpIJR78XEUERKs4qQai9XtMjcxb09ngnbtQMyoqAgHKN8E7goJVQCy+raN7EI+pb6okLak6YOBTLncTpnJSNp7sQAowFmxPgVygcDE4uE6fJ+Ybjdqhno6g0GBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757764194; c=relaxed/simple;
	bh=6SY7syzSX5dapnMq73ho2eQxBY1caBY+3iWuwSKZXv8=;
	h=To:Subject:From:Message-Id:Date; b=s6Ct8MT0TbmeqZLSEH0seRTfGr4MN+u6gzvUDOG9tgDMX9l85xjWytMmldH2DZxbYuKDmBc/Fuz5jlci8h128tzHEAJVP0kTAaWzf3Wpaumwvt/GOTnanUuM2cdfN5Et2kGRMVwI4+fISxtUzO8xTi0tqqGGUFNGXdcnocYPVrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aEbbjzZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aEbbjzZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB5C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757764193;
	bh=6SY7syzSX5dapnMq73ho2eQxBY1caBY+3iWuwSKZXv8=;
	h=To:Subject:From:Date:From;
	b=aEbbjzZ55LUBk5LRezpw28Uuuv8gYumn8Bp3pYXO20t6D09jeMObFWiBgolzWE+Lf
	 ri7tPJOzrbmqXtcbE5t+P7WqZ2ZIlJRQwrUFQAzY4GW+Mqq2W8moFVGNdKFtkTTcAB
	 XDjqK3oYS1VsS8+4IETH/uxY8Q7pD6p+/HeQXS9fDANjL60FXSzj+hxHW878Ny1UFq
	 ug/dQfl25dQXD0QNUTE8kloJYfWOVukY0EL739ZPGiH5Lad4e0qjnOSzcMU5HPU2vp
	 4MVKIsKQPkf5jConKCZ5PdArdUb0vMQO7d9i06IOMM/++Ip+F9UbUW69Di31ejW3nl
	 kdwVU5C9PklAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECBECAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175776419357.17743.13157763769237895647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 229ec5b43fee7c185ea71b10eecd3a5102a114911b323dbd2efc888be150439f
Date: Sat, 13 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757764193
