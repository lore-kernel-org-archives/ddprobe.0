Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E634086A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775361334; cv=none; b=PMPanZf2f/h02n6rSmw+Ya4YvP3slqsHziCQeGnCXiQK5CXw3cJGGdpDmxK16+J10uYhRzELTwrhAFC1wJU3zO3ca4NjEbhDVcG2+K0UngBzYfV6u3X8y+6byQ7Uq1azN8Cjy6Q2KxX5a/5iftW8Txd4xOsPi+BIB4UMZYU2yCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775361334; c=relaxed/simple;
	bh=jxch/f/QEUFiVxeq6MEzOkl1fGBkot96H/3qTua6h5w=;
	h=To:Subject:From:Message-Id:Date; b=rITtXQ4oWEtFWXTSqGUBhubas8q2uV4GvEyDU4eZ/NeTfDwkK/7pbt/2AuRHTHVEhDR4TqwJ4jDUL69bYhjTP76wX4XChdQv3LJMZBWuovJrAbPdaoPBoL84W3x6SNkdL7G9N7OGpPaUjDEOydoDIq28FcksRao5ql+AaEk92Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPQtfooS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPQtfooS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F20C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775361333;
	bh=jxch/f/QEUFiVxeq6MEzOkl1fGBkot96H/3qTua6h5w=;
	h=To:Subject:From:Date:From;
	b=XPQtfooSJ6g9Wxt/neePilhRYj9ycx9fjsk1r9IkD2WT6VPLTcjrDtJbvvUSZonc3
	 H5NsyS58IMuWgUpy5fcOasXoEFlPZ/KxC5sPPe1qQAPSaJzb4eqVbK5Wp/0d1vxgCO
	 FqoBZ9/Se7koSxzZttn+/wtdariDaccg/j4QUX7RSG+Chlf0YP0X18jf7cDAPbK6Do
	 t3nxbVPl5XCiRdIT2Ox59M8wCtvl/ZOkffBUJIv5FsHFM3qmodLCv/P5MasCdDNjfB
	 YTxPfZia59/PREalhXrLgCGmcFxLn77pe401GZAYpMnQarVa41Wbd4dFNsRfqEcZBB
	 bjMiz5P6i5yCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7547E6400F
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177536133372.15192.17111494762761824034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e120747e10a76c009ed7e6888f1cbe342a5238576ad4d9f23c90b3fc691a9529
Date: Sun, 05 Apr 2026 03:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775361333
