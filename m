Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9912153DD
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734012354; cv=none; b=RV+DYFoG9QI/1uLtR6DHLD3jX+OdN9KlHUx/K18Jr/YeHchVvrCfI1qZEs2HBtrDOk9aQiZPeJPYI/Kat5mPCMUc5jviLrngwzAe5r2C+5Oz2ULWmZDVY9ICD2d3AeOBHze70iXxghsKBaUpHynRJJa2l7cxVGwArJhut3hsB5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734012354; c=relaxed/simple;
	bh=xvUq/vsvCqgORkAhNB7fD1YtN1IVTPNF7yji4udS9Y0=;
	h=To:Subject:From:Message-Id:Date; b=ulOn8YjizPq0wYufxu9bgo6iK4kqgZHlqdkmar9fj/wAwalOQ3vCDExyqtX3AECJ7zBT9QkzzIhsAvdFo0kPV9QZHIfAkKYiiYmKnwH11PTxNSLlUyoYxhCMuK4Q4pvLD43m4j7XtEV2MY2GeGnFEiKseyDyOEBHxlHS60wBpY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeL04Hcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeL04Hcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD828C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734012353;
	bh=xvUq/vsvCqgORkAhNB7fD1YtN1IVTPNF7yji4udS9Y0=;
	h=To:Subject:From:Date:From;
	b=IeL04HcpaO5VJ5ohvDzL65l6m0uQl+iJY6kU7zbcd6oone6PClTW7SmpsUgQq0tQ0
	 sTQgS022v8PQ+jImNsR92F5MH7FX9IJYwZo+wogvVgKXN+ydmwj5affGYks8phf7JT
	 xmMQgqGUj3u5YMraFOcgem/kvQ2C13matG24XfwNaJhNU2NDZFFgbJQjTrUXB6Jjps
	 Zx4X3VQrmUA/5Tu5KQ3Mwcjoy24KQ4E4ziZHRAhnNHnoKvRlVpI4FQL853f/+bX8Or
	 ZxVFxikXb6ByKyBDQoZk7Lc1ZkdeJqOhBLUVHIHgpNkdJU+LX+mv/twrLcdCZKJxQT
	 nA3mHyDALrKog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A48E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173401235359.23523.1129359248812604962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff33433a6db1b8a8d1636c16a1123440c1e1bbdf8a405106d9c5e7fb2d1b8b44
Date: Thu, 12 Dec 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734012353
