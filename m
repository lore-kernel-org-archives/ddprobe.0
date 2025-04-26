Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0A5227E8B
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745666395; cv=none; b=BesdsqSVx9pCspikc7sJtKIRMz7E7ZPG6WAqbj5hHB6OC5PIRM2LkU/xp1Q9PqrPl4oyoUQLPVdyWoeXOyT4tSzV34mT/9UJqVkDmnst1sBrrtm2VRSIZUt1QTEfGz9g9svrdyGDbkaW/zIIwWGJGurIX+ZWzXXSwP+2pYL2JlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745666395; c=relaxed/simple;
	bh=OdPLVDhRqhkbGc0aL7jWx9rkYJDGqpRXvoi4MO8V2v4=;
	h=To:Subject:From:Message-Id:Date; b=CzX5esutIwnIB08gWqy3rDNGNaIrXUzs/MC3pYXEP58oeUfN3U4xdCPVDpbHTC/8Gmab04lw9cY5R9OnYn5MZhtMT38gr9MLbej/rqQtHv89Cyv9k3cm0bHJ7ZNcZ6HspsShhXaYjPy6O6zBYtJJoNZes4UU5qsaU+cKyjpiSq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LK3BJcLT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LK3BJcLT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C95C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745666394;
	bh=OdPLVDhRqhkbGc0aL7jWx9rkYJDGqpRXvoi4MO8V2v4=;
	h=To:Subject:From:Date:From;
	b=LK3BJcLTGfr/73/CPcYNgkxxFTUh21pYYJ5VetsdFkCAnH+BGl41YdebL4HkbMMON
	 1p7Rwq0R22kDjEubruZM87WK9f6hmWskvU5N5UpFYMgr+Q86jKTbGdfucKxm5C1pr4
	 /Hgu54IOMe2cqOwwYzUtXsZmEA4nWfyiPB9eoH0Gycn+WNBeoqJQQYPFzOTsxFpb6t
	 PpiRwTtEyhbj+B5NRNWXqVhwqzR1ttwIK745iaR+OnSHN/LyIMNsCZ/aaMO9af3YvK
	 5exKhpUwv0fElkh5EQv7nImpu4IJZdkEBlIf7+NQxsHE42v4cGbdJXwFk7dgCA68u0
	 ZJa5C1S9tjKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC1C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566639357.18807.13546666175121437529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a736c7e105a0ba9d1be433d6db2f88378c70ba24323ebec6c94a421a145e829
Date: Sat, 26 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745666393
