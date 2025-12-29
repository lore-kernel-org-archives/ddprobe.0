Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6013A1E61
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766988834; cv=none; b=oqLsXmVg2OrW5tTTlIHr8cM+MhXvlLS8NQI5gwYYoxa0phB53II7b08Z8WVgyQ4l0Jps66gxz5QfiE0+B+MiVSm68+5uOA+9uZfs0KkbWuYwdi8vGxk9ENXEREXdusDhmGLJ6t50I0ybzXQMq1fqeBf8uvOWDSq/azno2Xa8T3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766988834; c=relaxed/simple;
	bh=Fa883YZsAG9/qN7EwhpjVUj+vi/hU5zBduNUJDcdOc0=;
	h=To:Subject:From:Message-Id:Date; b=GWX8rrknb+RhQaQrfSRHUPO3AhAik/2eKJDi3h7J3Wm5vjAEjxLCREbl/W1N9nvtNRF9mFWN+yONCPmbLEd4uA2LOz2iGxfawB+TDdIbcYlnZ9qqBKYmrwSakFz+mPLXh0RemIkisCtw8ZRET5ILXHvkf0rVXkmRiGrrCZjRLNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkeWfIV3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkeWfIV3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1871C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766988833;
	bh=Fa883YZsAG9/qN7EwhpjVUj+vi/hU5zBduNUJDcdOc0=;
	h=To:Subject:From:Date:From;
	b=OkeWfIV3uoEA8IZQq8XU2Ei3vyuRzzqcqmkH/Y2WMHClaSpW2sZHcgLXeABLcseCD
	 4vZjKxEIvn+irlA9osHJXh822pR/+DtE4PSYfwcLZ7Rtgep0EX+Rxuz+x8dRenQy5D
	 Ha5/CFfG8GDd2HgiBiADeoJmoLDmIC7AbOidsu4+90Yd3JYA29PIBzQHwf3dxSMGvE
	 oefrhfxoldksA+BmUcJweMuVNI9mo/biRg63S8IJoegdnKW+dKkKbk9KDiJa1feiRL
	 mzJ78y6JBv5Jc7VmjenCDW7GoVUNV7WEiezsKXCFsirdAZDX5xKxmcOh9q1syot3UK
	 CWaoq0/sjBekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9875AE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176698883360.15764.3621456000709092229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62a842c3754380a2120d77b98df3a2e83b55082772ba4008339e55f531fddba4
Date: Mon, 29 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766988833
