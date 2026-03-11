Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F47221CC58
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773247494; cv=none; b=M1WYPpLYjWyYNHIMe3syzjwnUtb6TlOTeGB77WHg+ifRjUvF9eOIdJfcwgVy5ItWJ9666oybgP2kL/zSR+lGcYhzvgqQgcMTeWHjSlSJ3g+nm5rxNEyB0Sk1z52+hMyr++5Zkj4BKYJfQs5joS9qczhtUhnj/dm9EGbeXnbIVgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773247494; c=relaxed/simple;
	bh=+wFM3dIu6ekaF4f++bDKhSTjXYe0L2miGweITpSjeO4=;
	h=To:Subject:From:Message-Id:Date; b=MkHIl7w/HJolfFWVpwJxQWR9IziLiwKBgPUtPAUW/hrfpnv3ADyPUyaxvXeznwhG9AXDNtheEmQ4EcJgk6YAAH0KuAHwpPYTfwtgqiej8oFVoU1sxAhd5ciSzz5QTjM2fh1PT1ecidgscLEUwU/Mcjb8GQsXPxWpB/xX00xLQZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fn9842vY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fn9842vY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7A1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773247493;
	bh=+wFM3dIu6ekaF4f++bDKhSTjXYe0L2miGweITpSjeO4=;
	h=To:Subject:From:Date:From;
	b=fn9842vYditrpLIY/GgBbtGvIiB+s0RfC9su0LZLeN6o+MubUfhLFL9b3hC3dFeI5
	 N19aSltg9eQu3Jhoc9YtH1aomIzbXurNnbv/o0u62JyORXkPedCv0kCMdnQ6mavxyj
	 mpM2RPH7frhQzJS1x2rDc3L1AkQ4AoZq0Uu1cIEz+Gy7y2vyT3PqdBJcSxR1dm3EJK
	 HkQxDgwXJDG9g9ZOvRAx+N5ERXnvZl0Q4IkzUQeN9NQ41+CYIi5QEIMmWd2RDQ82aw
	 CweK7ebci4Dbq7G4J+9QllOrqRseJtNVwCpGjtcWm/Kg565IlJh/KeLjuAmzjZlsgf
	 PDQjMkzVvlbYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988771125854
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324749361.13553.7310873941143498236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3842b4d7f5860bc85875c84da57709cf68efeb9c5cd1380341f595f8fc8aacaa
Date: Wed, 11 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773247493
