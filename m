Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05430266A7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710421097; cv=none; b=XoELWnljG9nLHnKfhgMVCiZjITfaH3yXeKS2Q4FpRtrfqM69beflIeAJYBTxDZ5MNEnbBu1124j2FBUg6qzCdESpzFTdWbPpF5KlClTVdnprBZ013XoKtPsYiEygZjkRjlufEs7EX4yk00iPAyfpEbZoGpyfeOrIoVNRIfgsym8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710421097; c=relaxed/simple;
	bh=l0tCBlLurVu9F6e0/+j2tNJBBVs7QFqzszIjoyZd+MA=;
	h=To:Subject:From:Message-Id:Date; b=hXHlJPhhzyEZ0xVCmUiVcMI4Q5vMM3koLJfx2Fx8CJu510r+pwn2UDZKjIft7EUOLq+hODU01QPvYYI/ev8VWRVw3I55UtIr/KjbwOfvho5bldf9GC0XQWmB5dySu1mGcryhxJU12u990LN0I/15oz21oBzIe/uioaTBkBiZsWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukOFVscB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukOFVscB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DB0C433F1
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710421096;
	bh=l0tCBlLurVu9F6e0/+j2tNJBBVs7QFqzszIjoyZd+MA=;
	h=To:Subject:From:Date:From;
	b=ukOFVscBQlBazrsc20kZNbfM80L1KU/i+T+Mg6fxDe9Lf6rbXemdMsYh/3nRX84HO
	 J/yr3UvN/2qtXDSAgh/Vi/PrV93OP7jZlQdiAhBNrv9JB3LwsNGYaDWrjpj6Ec2FvD
	 i26p1gQbsxF5VqNKHw/2dgLZjPCHztgqxntiVXTCs4YCQATOwKf5Mx4TiJvVOT8sJH
	 bY6VcJF3plYbpoaZXWTTdJkm0CgvLGqoslCHMQ9wbwYma/JqFgOaqJq0ubqp6xh2O3
	 O2X3df3eV+FSptPvg/zm6VXGFmVcekGt00lA8lnf6sdN87xebzYurVLqsjKcg3VRHH
	 MOkE6NQNt5yog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6078FC54E60
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171042109638.7745.11843207629443192343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb1ff52be1fdb5a7b38d22e1a1f93347c289bb5293eaf8d5996d2900b0fe056
Date: Thu, 14 Mar 2024 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710421096
