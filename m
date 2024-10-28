Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1487F18FC83
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730157354; cv=none; b=HHDdi62OAHKXIVlmIsZTzBZL8Z2mKXqchVx1mlkfKM/MQwSiXyhvV1DFURdSMp4fx9Apb7saTEx1c0qjMu/Y+lNNaiipMeyvraV+aEMlCMyJDUY1pej+SnMK3iFjEAUMfNaAz7Y1sfDdHP/d+UHrDqtC3a5f8lJEQBJ/9d30ZLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730157354; c=relaxed/simple;
	bh=GN7QFOf7cd31QfXA6zYeEaIHc+5pk3H5b0TvAQCVMVU=;
	h=To:Subject:From:Message-Id:Date; b=YZ/EDc3w81aRM2FlY8Q+6iDC6iInCHPfrdCCDUZlauR5ur26KTuVkpOhNWCg1FTXDOr/G+sa+doXf1S50F0EwPj1zJHTRS4zImhcLVeVnSX/19/F/DRn17IEwXplt7pdWSMTj9r/uk2N/+XDvMj/7VUgXiTjHUFOMcVFkvYIoos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1dw/dRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1dw/dRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD62BC4CECD
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730157353;
	bh=GN7QFOf7cd31QfXA6zYeEaIHc+5pk3H5b0TvAQCVMVU=;
	h=To:Subject:From:Date:From;
	b=j1dw/dREeM0/yz8fIFFBOXX06tw0zMKxVkvXT+uImoAR6m8/QKPK9WWMSYeDnKCdS
	 MLgfuqFzN23H0CmSfjGIz8Eo0v8XxsMtX2cdxlbq/2bzgtX4L4rqnqJAvmg4l+oTlR
	 oh61juvgw1JubldoLshdduXEqyeoRGOvYb+7dYF0Hm5dSr6/X8V4SEvkwipLbCMABB
	 4k/wWb+1OD8aGqVvRw6YPdj3d3D6jnHORnN3URopMyRCA9bn6mvmNzcv661zDtRSEq
	 USfs+hWWdoARC3MQlYFfKSyygFH/oDlK2OQThkIb7vSj540ik1mJimE7kEgs3X3qbE
	 5I2lzzOZBzjdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF99D5B847
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173015735362.17373.3897590532434214809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3756e8a7a8d0abe0697c75985a49c1323aca7534aadfaeeeaf6b35abc3cb2e83
Date: Mon, 28 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730157353
