Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCD82E7391
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780987474; cv=none; b=m2MAeaQdUI1uCo6P/XRDuY0rs0GvUdeWtwhmQx9kxrUVkvbYb/xZ/b36ahRcYbicgXkzvgyJZ9R5gkvXV+C5KisvzWoYP50bbR6wZrWic7AVZ0wEYmQ52+mjVDm6HFWwBSeb/2fIBOsM2b9ODoI1vBqta2kZBDLmURaNnKctwiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780987474; c=relaxed/simple;
	bh=t3uZemONUq8FLnZXWJHj0FoD/yBkz3K7ZCtkBxExZJU=;
	h=To:Subject:From:Message-Id:Date; b=XK2Hdpx4fZesMSXXP7axBiVtwgv8ftmZ3Xo+269uE/4S5xHriVtKrkhjOhTwP6530f5vK0rQl7iLCa6mSZZo57xf4unB0MbW07LpFKGmk/PbaLRjS2GSFwr/AYdCgiLqMmAWCRPBgEZi8uUWit5/jt4kRMWXBhcvQJrA74eulfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdYyYbR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdYyYbR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4108C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780987473;
	bh=t3uZemONUq8FLnZXWJHj0FoD/yBkz3K7ZCtkBxExZJU=;
	h=To:Subject:From:Date:From;
	b=BdYyYbR+I6TjR/Aw7Xrtxl1m8C9fmt9cFr54w6cwRFqbMG4G3g4JM9kJPHRmpcymP
	 IL/VSbdFwUdO4hWb8erL4dtAgLk1FnDuCyV0mMNElPBlGqaLNA4bBE5bNolaqNx9C6
	 OR6oPRpEnyk7Pa+02u54rpiSloJ8whL7TwChKbKVLmRaXJVaCjgJamD9SFkf9UZDIv
	 fnLK5o4AyKehfjzyz/AkkR5nGUlHRmVdYTE8QIsZ6gajkyTbSh/SKx6aKF0FApOcS4
	 HjgZjx/pL5AjeLdOQY/2cZV12Dnz5eoNwqzv7zuhlcHnZ5Y4eudtdPShYuFqorjzW0
	 b70RxqvdBrjQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B503DCD8C85
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098747372.31156.546013660446902573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21a7393324fb991ec233ae625754124f411f3d890dd2ac02442977e79b5a4cec
Date: Tue, 09 Jun 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780987473
