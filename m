Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5522929405
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738602955; cv=none; b=iP577mY8NJz88H95xrQvYRiB3BPWYJfqffJ3ZjHaP3yYO7keYdI8nGuVAXSsHcUpw6EvBsFJqFkxjtPxR2V9OneCukXv9eUHWDcC2cjQc+Xt3Tv3KMlFZouIWXZWVMvYf6spPt/+7ei+SY725TkffYA7qAGQEx3tfmm3VpN3+yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738602955; c=relaxed/simple;
	bh=qUBJ3TrT4sgla5D9wFlLubJWs3wCE5dHwB3y1drNC+E=;
	h=To:Subject:From:Message-Id:Date; b=NB9YUxegeYV2jns2fjjMOz8RfhHxWsqTFpUq0eRqlhqCyX+WsHxS6qWgu9vBLowcbvD3DjS/rJMTXSpbSDttAzFc/GxcW2oHNx1k/pyv2/sIUnCdWpSXGLNSA2DUBXGahOpe/qXIvzRKfioqCVCvH2lFpbdugVFA6gXqivy9qHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsImN3vv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsImN3vv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3791C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738602953;
	bh=qUBJ3TrT4sgla5D9wFlLubJWs3wCE5dHwB3y1drNC+E=;
	h=To:Subject:From:Date:From;
	b=TsImN3vvez3kPODg+aOoa8XZmNLNZNGoLnd3nGGL3KZkSmrcWnwyhHrRC1vmrqKbj
	 wWF31jNyax/suKMAS9be5uaN7IjZGAmn21g/cvcxTu8au0dpT7HGQMMhJp7ysjgDcd
	 ppirfZe8drJl42BaPXfXZzZZL3VPYynZDHVoMKcBofGLKlNAILwC5LFrVHN0GSP/O3
	 ilwTlOqfv4IY2KuEdLyB7Cch9+QQudR7cw4EDOOclN6rYQyFdabvWYAIk/1weWHE11
	 wLo8rQd737YyXDCJT3vKZ4iwXU8ieNCMUyht6LCXenNJJljK6p4MRJq1o6e7l1sWGz
	 VpjB9HUxYboqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE7FC02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173860295363.31400.10785349345430675576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 678dc249fcec96eb984841cfa41aab4c2216b68d3284f88635f5c818b8b2c3a5
Date: Mon, 03 Feb 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738602953
