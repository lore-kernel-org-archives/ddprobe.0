Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2712D15B998
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767248634; cv=none; b=T+9LuX7r3I4n9ty3YjlRyZXZs4Z1o9Op7NPZw0MnP5Xa26HII716eyFQDoEULsXxKdKiFWQV+CUht6vjX2GpkCcuxmFMhtybXBKVudnXqenQfOm6EWLq608eP4IUcHY8DR0jnyJb4nJW3Ea4WRdy8TztYvt5upYYQKjfA26bk/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767248634; c=relaxed/simple;
	bh=h5muUHSWrA4EfNr5TkPoD+jKgRHqXGwwVY+zz9VfuE8=;
	h=To:Subject:From:Message-Id:Date; b=R+H3S+E3kBYyGTopmiF4EBXrnq+DMPrUyo0Tlh4r/hoOyML9qIVkSST34nwDg+kiAf/qp17z1N7unW7QNKl7RLwSmBjkTraKfmCd8v2v0g/uvmXkRQnQCr5t9xcOSBAFDSSY+merPmqaOXVP3tvHD0Ef1uE07KymuCk5hpvqx+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3An9Wp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3An9Wp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1220C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767248633;
	bh=h5muUHSWrA4EfNr5TkPoD+jKgRHqXGwwVY+zz9VfuE8=;
	h=To:Subject:From:Date:From;
	b=d3An9Wp71mP9zlwzV5lhWSTAL46b41dJ9plze19tH22Y3hl/6FbB4Xljqth5nkASX
	 kvJmag1qdSinIQ6LoTtkhbShXdu2QepkFhZPPQ4RPP/xF1jW6bY/VT3mfLFSt0Muxb
	 wBV1MescSBGxcSv1+TMlnV5MlaILC6Wi2UB41duLXKmPvtCqse4l3XkIdrJtkZPX6y
	 3PW/0BcF6iJ1Y+gbkHEtuT0SrJ1nwouO+IDDW1IxSIRBzTo4oF/DzLK17IdyslTUby
	 T6Up4UHxns5DYtdlP3yObAAvhj8njMuq5SOYFh3soIfRiBXQP9QZ9qFdJCk0IRCwoS
	 0LvqBX/NOOK5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9566DEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724863358.15375.18423332869656513946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1476bec40792000e6873f22052926147888cac4f07c213d047c846db82ee08
Date: Thu, 01 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767248633
