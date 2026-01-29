Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD44936A011
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769724833; cv=none; b=AXo1QMfuo05BOUoA+FvUu1QtDVcpn69ueb8toMlOWO1eGICVGibqBhPUyz3BQq0crrDw/WZ8Wr12rCkl+qn6lu/t+bbPP0eJOrxdazKjYEvX1iMW0lQxdJHOK6z9mSCrNmLhVaRjFH0tP/l6MX62oLcYHXdwBjm41+ndPASOdwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769724833; c=relaxed/simple;
	bh=pCNUc/RI/ofQeaT3KTggsVZRbz8kzOcdvg8d8Whwwl0=;
	h=To:Subject:From:Message-Id:Date; b=QngccDR/6IVxljwUJC9skzuIdZilSRVayDgL9DC9jIVRoMB0iO7pfDYI3BtB6Kcb6yOW5GZ0jslnIAUfeCcsZ7cDQIfDb89C3C6icyQ0rC8WYkX7bmUocWRSDhse3A7ycCijgcaJfuiq7E3Dlv7QYRhLPpTqKRCTp3hT/7bDIN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atfu0skf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atfu0skf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71C6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769724833;
	bh=pCNUc/RI/ofQeaT3KTggsVZRbz8kzOcdvg8d8Whwwl0=;
	h=To:Subject:From:Date:From;
	b=atfu0skferaX5NJXrrL0S7esNrO5/883yyw8yRu4u3EmgX23OS0qhIrGdwKLBCVp6
	 luvd2R9AFwCgn/0fAOkeFe4IRLpV7bXNjAKGR3VpjhjzjM9tT1fb8YZ5LhfZFsqRbW
	 bS5NB+va3Ma6Gq5ytwtOKhEOXs/wI/JVU1vBhQNkCb0aCtq9kvg11jtrRz7GHk3fnI
	 VPQegPTyzihwTXfc9Nm4i0lCVTaQ2siwa2X7r4SjhRogZarocaVTkOdypx6wBSDsAS
	 FS/X9lOX2j08dzYOgVVvagNxphDU3mJxxiP/99jZd+v9Yew3DY5e+0kUmq1iv3dmHz
	 /PKgPNON0v3Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFACD73E87
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972483357.28599.13293963274356723716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ac6241c106c2479a4ea0a65b8de61939768dcd97467fecf215cced47e95a31a
Date: Thu, 29 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769724833
