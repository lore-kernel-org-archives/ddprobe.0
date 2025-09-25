Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0875D221D96
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758763194; cv=none; b=UnsXeFMO97n6ODHvIH6fr+ZugAo6+cuyrb90aHFXvDYc15eacgvRB9NoaVhuxjLGOhZmpvr+m/NrlpIpLWYheGw6Fk24JctLAC4J8XP+CpiDTSgZKx2cXVhxB6eyS6ILgOz3cMxxD1Nmdb5OBLZGczIwxTYKgEBnDxop0hJr9CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758763194; c=relaxed/simple;
	bh=RA+iCbK1Eog2gBrw0Z/VFAQl7aPsZqrWWuVxVc2QHA4=;
	h=To:Subject:From:Message-Id:Date; b=rVgxNOAWzegTUCwg/+otNahtz5sa+cxsMoj5nkTtSo7Jxi1h8SGn9Xyk1BUj+wWu9AdLLLPM1Gp5B690ktxG0ACJViPAvOmGjPhaHcFau7jBs+ATBdeE9BN0iv8Yf4U+3kJ/y75V6REKiIwX6h3S4AaeoFfgP6xH6nA8NWgv+EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUBnsyqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUBnsyqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A529FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758763193;
	bh=RA+iCbK1Eog2gBrw0Z/VFAQl7aPsZqrWWuVxVc2QHA4=;
	h=To:Subject:From:Date:From;
	b=lUBnsyqT/qrfhbacApYQahSlnOtJ82NFyg5oVQOq+fzqGk1rw7T5tI1OB6AP9n/Qx
	 7Y7LcOv0c3lGsgsVRAO+ewfKLIcbkFOS6WuGOk4kly6B5FUjJtDduAnH9JQUnBMSH5
	 ksPyEKtK1sGGfL9xZhTfusrMZQJaWOxNn/IsR2lT2FGny4dCaD01S1P97CrIc0bFv2
	 YL/SehKOZ1zBoi0nIcCmxYDrWPBI4uJsA8HekLfZO/N5UbFazf12RZEmNVCf07xCZ2
	 tveZogPB0yDrA4e9FI/Y24K8LgtBHLf27UjXSiwNevHINgvTKWDfbujZ+/IXfm4Uv5
	 kca/7f7xrTNQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B4CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876319358.21290.9194717476274595398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8bff7f4f3038b1f1f19a660c36bc03bd8048b9a9cd039fedfb232afb905f6a
Date: Thu, 25 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758763193
