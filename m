Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2F9221F13
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767741233; cv=none; b=Gx6xOW1QuAfI1QU+eWvT1ysadGRBkxoWADiHBKo8WdDdTGVER8VQR+hlcYACMS+IHbordSnygHwDZGBp7I8xO/9wF3Kzta9Keh4KoNwIy0S+6YxU/OEztBxIB04G7KhXeWNmMF7pcm/a9VgZ5uE8Q0E23VrmhL8SvnSk+AznV7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767741233; c=relaxed/simple;
	bh=Jn0EC/81p0/z7/Y1TO9zj4SftJbn0r4fjHWuEt0sE8s=;
	h=To:Subject:From:Message-Id:Date; b=p6HhGWajAcoSHJe4IXnokV5SZMbUVBCeMMeG64rJ6GqMuY5LE52W/K9ckKPewHWgQbOnZbVyTdcCppW1MDf4AK7gezKJYDWA9NGRS/5OwZP+c5gaUm6syq8nO0Tm8RKBM0PgcddG+aBSeA4WA8EIWIp6+MeMl73wzbbcrI5e5cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRAmIre8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRAmIre8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0052C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767741233;
	bh=Jn0EC/81p0/z7/Y1TO9zj4SftJbn0r4fjHWuEt0sE8s=;
	h=To:Subject:From:Date:From;
	b=mRAmIre8fCjrEJNrsC/YVJ/nl9ih9PW5o3nUEFo4lwzl0wdst2hlri+QhJGMQ8in2
	 2ACRGOzkblded/aov+pNebV9kEvdSjThNJL6Q5SfAyTguHGDne//D5/nJBfj/4eATm
	 /D9zZ6FCnly3yX0+mBmyjWDnfMhVkhiExAY/k9LPH4el5LeS8WPqWtF2oViOidxbI2
	 4od1/kbIs9RrtikMA2/nJXWqLWvYBvYWLyU59J7+35h3a4PoDE2gFZDli2L+IZdHxI
	 rQa9iAI3FU3HOuIHY32QeEauodAd53z3eL34/ZCym3KvsagY91RkTSAKoow2ZJkaxo
	 N8VN+KaWNrHtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91003CEFD1D
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774123358.16375.17359011829086514372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ef41f40c296f363a4d0e11b2445cd41745ec3f8e670ca6aa2f4e73b1f2d4cd
Date: Tue, 06 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767741233
