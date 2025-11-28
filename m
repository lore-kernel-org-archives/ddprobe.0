Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1688935972
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764290574; cv=none; b=FC4oey9V3iE4u6Kpp3FcGwBGBrANJ1foqJORADUDkPIIvhlwS/92oKGXJ6laBZLkE8SkCOaKVkusZ98lOWDM5QQ17MH5sdunOJWC6+RHU2LDwSQYWBAGXDbuuDrqdhSSVy5pR28U/Gjepo7BuzRfcxWjmpEfMkOX360LlA+kFHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764290574; c=relaxed/simple;
	bh=E65rjTPuoaK267SMi5E5SFsvI7LDZlzKF3zHThspDIo=;
	h=To:Subject:From:Message-Id:Date; b=RHhlacRCwrgWrc+gJeRlQADUaeHUIilfSZVkDQqRyKbWLuTKsJo4g1aPIzt4o/40J9FT8FKvKWueVteUPY8p9tzkxdBctB8YiiB/8b5gHjl7PBI33MVS4VBL50bX8KAzUo3uBvanf3IovjaRT8wf4/3upEjVqAMHi47Uzjh2lfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cf/9Swxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cf/9Swxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAED8C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764290573;
	bh=E65rjTPuoaK267SMi5E5SFsvI7LDZlzKF3zHThspDIo=;
	h=To:Subject:From:Date:From;
	b=cf/9Swxkvfl6m2RK+3lQ4ItEaHvXZs3NgkxcY73B+U2nBSRfBVLgX8go3QrQzyggT
	 2eEwpBnKSga2HbFJzGHanu0aMC3ssU2DZf3UbQ2B5NEg37xm9MSdCZUOQyha1aIveH
	 3NndFU4lC/8ToWf1GLtp0sEM2zLH+9DPjk60fPaQHVU3HqArqp6NhyJXuYhpL+Og9T
	 8MC+hIKh8cauf+bEDeG2NvotB7uui/+pllKOPxhYu3Qv3Nu0+hcCI9dKDIA4fWmt1f
	 +xC1eCGo3qU1XdcdSlgNiqPA2cT4sjkf9DB3Oq78BFWHm55SA32mFV6uQMgvZCqXKD
	 0O4CEd+7CA90Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE7CFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176429057359.5948.5221079659073674353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68b8e33454d4be31c7c7277e3d8ede7cb60992b45d71a58ca31f934630a78d96
Date: Fri, 28 Nov 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764290573
