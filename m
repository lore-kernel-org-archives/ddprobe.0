Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261FA1C84C0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776034654; cv=none; b=dE2vfYYupAo1sy43cNv44q2YyyChF/mHARWVg6DfQyyx2gTC3461OJYMhT1DgL9GcrnFUNY9UQEeJXoDMU5jiFL3gXKggwFc40Fpz/exZOzO5fFrTfw5S5O8MU2aMorit2bwyqdm2iE8zIunYb7bHNcFgcMaopQjBbcI1xgS0As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776034654; c=relaxed/simple;
	bh=qRlibp+gDDlLIFNG8IWu3BCudHWMWvMluZNK2ouGT1c=;
	h=To:Subject:From:Message-Id:Date; b=LcK5ywCfzpz3Nt+5h8uAcXXwlNYL9e5WaMsEE2ToOZogPJp99ZUAFeBon7UQh+DUqwfW/BZ5nBEJdcA9Uhbg5iQEy1VHDeLSCSpgzOWZ/eLe1/cEgPG9c1hy2vwylJNkVEKgNRvZS3KJY8Z9uS/5bXBo5JNLNyJwYxtKws9jceg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tx1CWRi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tx1CWRi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB3DC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776034653;
	bh=qRlibp+gDDlLIFNG8IWu3BCudHWMWvMluZNK2ouGT1c=;
	h=To:Subject:From:Date:From;
	b=Tx1CWRi68vDpAxg/7wITaTjW4QkBKagold6Lxbh+zQh9vu7kUrVqdwTjMQmgP0QcC
	 wHLp7Q048/IwLuebsMMYBnlvKiAChO+iJS7XdQkKBrHo8l6sHM07xPLQILfpv7+Ncy
	 xOrlzpCwjMJzKfucIx56ifFb0pwUagmMmCn8RYt0PIztdBo0bbvtsMJSA5dk0EyAYZ
	 K41YE2intoyHV7kqe6uv05yDeoh2c4ABz1hUqApLHnlgZHbYybX7uGy1TBl7NH3cdL
	 hnk+1Eb+86P5KilgI69PQr++UnO4ih97N1xE/rqTZVpZOcfbtxQnV8ZLeUbiM2BLMS
	 Ubv87NNBAtW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC91BE93804
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603465368.21203.5274601195545729450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c75c34218abc274bdbffb00e8481d1bc3a5d12694792b3f7c4e4784983cf7d
Date: Sun, 12 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776034653
