Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFC43596D
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762122594; cv=none; b=JEjSSqHq3wg8kvb92e90G5AGVhIkN4aki//rS46L75S7RyvEd/FkBkGxKUklpcGeUUTPhWq+L00iFvP5Lfxe5Re0s5dkaGSfdYJQm/NL8hCxtq99v+8lEHCB67Ppx0iYKfEup0Dq1naGR1cFis1uFBSKvzmcoLgkN9YURqnN68Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762122594; c=relaxed/simple;
	bh=HaLRDI+Pq1EPFFmhM/GyfhQW+9GdkkFEesq90rEKBGo=;
	h=To:Subject:From:Message-Id:Date; b=Q7/zYcKmkf4gjs322cJbZlDwq9gdaoDxR0Ufj7uQgqpm8FGwAlyQiryXMH7juhzIbd6RKoKsEmuths3khf6CtnCQjUujRdBW33w9rTli2YLYHDaH1TsPaebx8KctybKkZt9moT+o3SmkHWeFGPwPY1pdbLIq/pJr9xiuBZPf3kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUtIS9Jm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUtIS9Jm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFA29C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762122593;
	bh=HaLRDI+Pq1EPFFmhM/GyfhQW+9GdkkFEesq90rEKBGo=;
	h=To:Subject:From:Date:From;
	b=dUtIS9JmRKAgbLE4s4fbF9wSwDZyHYvE6RzpCaxA1LvYBfQr4Hj/7DXdZwswpWxqZ
	 gS5Jxngl77dbCiEHtGP8rNhjHtYPxQvCd8W/BVmGKHyNwKnu6Bv2X8T1bBSgHmtDtI
	 hHr7vTlyyQ+RhoReb0A75SD2dJ/UvFZyqoP9EFwGPbnegYJTSh0F6ey4P3W2HPcj+4
	 MR3dpjMgmUSD/fto1+AhGxZETl7j97LK6V42jakon2LFoGZwPngU18l3vOaSPITBXI
	 KzHRRY5RM0XxIoZwcnDMqAglixyvwzSeRUQK5J+UjSrYzE5SZ/m0IvTnJ7f5DMWlG9
	 /gVfTavlSRK8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987FDCCFA00
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176212259361.20005.3994012438425174873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff70d76d1723be13cb4dd9200bf5e86f8d53e9abe627d9eb3cedf7efacd43b1
Date: Sun, 02 Nov 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762122593
