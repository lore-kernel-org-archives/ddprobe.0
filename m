Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A851F4191
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745653194; cv=none; b=Tq6AeGyWtIzUeKhOAGDK7VIqcUCJvzKqgl5M0gKb0oBpYMnkzWQV9l+STQRPAn+wpHwSlaqq4OmbKyrYsRVaqAGYXZTrIgI+LOIrpEntaTABcf/xdOp6e3RMoZtTaq0OKiqBEokz//cagBgiuJQp3f8/7LtfMApOBJp/qzVyQOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745653194; c=relaxed/simple;
	bh=KF2rEJEDWVNivVZrDah0BWsWB8jExA+xi0ltHOHec34=;
	h=To:Subject:From:Message-Id:Date; b=K25vI+d2D5q0kAXiku84fRr1nkBBccDEhekQgBSVU8nhp10R0o5RhJloK6cWio/iZLSRTUTZyLN7ZdNnzSyLk/632EcWwUymBavP3w3cxWoFyZ4+8sVo/O8ZjLUnNqp2qxrn5KPGRVWKTVNw1xQZZHdRh60HcLxT1ait5C19QOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY10FVv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY10FVv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745653193;
	bh=KF2rEJEDWVNivVZrDah0BWsWB8jExA+xi0ltHOHec34=;
	h=To:Subject:From:Date:From;
	b=JY10FVv8yTLjxnrtK4bG3dZjydY57BPR3A47TarixSfGF+62bGuDomyKCpu25ZtQP
	 RK/Bk94V8nx8o+DDi5qUbpwwSB3I9Ejj26fmicbdpypkUOFvCNNmwktxAinbjKpCLw
	 ogqY/Z/KhTJd/CycWq1eB+vpx6qFYlkV/bZwathIXzTjGIYSK77nXSDVht8WsWoiHf
	 B9XpngNmZccMYor/LDCAtlkpRgaXEDSDDwtufm5Pn8YumqHsOf55Ddtz8Kb7wOAl/u
	 y2NmUGd++vF9hXATA4Zb5ARopEYzqYDzeLzgCFdUzD0v+LzuxIakETS8TIFOsIt9Ej
	 QsFaMVNHLw9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA0BC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565319357.31652.17325660319332472712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43367b3ea1e57227da5beee056c75bbcf2bf62de088e345ce1c86a60ddbcfbbf
Date: Sat, 26 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745653193
