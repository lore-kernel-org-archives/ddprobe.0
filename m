Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223222DEA89
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767510234; cv=none; b=MkbsyJRCQXxu1KaXpSkxuz595oxSgkmEzEFujuX2J/IXkJs3iXlZoiqL0EqBrX37463JgKspuksueXSvtRWl8tb9XUltzB9im26rzy7NdY82Ax0L2a/Xx0rHj1wfNcjcK9vyivyxLGNOPr22yZOd+ASwsKAt0XvruOFgt3OxDIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767510234; c=relaxed/simple;
	bh=y7FBi3WBZ/F0MRlBBf8YG5HKk7pjcGRKd7R8NCi95Ek=;
	h=To:Subject:From:Message-Id:Date; b=W4WH54n5bkuHJYUjczPUhKFkeaJipwBh1ajRzaos9U+PcfVylQ5o4YE+eqjM+4ZVkgU5AZRZ7CIEg6GHwW1Zm7xCifgqN6Ip2+8FgJqoUA4XQc7N4EDQvlTzqom9xKghT69GCo/L5wBApeBwwRwj94eCMsRRICXTbNKyy+RA8dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhwxReOh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhwxReOh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7844C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767510233;
	bh=y7FBi3WBZ/F0MRlBBf8YG5HKk7pjcGRKd7R8NCi95Ek=;
	h=To:Subject:From:Date:From;
	b=hhwxReOhyCCV3mr6whLh6WQum8pIIkSUcSHkh0M+0B5BgRMhBV+KARj8fTSStulYH
	 Im1zVUdZN+pWfnE0hd6K5GCwbYgp6GTxoiVUMAE3fk7/KsXxSxvebKaZIWXrsQD3Np
	 GNZjv3cjBRoo2W3WmNp9ND64OpPXb4zjYDY3kUTNdMwBtlBaUHr/we5eXrrf7S9aQO
	 hqeyA0Mt5Y1KeAHUgZzUC4koSAp9lzDPJx96Oz4o8XZ/OIssgxGC/XOvrihqpa3MTw
	 Zor+JZFa1zbOuvFSCQiyopsEePP0Q1FWLKKg4EB+Sg72ywLDBqKDNcrlvD2utntkkV
	 VlugW5SBbwr6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94060C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751023358.23086.4464185698049367535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 886c85da46dbac1739aa1104fd7fa1b8698d7daaaf7d3e13967c47443a7d378a
Date: Sun, 04 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767510233
