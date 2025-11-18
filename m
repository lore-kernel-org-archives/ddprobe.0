Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE6D2EC093
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763448115; cv=none; b=jFzbA4vY65cyBGSxBJpHYd3hhrRDrWXYISONnbs3kad8qp3LnxJN8+zyv6sFHo8U61aMzLHcBKmzavMmliihYp3i75m9IysL5eVG0Q6Rg57w6w+wHM7OxpbpNYixEQiPRUxhyLyZmmx5kxl4igbsNa95nIPA0RN5EXSsxNDwwV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763448115; c=relaxed/simple;
	bh=WNA5vnq5UoakC6cofylTovekns9qOOd9xJUpTgUG3Fo=;
	h=To:Subject:From:Message-Id:Date; b=KDbmbXEz72fxhd5qDcstIp6uPkYG/oh6YcZSQK7SS9dJ2HYtXWlM2iwdwdZsQ2e5DQlBQ+NdSeL6XESQ10q36TVRSrlrb2KsZhWrrbymD2puiURdr6ihXszlQefTaTRqAmqHElNulK4ETv/kTO0Ked5JP8axXn58gps8IyEh0hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o28hKN/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o28hKN/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDBC5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763448114;
	bh=WNA5vnq5UoakC6cofylTovekns9qOOd9xJUpTgUG3Fo=;
	h=To:Subject:From:Date:From;
	b=o28hKN/hD8st/49f+mn+lLPuMleOlP9EeoonFdIFp55oHHJ3DDJysgOH0nH/VawK/
	 HS3Z0zfdxCSez7ctwfNTsArDIbBiNobYCcFFhR6bXPvHi+55h4jZ2I8QoABMACU13f
	 vGFNl0NMww38QJ/lop131dJ+ofhYjROHqcxtm4lmpoE6Fe6vdg+P38XAuIbWaC+InH
	 5+GlCpfLOmDxy4MZ+0Fw69pWvholcJcbgP1EjF3HCjI50UpTAjk2PyRXhATZtBO5s4
	 4vg2P69PZijGnwUlFr3hLCux1AKpze7M7q/X9lew+6l2R1jsLdYp4+aYchr8142RhG
	 PP5xdgz5bvMtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BF5CEBF93
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 06:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176344811358.424.13233468323090569227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d17691621c7bc9645e90102eb26a9b982ccd467844c4747a352cdef1fbd7d92
Date: Tue, 18 Nov 2025 06:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763448113
