Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C78220B1E1
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736503554; cv=none; b=eOXI4qUSlBvFu+KB1DIB4mezClBLemldljhPOVF2XFZsE+4bYUcz41Ud1vdHUZLJZbMMCV6MrEGfZGRWzPxAXScy6AOVzwcvYGI8gLQw8zaFJatF7+D/vMVff9uaPpK6J0ZG5oKeu49GUdxzUA4FsOXtdwCj34CVWn4m9szzYJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736503554; c=relaxed/simple;
	bh=rc6URPUy5S97zw+cwUCwifb0oYypTNkGL9x3sdF+/OQ=;
	h=To:Subject:From:Message-Id:Date; b=gMSomS7EGBDY0cQQUVTLAd0V0Wlcm/d01zS/0ABbLKSDlz+s6LQeLutTIiMX9nov2OB4MVDmulOWXt2VPbcdhKRu7p0gWFpvMS/QrbICfsOmNN+m3rhBYYavN3XZC5T2zi2r/Smn6tWcntfb1WhfVFYUZje4wK4Igrlq1XG6jKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPO00MiB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPO00MiB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B71EDC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736503553;
	bh=rc6URPUy5S97zw+cwUCwifb0oYypTNkGL9x3sdF+/OQ=;
	h=To:Subject:From:Date:From;
	b=OPO00MiBdPLQTcyJZYSTiHFX6lvMsaB7WpKWV0aWkvdfIZSrN0IMlVFhgnsfKpCpN
	 Zf6ZDQmwhQ0U/u8pzFg7QQMhUdSuz3eKKwKGN5gnSQconU4n4KcljJtOgPuYtVAVyX
	 coVVdsgxdr5jOLjY0WVwmWHjQaUU+US9A0Ccv7qm9ITHHwsjHt/sMyPICEhGgsEviz
	 0C91c5XwJQW3JpmEwsZ77mBbZ5hDOW+CUidWm5khsd16vxaaasPWCvYAa8idJwSiXG
	 Fxjl2FTq6IjgXF3v174bssGriqNP6qNjNnPqAEiV1iyrGicBEvcOeT5Q2s6RZgbsms
	 0up5eU6W7ZTMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD40E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650355362.7250.6736996380282691273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbc3c3860b99fcfc7934d86130762b041a4db67117e4cd3a51da5b91c784d98d
Date: Fri, 10 Jan 2025 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736503553
