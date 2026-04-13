Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED7F3B2FC9
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776073653; cv=none; b=Y+nNyk1725lnk3rG9hXpOooQVNekNy2PXCSh7eCLBpI5nO9z740FoErS5KBI9QRDwMqZZNNewCbuMZ+ysAexkRBeZOuysukpISds5zSj3rtc5e3JwXDw6j4/jB5eioljedzFsrWZ6OpPnSXEFzEogC6skaz+7+OUXZyxNZ2T1HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776073653; c=relaxed/simple;
	bh=t5RQuNJXu+9e5eh6yzHDTArXbMwbJ9jQbqqL+FplYY4=;
	h=To:Subject:From:Message-Id:Date; b=deF4QT4gXSpXq85qUw8g4zF+EncB/DATz2oYk277itXKH6DTow4cQXK5gZHKorToHZwP+Mu1QxVeAQn+uoJ4Pk6Ue4ZGd450dll1nnEM2zUatulI7TgWlleoFdJf+EBoSSxi9FhOWR+bjLedbMuOxrpm2o6eQyioDc3jQHqRUYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twWLNzAD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twWLNzAD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F39C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776073653;
	bh=t5RQuNJXu+9e5eh6yzHDTArXbMwbJ9jQbqqL+FplYY4=;
	h=To:Subject:From:Date:From;
	b=twWLNzADV+hlyDI1xO5qdBvIYlMDi/QZijHADZ+DbpvResWjKGICTPMbX5uV4QQbI
	 jIn3TXCBpyt7WDvUGL7cwLD+hW8XmUf5O7IDhL5JHSlcBt1IcAqOnH5i087X9O17f8
	 2jzSWZ75Cqlt+xv9lyMdovAOp1C+p5KLZw59vcOslwTu8js/pnf6iYOZ+SWeD31fxI
	 WKt3nbdkL9SmlgnfOYwItiNXqL68fnuMDIN8+7SSvMAxwz6kkNapZ/boIBQDQ1AJxi
	 g/9iesmsBB95WS2QQ49UsMMhjN9UTccQHmtJTqbNmfhLgCyU6g93HHfoy/tpeeK7hz
	 3/Ysr0i32NXvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29E9EBFD2C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177607365372.10198.5406571448722392752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 496fe0e0bf81f3d2f4f7a4ea0ae89932d99e735568f8ff0d4c2d86ecdfee9eb9
Date: Mon, 13 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776073653
