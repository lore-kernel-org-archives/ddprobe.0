Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CBE60249
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706882897; cv=none; b=WYlOhNMQY2ERn9lvSMuUU8lndCfUsIkEmxR36w05xgHDX8NmifUoe3hxSXu52E9tBt/UacviRAv01MawoZ86OPwXIeTeKwwiVPU1yc7NE+ZxskdAY0j1jhSKmr9gX4lVwgYPztGLs+/hrch5OmPfaH6TC12aFqNllYS9twVn6Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706882897; c=relaxed/simple;
	bh=F7dDezUPt9RcyF9WR+qBeRpeKsE8Ac1RvnzuICwTV1s=;
	h=To:Subject:From:Message-Id:Date; b=JYHpbEhNiqKbbT4c6MDTY+UmSvefY3PJj2QFQsm+7ibMvJqYPgN9y21tmQVG12C6uwp7QmFDxAC03PG/h9CvjZS6t0wGNxFgpI2R9dMaVhqD6O18TfkSfalO4DERKTyoqUtKIF3xe2OWd3aC0afjMYlIbCPh0IIFWxHPXVbJY1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqVlHJVh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqVlHJVh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DC2C433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706882896;
	bh=F7dDezUPt9RcyF9WR+qBeRpeKsE8Ac1RvnzuICwTV1s=;
	h=To:Subject:From:Date:From;
	b=dqVlHJVhswq+zBR5Twrmy2UoDjCii72R7sW8a2mU/Hz6j++KcMJ+qz+7K5ACAALDt
	 5iXpA5uAy5/W0X4gxH7vZ5pSlhXHj2Zky14buk7YWRUD06cmk8F0wQfhTfQ8Tigor2
	 wI/OlHvWzEr8wXrnwKZ9Ec9CPcFdyzYINQfJk0ebDQlkmLcFOeSqXs5T2S4Yh3hRGh
	 7GWRBAqGEO5/OI9n3Wd8AYkz4ifxw8xXGrhQUsWWsGLNpoHu244lPKT8Hrq6bD/R40
	 7q58MpzbfT/iz6cHsIXODb2IvoOHFlSIuzf9/VM6cYjd7Hg6M9k8drkwxjbJ09drm4
	 ujDzEpFNb15fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D29C47DB3
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170688289639.21752.6758995288176690737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6a03a2b4b5bf7e13be20f313c50542eed0ef824331dbc0958a814911acab69b
Date: Fri, 02 Feb 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706882896
