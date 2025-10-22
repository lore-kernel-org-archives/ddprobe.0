Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A291247299
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761148794; cv=none; b=BARlPBQjIrXVrnWK+p2dpFSLOhZnr57OP1diIBqyqBVNzP9O1IIxJhTc2FVBVkVIj7F0G+4pOm7xm9jFA8PoNquvNB0lnV+VYovwDPGsWvLhoy6HdZGMQUhvzLVIk+9i/wTrXtMZLKbxpZFaaYnFmJFst/D9yVzRHn4qoKOBvFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761148794; c=relaxed/simple;
	bh=HNCEirzzJ3so0GNQB/TK3DmzRWcsI7jKojXtafa2s/U=;
	h=To:Subject:From:Message-Id:Date; b=RMfQ+OO9QxEIt6eR5PMZGGQgwNhhG+9Ye4EiGJjnuNU90YsWeh6j0+s1uT/0rdPOU/1Spt3zFUgz64bKoZT8+fGHk7xswYRsUbTm4fhhj8YO4Nh3+12WDLvIBRMHPiu7rlDd2YgfL4V3ipQ9887ZJ7yUhwME0hqxAIdY0I7sZhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZR5rvjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZR5rvjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79FBC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761148793;
	bh=HNCEirzzJ3so0GNQB/TK3DmzRWcsI7jKojXtafa2s/U=;
	h=To:Subject:From:Date:From;
	b=MZR5rvjc11PHkftksoA37+h5UYcJlPSmqviDwXHQQYlCNpG9QDUClpuUz/8PezhIm
	 yXybz+wVoQLDUYgF6thpCCSO9+QgUulFptbXzA1psEXK9YyZgoJI5EuKcAYgGxTkRi
	 cBQSimAx56itHutm23A5cl5+oAprf5txbBQSmWQhij/XfutVZ1jCe7Az1yFYe5sLRu
	 +r+E3LWZWELzlbaeqWQnkBEIJLCBvJ4t1aUjiJS/LPIcY5aOX0XcX0ZCnvwIEhPeis
	 q5o02VYmH3raThJH0hgZgkO62wvGP2xUGbfdfBLpyBZ2rCHmtIi1h6FUz5ZNgjn5w0
	 dyBIHpn3rsw7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93338CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176114879359.5106.7744788528823023612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c22e1d101520d8f9cda6455334b41b2a0c87080bea77f57f6e8ba1279bb0456
Date: Wed, 22 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761148793
