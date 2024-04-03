Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2F4BE4D
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712175496; cv=none; b=FtqYbF02hIBDpzsUPbHTMiWmCqJVaygMbc7E/+KVae4/tICK6djZKG0LJNdf05GFCqS5CMFYxIVPmWLWLDtgZtJP2lr9h/Eo3dzaPrglXx36pvkyUX+Ca9Dg9jVCookAH579OQ+bcaf+GHKYNLAQgJJaO+rmF3KefHmIv9dGq2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712175496; c=relaxed/simple;
	bh=afOtkDf7IB4iLI9LTsuX5pBQ44HMYxxETwv62/1T06E=;
	h=To:Subject:From:Message-Id:Date; b=gyC5/XgCYzIKPc2AfgmnReNtydf4eKB3n3v72y7CHC+k6faSJ7sIHYykNwPeB9QYtM5DD2u/TjdHAPzsmSiTpcjCi3EN7XMwjMuKK2y7QF2icNIGypWTLE/4h9YRZ849s7FbXQoWd9MCbPIgZT+Z9aMCivY1iWMXU7jjjAq/zHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI1Tr7TV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI1Tr7TV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782B3C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712175496;
	bh=afOtkDf7IB4iLI9LTsuX5pBQ44HMYxxETwv62/1T06E=;
	h=To:Subject:From:Date:From;
	b=oI1Tr7TVASMXfz5tB4Ja4JbFyJ0z3MrP4GQ7TJv7CE9UfvBz+s+wep+faI9nlRL/u
	 ZVlQfWjZ+TuKJjuq9UB2DU9bogAOQF6TmMNqapgeBRgqnOFkHTuzJVW/Ak0XzXHzTD
	 +lcxgZQ+yGFzKgJJbLsGF4ew2ioIyt/UU9XyitrdlTsEE2yhv0SiC4bd1zvxZuXvOm
	 tPpPTANU0yvJsKDNkRIrXltdlMN+VE3VxEtSacmPSvW2dIgMir3G3SZsq4z8ki1TfW
	 61bRl9GXZ7GV9ts+DRkpXC/yO+rpXT8ZmoeZmvms7XxeUYY9zTw2Ccoxh9DlSruioI
	 Qkq/LS1EUT/iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FA4CD128A
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171217549640.27012.15095328684363736459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f4bc502fbf243a7b2da124e78167f3ff822f3537185f46472b127fd05138c2f
Date: Wed, 03 Apr 2024 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712175496
