Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1181494B0
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731973554; cv=none; b=S40FUklkRxRnyklnufsVKzfxqqykgqU7g/QXyltfXvC4RTj8brar/cQxEQSOkDVgOAcKYvX0Q9s9y0skxB1G70+SgReMWCreWC54xFSHGi9ZGaTMVBqniB+oN3g1emyMbdYZfKtvw1Qj8L2lc86Q+HtsUchrvXMsCGfioUcokWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731973554; c=relaxed/simple;
	bh=B9Jea/HkHNro8skVHiqUKGHu3NMAOLTTSz+ems8jXnM=;
	h=To:Subject:From:Message-Id:Date; b=bAw9LlDtfW5/6B08QRRCcAjxd63mm1znu1hWcKJW8QRD41kqvBgagcF93ku8AIXmg1P3RtWpxkC7Z2UFrd92x4VjfNXYgXL3E766aDf/wcYUZWKqyFKM0rvTjYP6GTMggldRSiQAieQ6I1vN8YG/18EU1O3C4UGrCVui/2WJY7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9OuZ0LX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9OuZ0LX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDEFC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731973553;
	bh=B9Jea/HkHNro8skVHiqUKGHu3NMAOLTTSz+ems8jXnM=;
	h=To:Subject:From:Date:From;
	b=E9OuZ0LXUHix60iQ9NEEiEw8O2IRxYGr30lvSlgj8uvEbf7xoKIqSHeSgJZdu6cRD
	 OMXuXmvHLHIXJeErQ0ST8RzdVB0k9p/N7DYbvTysDc98eG+LCVsQhgVe/znaRklM5z
	 NWRUZmI//91DeAZ9zGg/wQeJfTBxcj4TGEoXTiiI3EeNvGCyrDqgf6xzceaTGbGTje
	 OUCbWlJaeFs4T5UJfV0TYLTbhi5pR4nNjo7o+9B7BT9xWe5zd4X13hQzmIiYUP+8pj
	 p3YhIIXECI7YcTAMlma/4C8cXU5BzYQXeW5b2huKql4JAu9wHsHGjBHtlUWTYFgDwv
	 ndJz+2XxtsoAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97760D60CF8
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173197355357.6223.4339429679941970505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b5a24811380570348af04ae4663135ee4cc0227085eaa318e171277919a6db
Date: Mon, 18 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731973553
