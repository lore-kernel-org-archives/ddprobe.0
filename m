Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C60D186A
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754537994; cv=none; b=V3wpZzKT7b0RG4g6Tphuql34lSPyOBnitvtxRZ+I0ipNLkNxYzXcANDLX0aaLeu5btquPzN8o0gBeRdJw0sh3YE904bnRCz/2le0P0BxC349kN/VxN9Sz8TJTStVsPoTOXOnvlLn/gNntaiEOFWKc0VeHjDjBMi4JadZgGMzoPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754537994; c=relaxed/simple;
	bh=f4VQqJFVZBBN2WvHNLnXOKZb62o3efSa5/7wzMQMQ2U=;
	h=To:Subject:From:Message-Id:Date; b=Q7xvBBobCPHxy49QO+UerZHfe0ipdUYEZWWSi8pk3Yr307DVGZxmFCJNgJAtT3C2gOHmZB2q4fRkdRQocHlG5U93Rz9flzTgVen+lK2vCdmUK0HVOGHZmizDs9h9XkiKyZDDojBadrMuABB9PNiuoB6Nz2KlHJHztTRC56xRDxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGNiWXyj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGNiWXyj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A72C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754537993;
	bh=f4VQqJFVZBBN2WvHNLnXOKZb62o3efSa5/7wzMQMQ2U=;
	h=To:Subject:From:Date:From;
	b=GGNiWXyjgi9APmSnchX1dNvS3ypCSX/UAnAEa8wqGN53MfHQIq3VBkfwgHzSwxf/U
	 CPBTeicWOhTWeoCNi5U8RO1fGkBCGHYDE0aFywhcEHchMTiQCiC3eoGh2MXMinX3os
	 ph6boVrUQBpdoDF4/U61iQL/E/3SviVAebOvV7tttI6E637NABZm0UkWp8QpZeFMnR
	 lh2A8/mnvWVhrjW1wZAnkrUCMzS+l1wktdBmAletJOj7OfscUb1B7cXusPe0lV4bCx
	 GG8FvcEupsyrjtdCd3SGKCGfSKHiFbqMXpdbIy5/+KBJJitc8xnlaPIuLnsMeQgGEr
	 cGMJVOok6pkIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA8C87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453799358.32395.16301078210824788307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3e4c872b0d752a95d37d0dfcf84ab456f94eaf1a8e2f8e4d695f69afecd0b2
Date: Thu, 07 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754537993
