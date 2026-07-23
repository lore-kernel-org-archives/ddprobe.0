Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70AA466AE3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784814035; cv=none; b=B0KJxXIpxgr/m2fpBv2kQtv9zSmA0W7teaW2FVXFO2zb6/wU/0clM/uxmTry43NcD6Xkb1iB1abLR6g4VVVrz/D499XIEMl+2ZZeSCiu0ZRURyI9Q6SFyKuPS23yaakqYqSuZ8hvzqNfMR4syFNYfw1GXC+HvuX1mknrTVQcEXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784814035; c=relaxed/simple;
	bh=JReHvZx7rtNjyvlfJsUk5yPQCFYPnsPEyjzdN5r6FOw=;
	h=To:Subject:From:Message-Id:Date; b=ko7u3PsBPUWHBWPC96vfmh4uzsxplmkhwEbUc9O5DFSLqpMuMp9XzApeXZl//hYrYwlx5cxVvUTFA7YqbeGyYhjw4PNH3UGX3pLY7FH99GEqdCEq6IlAxX+VMO6R5tojKS2h3csxOLuMjdIP0hCuP8aRF3NT3zFfHryuAAj2jkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnjuXcNp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnjuXcNp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46F77C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784814034;
	bh=JReHvZx7rtNjyvlfJsUk5yPQCFYPnsPEyjzdN5r6FOw=;
	h=To:Subject:From:Date:From;
	b=mnjuXcNpIpIXFHMXTqClK6zSiOYTDGmWxQ7Q8PXyE+5h4KhnmNyItOrFhFHcZU2L1
	 mfTZE19ByTkNzx3avVkq0jCQ657sg18tszqngwTBPrPStybgeTRIns2+X1k7H1THg3
	 5UC6i1ylaLn2TMnjKHhGx0K3fpiqqFcemebViuBJlusYFJ702AAmNZlzVPbBvzEgBL
	 WI3yzR+/tQLY3D0NpG9STVubp8u9bA2T785XJ9MslmFAzkRtMdqJLtbUBcys8rK6wV
	 BJJjNHs9L0x2wrTiySm3y0K4jEAWF+a21U9e7Oe0TQjhgd0PiGIZrMIKZGzYB1dOYC
	 m/leWS6mOAyAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E060CC531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481403378.30606.12748104796815614487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547c1c6126f416ad89858cc3eb4ca935ed7ade8b4965f7dddbe373777108505e
Date: Thu, 23 Jul 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784814033
