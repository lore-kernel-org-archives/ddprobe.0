Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B681367
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730800554; cv=none; b=igYTO/pQisxYTYSWG0c7CfE1q801dxK5cEvnHtb94MvVPX/sVL9g6yvk9as/RotGuIyS7RGXrk7Bs1VXhNlWyku/PGuAswJ1wXB04OqDdIa9k3cey5fVkI06qeHNxitYYMbSgq0OelAd90dX21fA1fbLzFabijk7ztd3bC4qv20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730800554; c=relaxed/simple;
	bh=mljJH5tteaBQQdyDrVi1DLxG+pKVRL9mnlQk/d8YpXw=;
	h=To:Subject:From:Message-Id:Date; b=HCsa/oeYzx3QNRHVj3pYALgTPRWI6SDl0v5GjZMxBAVKXSv9OPrAIMX+aN6b9w137NZRKwThvvFGSzyn83WOzqd1+kAaRJInpcmBvzPxhyVrHOjuMNbLzk4TkBtaNeqJX3SE/XnOWAglgPrYRv/DY+0J2AGbICVL8P6/naZsmp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFk17G47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFk17G47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0012C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730800553;
	bh=mljJH5tteaBQQdyDrVi1DLxG+pKVRL9mnlQk/d8YpXw=;
	h=To:Subject:From:Date:From;
	b=DFk17G47ZOvLgfIgLq+NCY/Xtc5S4Twr+356mr1fc05bXW8gGw7tmq2UciCsTEf2s
	 mhMlp/+f/d/olAHd/z+WdcxqfqAzuuoqwlo8nLiEATlQ3585T/prrukowWr4EXyURi
	 W/W3CbxecEvMpo4AIiR6isja6c0Jp2f2KWLTHvVNYW/rUFG3JogvnwqoBZ/bjpS/qE
	 AQ5jj8/ntXGn3c/Pm/7clKpSo6lipbu50djENZoCpxUZFDzxmMm/sTfYDu/q2ceic8
	 73EHWu1JLyZgBgIiTMuS/jkq6A2w1U2ztwdPnovZWwMSBDLKH4BKrJqMz5OAX7HW37
	 66tchOTo8PsoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9088DD12671
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173080055358.12561.15697824547163652638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7f1e6f88bde85da83522bb2e4dc8c2ac0d3eba0d7a3ab7470d0226a4bea862
Date: Tue, 05 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730800553
