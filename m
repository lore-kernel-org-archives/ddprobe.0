Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7CF440630
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789452040; cv=none; b=ltGgr+O2YrcbBFM0dvT0nMzh+JgixU14egUw2c35nhY2L77fcEesaO4YA8REmPMN8dXFNRRr//hscQ53UJHBU3m9irwf+WIrtvKgCAZEB+EwhMyYuah/x1xuJklz2d9Ow8bspJCts0vPCxtrML9/9WjuiyEj99nZF0UW7c/t0zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789452040; c=relaxed/simple;
	bh=RhYybTjTN3fCsPZR7s31o6SMwoXObhw/7kmP3ckTjas=;
	h=To:Subject:From:Message-Id:Date; b=sbWDJ/4SSvkLjlmpJOYxZy+SMemprpZPdbEd/eS/qDb6C8IlvtOuGmwtjkbk8ZwERw1YdwCrasLM1H3yJp/hGqXk9uuI7rLsVm3y+sSD6QYMUbkFgkEe7ykpeCjM9QJPrb2RN91Y+/MX5FSMeBMcrX4yYxG8UrgnZl8yx3fQh/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/c7klBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/c7klBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA9FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789452033;
	bh=RhYybTjTN3fCsPZR7s31o6SMwoXObhw/7kmP3ckTjas=;
	h=To:Subject:From:Date:From;
	b=W/c7klBTsgBF2N5/0LvlcN/JPrLeOMCQBKeE3oGLcEQn4jck8/e5mTOpDAeedPoG/
	 iy6LftLm1Fe75DIjV0PZI+lCapNkknDTxg4cjj44LUeCEFEGruqLrj8L7xCAk5iZec
	 n1xpqblXxrlUPUBZkrfGM10blUtT8R0NW6M2+fGyQUYqcIATh64jtc/WSMHaf2CNVQ
	 Tz10HhHTuM1utP1d/vjSCiTXlC8aPvLpBNL8AgrBdOoObVF9YKF79iyUhyX8pkDnrl
	 /JffTdgoskGgrgzaCSelHnB7lT9G54JbB4tr5UKaRlLy1wzMWZxf9O+XVh+z4bpd5Q
	 ZIb5mtpPk+bgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2CBC88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945203369.28818.15840016840618463066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab7bf781e2ba6de5b5a2858caa9685a2859c7237329c5d6a68511461762f63d7
Date: Tue, 15 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789452033
