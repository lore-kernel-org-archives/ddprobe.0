Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304D4155CB3
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762601394; cv=none; b=No2AL2hSw2jHaDZKuesopcUVKGDTQnrDVzuPFikgpwZtQdTIa0z1AZ/Z3pBNmfYMWkC0XalRImFpFbfGtx9RNmTPK4gAfo0vt0BA2duglGhYNQl4vx5Ask3aBLy1s5Tw2/0H+1zE7rFtuuAFyz6MQk/v9SIRUjDc9nwHUNNpRIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762601394; c=relaxed/simple;
	bh=oQztA2QVDznhTQdK1ffuRd7jO1zjSSRzJIj+e7qyaDE=;
	h=To:Subject:From:Message-Id:Date; b=LzKwFPgeUwpp7/yDbCKto9jfgK3DSKitU9OKGBqY/tKmIXxCUAbEhx7Z3mXo4VyHR5G6YyHYz/8ZgzNwyN1T1stO8OrFW1+qxB4aRzNPUdUNE7iVMUN8dhRCeW9LgPNYxbZ+xdoDtZ3DD2c0t0iLY+A56xlyAfHc1jZK1GcJYFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMTq3bsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMTq3bsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC170C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762601393;
	bh=oQztA2QVDznhTQdK1ffuRd7jO1zjSSRzJIj+e7qyaDE=;
	h=To:Subject:From:Date:From;
	b=LMTq3bsjSQyOscs+f5piOcImZqj5bhjEDH6AmSOLxGGNFG/v3ZT6TejK9eb566V9+
	 zTYvE5mRpkyL6Kmjo/2L8UFqVsQo/AFh+mdgNgGB/fCtiXfO64C2ru9Z2h60r60ej5
	 QB2hiWw2PG98CZQmcofnNQGXk5CoTZOdAl1x2HcLkGwQT6oPIenj42RnKApF04KDtM
	 FnUrDKl4MfAz5s3taT/SU4vn7/M+75UZqeXduwss2mi3d3Axh5McOKXTbKf+whFNcp
	 wEuuzTi82dmyUtuz6Cp9Q5gLZrfWtmWrzYK+WGxKcMS+hl5P4EiMU6YA9o4eoOcO0P
	 Ad5XNhXwAIlmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907CACCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260139358.32659.14653933911213227724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db58ce91dd713bc2f84e6a589d8a090cff170c0c7484e9e00c0bcbe8cf7f8276
Date: Sat, 08 Nov 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762601393
