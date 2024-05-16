Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFDB14B969
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 15:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715871743; cv=none; b=QyriFUNCumFqPSU7GsHGyhtNLvNuVsPHMQ47Spg7DmPsK6YKGfD9fgY7B1glOSxQuWIV11bj/VoTCKCCtile1ZvwMhwgyy7TLdPElT6STVG5qEMjoRCJUEp6WK0dkD4KA0vbzcJywh9YGfm4azxZUsp6mnMa8gL/K4yCyNI5NFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715871743; c=relaxed/simple;
	bh=tKBrFSSaOAYN5egWs7YXgk0tKdcwQ5hm60g6cvizKVY=;
	h=To:Subject:From:Message-Id:Date; b=MUNpZfTZVSnAOoUPcx1JZAhXRbTgUXOfsvEX6qwuiA/nlb1j0MdTSuUD4DDlKY/+ZpT0jKcZt0jUaqlDsQy281FkMsKkRUHgkOALYAeLiJvPcs+HsC7OhKRAQ+PgSvJ+q97RqL/6ncdw1zm+hjZOUexCaSdCToE3eDAZanFXlyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPHtBeuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPHtBeuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF16CC32781
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 15:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715871742;
	bh=tKBrFSSaOAYN5egWs7YXgk0tKdcwQ5hm60g6cvizKVY=;
	h=To:Subject:From:Date:From;
	b=YPHtBeukKkBnH9L7XxSxxrtv22w0tUw/VI0DCGa2QgHJnwra70cDWGOBpm4ZQYLL8
	 0cQCwsv1qATODtlkufVPzmsVaMRidb1cAxzlgpSN4lZ6QEjAHk0QhidU4FNTy/pHI4
	 mOAYUdOUZnTlrUAhjJdtTp5WqQ6P40TOPTnD1RM9XkxlDscXK7v18HvPeEJuGKdT7y
	 72xXX5Yehr7pQp3LiVM7bybZsukfM4lkbLajW9CXbksW+sbmJ1Z8VP5Q57HXzzjdm7
	 4fegljvVXpTAy7FE++1RVvLutqtCYeOut1vKTjnW+6xbIAQVC60uJLVEuGCiHn1Rz/
	 wGIAReqJ701Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD74BC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 15:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171587174276.30307.16812580520801425110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d295384044774f740cf87a6ac69432658a5d9cb18b6b4c94936b5520196a761
Date: Thu, 16 May 2024 15:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715871742
