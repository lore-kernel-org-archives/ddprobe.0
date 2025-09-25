Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8DE17A2EB
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758834594; cv=none; b=jcIAJQ6iv3XaCeiRulHuB36GkivDJntQmFzy9TY5zPsQBhX/b3e8oJlox+L813jG+g55xviLLiIN9JGnJ9zobJz0lsa1DDjwbmjk3S25PLxC38Dfahw7NU0Vxbg5PFaZt8dD8ynGVwXRTYtRv8qlILA4vX31TS+DArl1OuaeWgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758834594; c=relaxed/simple;
	bh=rLpLHUk/zSb8jqMyU8wfY1qQOqihfBLIMJhrIKlLOF0=;
	h=To:Subject:From:Message-Id:Date; b=DNfUZl3eb43IJXNM3uwpeBq3kIFHnfAjQ7b9/z4KWL6u7qDxb+iwLdjdVf5wmLwjX4VGV6mIlW80v0NH+loi5sr4GsQkuuiUacrORMNx2sTDPLu5llT0OVpU4XN4zXK1XqY4MslQNMBtELXFJqXi0/lWeNX8YZtM5MuhZ629zdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKLojcl8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKLojcl8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2208C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758834593;
	bh=rLpLHUk/zSb8jqMyU8wfY1qQOqihfBLIMJhrIKlLOF0=;
	h=To:Subject:From:Date:From;
	b=MKLojcl8YG5FYGQeuvvGy82dyZH7cAknMiZUbCESUVOXPt2pKtp71i2e6ibt/7RIw
	 x9KrpgzVmf5i/C/atHapbyknMWr1J4rWIQ2/LsKbDo5QFyiIi/Veyx/StHDU9QXXO4
	 qslv+5a1Tcrg32XciF8b3kw42IED3xLBoZ1PC3cpiIybICVqAGAWPI4DQ42W018eBV
	 k7OYIKpmUP/NvGzT3YEoXR4WJAtbKUmah6rThSeLjQ9BE49s3qZagC6OIgiRSH5T0c
	 RRMwQiaA/ad28Dyaw6FyTKCHN88JVAs4oTnvwUaqK5m/rxotadYNQ0cLokvCwBv/0j
	 wdPwFI6dMvhtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D99CAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175883459359.11253.10939927657027520014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6dba7334a13cc5210f5d99796618e6bca23dc47edb825afb6b631aab77c4476
Date: Thu, 25 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758834593
