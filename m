Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2E2374E5A
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773284094; cv=none; b=sNlLhm1Im0elWF7M0lq9GBz1w8DGvTKhKzP32HKhutu2uKjuoYUp7fe8e6AdsgqEAucbg6Q/Fa1JbCl/3BVuvvu5DLbkIGSbJdb649ZFqTitlC9zSvzDJ10gg0yeRRIZIqOS9Qpuewd8i2HS5N4TKdNOgQF0XPf3Ma6skdAfgMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773284094; c=relaxed/simple;
	bh=zKRoZ5JjzsxWA+Zex8xqaFQiAghqkrdyZsrKAZHZjQc=;
	h=To:Subject:From:Message-Id:Date; b=Y+CVYLuel6iJG/yZ5PeKhkuIFyienBlddlX12delyETnBcrWd/fOqaenwsVbOSId1m6xQwmD3Wd37jTPMEHxC5lqu2kNjUDzJquECcjr9zhKTI11CG/ZjrG0RgqTW4/GrU9rsZPm20XVWlGnQw0vGkAcmBSbOjh1wv92qXWF3MM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkjzYene; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkjzYene"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB6EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773284093;
	bh=zKRoZ5JjzsxWA+Zex8xqaFQiAghqkrdyZsrKAZHZjQc=;
	h=To:Subject:From:Date:From;
	b=YkjzYene/u2geqXOaQWfr1trx52eupphpU+0lqIbtn8Qklw4lFZw/Tkz+1/kmk7cG
	 ctxSIYIxnkTKjfWQUPBTMg25Aae5hlDdA0pMDq6CoXYsjtK8AmqDR7Ju5cpeRtySgG
	 KskXAHhQa40IMzMjAr5ObHMplNXodySutw018CzFqyA9MVWcA902Yb7LXIjuJcm+Iu
	 zMztd8yDHaTOEgwK7j2JV8F6tys2yLa5SfDdBbKcDoFe/zXhZmeH3wXmxj/IIXhnxs
	 12jlu+tSJUM++MtWw+qcqFQz+CMI7HCQCR3n/zPdl0EF9IR4RAiC5ygzGbZXOE4r6r
	 K4TeQpUMVcnDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACC7103E304
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328409359.18137.17577375150140929899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3175e0a441e1221ecc96f18e279cda237335e58505b4c84b32509d7197835e
Date: Thu, 12 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773284093
