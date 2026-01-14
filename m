Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 010FD3A4F3B
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768409034; cv=none; b=BnQUKLU8721J86yyBCuIOK2SJyJHFY/qsWg8zqzjzaXuWPu5rIMxQegfSHR+UJh621RICzjLYdLQM28lqy/bpVFSOoQG/rXXsHLKQbBb8BBiSYYPwTcnKM4ZlKZA6o+zBlmCTXvMjXInG6NxQp45AN3NUJw+Wbb0zvXo4J1G53k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768409034; c=relaxed/simple;
	bh=vsCAhRtRp9lH5REvq/Ur5qa/GqvarR4xM5wDouiacpY=;
	h=To:Subject:From:Message-Id:Date; b=h/KwQMz2kbesg6YfCSjOYHbC0OANBqlHCxVE18a/0BWxmoJUtymjHZ22CGWpQfCfGuC8UN9F1wMlZRU3r1jEe4AXe341wRmNOUw03db9kC/UIWLJ0jXKip4b+Vg516eYbqYsx78atoxQCRN3AZ4cSA5GmyFHNPSIRBY7Zxsnyh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGHK+gw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGHK+gw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2AFC19421
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768409033;
	bh=vsCAhRtRp9lH5REvq/Ur5qa/GqvarR4xM5wDouiacpY=;
	h=To:Subject:From:Date:From;
	b=QGHK+gw3QrXzP1/JkiDYN8vB624jaICg5NLZ56PFGpNvlBlB3Aq0TS+OdYIKGHNCc
	 Athyqo1zS9VSvxAQztpXspvj3DnZmn4A41PEJDtQLsgMZZB1+IYUFNn0SahUN3xO3n
	 PjSHn6dAEMU3PjKLoLpKsXyNXPRkBhmSa5v55pxhuaxTbRXbRmIO8G5uiM8l2CujQt
	 vElZYYABrnFpGYssnsegORudlA5QBdJssNPjWOey32IKSzGBwy6YbhlMDsRUcHmiSt
	 oQJbmNi3Pu0D1hMOUIz4tIALaDtJ37Eaqn4SI0ftdrX+a63vFe5W/o8BOconux2lFl
	 NBZIAEa/6T3SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90489D38FEA
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840903358.11749.16263952226934053932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8f2d3b49539e59712de97adee966fe899bef0798f04d56dcf9a33cd0fd5549
Date: Wed, 14 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768409033
