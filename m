Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA562AF07
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751933994; cv=none; b=uWAJJsBehoubpUYGKUL0PzVTOtBE+W4rTYrvTadfOQ08BRtsJ0lPuXm5gTqzZCYRmmJuKh0BVK4oUeUHWIdbv62L4DWgbV3b/ycwEdL4xxHy946pz4BzVbNA6YczV4R994eRmDsRRXVOqS80bUvBhxLHfE9PK0kLE78HNrPX6Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751933994; c=relaxed/simple;
	bh=fa6EyACcbHdO2F2haGd4LZlDh52j6WMOGanJtP0VG1E=;
	h=To:Subject:From:Message-Id:Date; b=edAPfzntmwtmy3PNJKFY+bmDM0qY3ryDsSo24ngPUXDQgbjn4TFgFgaSfZrIBbNTjiHPaIBQnmmJ3KkejxtQsl/eqY4xEPwTj9t5CLdt3MKGZ3JdlZdZ46MnlDm9ujBzpIlqfOajm5Lu4VaeN6gH/3BQbC1+BirXwLlJpxNeyQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aK3ajPD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aK3ajPD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E4FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751933993;
	bh=fa6EyACcbHdO2F2haGd4LZlDh52j6WMOGanJtP0VG1E=;
	h=To:Subject:From:Date:From;
	b=aK3ajPD54moKW8zDuNn8+tEQDDhVnIb2LSoJoEaKcSzMZ9GaOkP/5y/pADDtkiZYF
	 wWofWwWY9OPpbO6gig6tL/ep2fsx2H7mc0TwcLT65yiCnhapVPN9xUDJhkq1LnnV8s
	 /RHwT7w7jYeHcvU+vt+f9IVy7FG1txoI/auY0wW04ljtYeVS8gokg++Ki6TmPFGwtc
	 Rshm/+k5HXdOEPQz3XJj09MhsHAMYsiyF87xtKGNWgrhgr1De7xx8G4OtRpQt1PkLC
	 y8ZDEqneOqgsDEuKLYqisz7bD5MtSnII4XI2JvF3Bl3g+q87XH3fsc5IevitYX4xI5
	 k3Kkb5v3XzN3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F805C83030
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175193399357.9671.14496433633325259992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b2b114f4cd36d5a14af9cb568230d97a73d1dc8dcd3acfeeef987434466e29
Date: Tue, 08 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751933993
