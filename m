Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378CF4399DD
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789384834; cv=none; b=MFwgOx8MZNkonrf3t2lCKJ1eMu57ZOZt8sID9IIcWB4fyGCu7Ev1seG0bSCcQ1HZjd6jTBgPrHXB8vD7w2yUVEC6bHO+ZBljyn4H+DpQBVupBmUHh/vOAewswbyIyDiSXaA2+aF3uthv25ncbQkQJfcd2uR/6k3UIs8vzq9Yd/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789384834; c=relaxed/simple;
	bh=9xmm0nZgYpiYUNPgLOwZUEb/1wWMe935mC7MlpeEPSM=;
	h=To:Subject:From:Message-Id:Date; b=eCyKcyQQ1coeAPpLE6MPbv5Lyv12BOwl9zyUVZV1LEJogWVeIS8teJtw5XpEvHBeAmDv23C1xD4IzGV2ywkeUAToh3+OhW2jUQumsDOZhO9Oj0WMbpEmqh9/Ncexz4W0BB/T+ZSHDUtp5oNKlgKhmkux8swPReOHKOSNfISm3Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tT4yPgv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tT4yPgv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AFDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789384833;
	bh=9xmm0nZgYpiYUNPgLOwZUEb/1wWMe935mC7MlpeEPSM=;
	h=To:Subject:From:Date:From;
	b=tT4yPgv6TAdNMeNOiAO+5wv4WgUISP1oM2DunC13U44qrvbt1GP3I82dvuRRuq+Yt
	 Sllhw7tMHUCXab2bpL6cIFUWw/cU/sMEpMu5ZwqcBHiWFVqeZCoGHlHYaVw+HPYQUb
	 +icx6Nh4PIAjRD1wA5ydCWQ/ZITOtRB+2nLzMKjVTHg2cpV/OrG48CbaCRk2fcMkHV
	 d+6DKUujApm9+oLwLqXnVD/M1XzXa7fN7z9i+OpCw2rJPgoSfvM2m5BbGSeJ5JjMCQ
	 zwIG0a3cal9vcHlIA/p39v1GufK0lFaN8PX5jPNgkLVTfPXCSnezVxSBsMrFdYn9FV
	 lx94E6464n/dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA65C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938483369.25040.15588204251895463640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0305655c696b0c0f641cd97cc22968ac82e839f111065d01d391a05fa1ce822
Date: Mon, 14 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789384833
