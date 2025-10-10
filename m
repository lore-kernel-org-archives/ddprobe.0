Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FE44414
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760101194; cv=none; b=c+NI5LU0e20oCvxCzlgi8vN0BE4sHi3lU7Q+rdBOWf2HuibDnuA20ImgqZsQMxFveXhT7iIwLjQXsgLgHCAHgylApQb0+XPS/cKTwHsKW7TcYt4b2zPNNjG9V/Q9/0pWmcO33j/j4UxPZ6WxdBAQTy1jHwEinKIA+yNTWUBR+h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760101194; c=relaxed/simple;
	bh=kOSUlC/+w4UUlF0zfupbsMLBgTGJVX2HYwN5BmKimYA=;
	h=To:Subject:From:Message-Id:Date; b=S8mB5qntygqoDYbVGtudTGnELm+wf2JEZqqn6Fp5JXs6uWdYaJlr0AbzvG110cDoXGDPpV/VpK0awlvDuKlN3UbbXpAk/ZOzdX5gQWu+tMooVJL+LZqxBnJ3k0y0COA/uKeIZ+skYbuWm5Dr1QWf2/vzldCxZRHyguC6NJ2vgKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0Q5IkT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0Q5IkT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4063C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760101193;
	bh=kOSUlC/+w4UUlF0zfupbsMLBgTGJVX2HYwN5BmKimYA=;
	h=To:Subject:From:Date:From;
	b=q0Q5IkT8pPJZDrRJ9wvotb7Aox3aKiWxO/qpNzQjmK0ZDt6/rJsTZwO0v1H1qIq0b
	 Msy2H26HYmKfSYsRkvTaIJLN5+hBC2Tg8p1T+m1Mf0jir+EtN7qr+XZwVQdHacWHQF
	 0EplV5e4Q9v2kiPkMx+2GVRst9k0/CIIRIDIPKtsweGafRoSfURrvrokzWfEr18v5T
	 ZlC55ypclMWbjgdosDn38RUUVi9Qs2s7LYqkm5q0PxdDi+SJVWZqopqgaVSTeaw8Bh
	 qCrQkojL4ZZOYFHwy2vg0yi8wEmBvMtNAP79tEfbxpzzXxzkjTMyNYvl8ILGtM2wxU
	 iJe8rl9GCrf4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009FCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010119358.24697.10778888067120698466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba3fc38ab08b3cba43cde7bd622fb708da22d587a02078d62d9f78c5c9e44cb
Date: Fri, 10 Oct 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760101193
