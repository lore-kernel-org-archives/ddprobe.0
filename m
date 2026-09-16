Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576C23F3285
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789564834; cv=none; b=cSr57Y+fPYnYT/y7nYdV64BGEEM/0zBB3lxXRWYbh3K5oOQVkC9EEUtGIJaZHtKMBSUMk00j0VfCjfgHerXl4cb6FEY48x+jPZ0Tr6y35/iTEz6yyhKTSG4AkqV+War9ftOdPgrff2Y4fr+H+AeJg7dYMvcuqndX1C6e88PyRIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789564834; c=relaxed/simple;
	bh=xW0FH9hzunbMC5mbb+IPoWFN0es6kNJu/zVQPUOkg3o=;
	h=To:Subject:From:Message-Id:Date; b=aSF43v3OiradLMrwjasf4Jvzvwk/zWzTYLe4EsEZKJaJD8CBL76iALhg2+6FC1qtW6kDSbeAaA5uijF0VjUqM1ItCSWzwzB5CgvfvqEp0uCuT6dY49t3J0siKgB6KwS07ZxQh5H4aUp3FwJWIAqDdIZdTnj/gYjNqusyzakch0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uT8QqKvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uT8QqKvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB4EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789564833;
	bh=xW0FH9hzunbMC5mbb+IPoWFN0es6kNJu/zVQPUOkg3o=;
	h=To:Subject:From:Date:From;
	b=uT8QqKvAVScXGxmAX1a+16Q+vl60mZHUq0AXPZlPGpBfFeJmYMZdY1FRSmcKj8MGW
	 AN3ZBDWEeHG+1OPnJ7ujhTV6sGaZM0fRbReuBvIGzRK5K68x5YG8pzKfi5D5Zakw9n
	 ItdSx2sDKhYEIzMBLbjxwvOuLbq/yGTcuskIF6eoAlxEXhRz26OMOOYl0un2mhkGRg
	 dc8Cv+8RsQOeggXCwU1AMxL5lbZ0DG2nrhttAjmtWDHK/gwkSvmfl6qW5jQLFAKeWi
	 Okl4o3UYGj5TNkewTNjJjYsavi0YT0uW/1sDheRbtu1KsXuPn9RYp4T/FwW6izlCN7
	 g6M4P9E1zRs6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE19C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956483369.8800.9449439131742255293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd120fda0df867388f2b1c3d87560c269961c3fb23aafa6b4147a072d56486f
Date: Wed, 16 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789564833
