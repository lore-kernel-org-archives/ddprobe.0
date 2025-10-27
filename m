Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4946E13C695
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761542394; cv=none; b=jgEZ69AkaEmwXvFFCej45/fDF6Uea+i8rKESm8xmiNv3LjdmPIPox8Epk6C3Cpw23S9cxsxlDouhvh5un2Dbd5lO5SLP2BmgRHXSXerONv0Y+rqZwuKqXNJmJK+sQpMaieqYf35IrOS6aiw+awXgRpagK2qfSyxp6sUAAW7Ggyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761542394; c=relaxed/simple;
	bh=+bmiBpbeDYVgio4gMxBy07yRCecx8P4/Kv/+OMXrGOY=;
	h=To:Subject:From:Message-Id:Date; b=R80LXZFjA5RxxHasoGL1m3zWoM0zIdH6tiUhpH+otMsYsVO+r01IgDhCFQg9Vm5xGUz7vqRoXL3DINNyKs2frjtu+Ax451YFG3/tu+gnraTYKwmyfvJM5IeCxfaXyK7QDh3drpTvO9ak+Yn0mGeY4l+XSa8ToV/jMEPqDVM5szI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iod6rgW0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iod6rgW0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B860CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761542393;
	bh=+bmiBpbeDYVgio4gMxBy07yRCecx8P4/Kv/+OMXrGOY=;
	h=To:Subject:From:Date:From;
	b=iod6rgW0qcd6inRM2kloZCLQfEiVcTjCwkPv6NiVxriB6rJHPTlCqcKsBz+MbOHYc
	 dzUMwLSaPRR7izCjBEmoBMCXNPBS7mU3h8CHWL+BCy2CT6PUkfApT/xcCspcuXaWdR
	 SQtxRMlG49H1rU5+Ox49Q9MCLMeXMIQsMGePXEwt4OlbRUH8NsyIvsws61s2mxxq9k
	 9StWWKnlaJtokEbr5HY84xB7Pu1MA4OZRhfaerzkBKzh8Nx5i1QqPwURajI1iol1vz
	 hlnqR43jN+fAxwUq/ChSptMC8ZbRAzaf9Yzbl1oCZgIpKb0FvfbCoSnE9oBCIvXqn0
	 BxGkcgQd3Djwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F85CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154239364.31081.17026411022867531946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5757176ddaee08a8a6d57b86dd1c4960dbeba397333891fb7e08f8ec172de6
Date: Mon, 27 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761542393
