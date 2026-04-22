Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F46220ED
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776818254; cv=none; b=OHtgamOuZ0fwQLThcSAhjCvC5/8RQwdScxagOtiZgUIQEuTeWkwo1sNCe5ea4a3Mbb3X0Ty2gqdFPDm8e2txAVJhHYwvZjn9ndzUX8C/WajrZvomid0XfkUxrmmfB9mpIlR6lsEXS7RXrK5MCSuoRTtOkeR0GaA0/49Rmmr7Wms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776818254; c=relaxed/simple;
	bh=OZowbZLmMEZaDslBgT8NDDIMV+L2KU5fbnCP8cOvWi0=;
	h=To:Subject:From:Message-Id:Date; b=NH125bPFutrcRVI3cjvoadUyA2WZv9FZy92Jfw5jRZqgJsvJtduOc8NiBd5kqxcuKtV/LYTu2vpSu7XCQe2Tohr9uCPE4WxZfeO0A70yx7ukB7tJPsVB7HWk5n2CgSHbrnd0XaHUoiRQH1a53suN7EDuQZN8etlXBQxNli7eFKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHcGENMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHcGENMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2008C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776818253;
	bh=OZowbZLmMEZaDslBgT8NDDIMV+L2KU5fbnCP8cOvWi0=;
	h=To:Subject:From:Date:From;
	b=mHcGENMjPCkBs4+ogOWpWEYhN43mr5C27Ma88H1jf0xrZTpZb5arsAS2TheWgCbyp
	 qG2dkfveyPcT5oWf7D6jHX44316k1nbSkE+zIQu4d8yYFMJ9/IJ+AskoAz/Hxf1MT5
	 a7sIwWdW7CC+7mPm2HTsRE9HrjmT/u+Lp5hgEP6BW4V9R0N9LWETbOMeFSVS0orfFA
	 AClYOdKt/ePtOdkE2xSOrHH/6KAX7f81wXmWDT8uWDDjUeYrvHvqkeMcF5Xe4dqjDR
	 rKjX7JZRMmPNQdZW5dC7vwwWt24r2jrEypfKydUE0uouMa6+w+7vwSJO32neLc8hKe
	 5sP0XfWVyW8XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD943F94CBA
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681825369.6458.13671008226362831042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359f5fda58d9bb655dd9728ededade849d40f65afad36c51ae9b2bee43f90310
Date: Wed, 22 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776818253
