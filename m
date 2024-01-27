Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF63A2E62B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706385497; cv=none; b=kJdksVhKFLNV4O28sOAT/9V2WbbYIXNHVTgG/FzZGwRbPqozoGzHVbsZ4JceJOKcjcnaadePqoYSSV/VOzix7UNhlzLL1RtOAggj0glHsrdlijH2Q0gTG025tg6hSl172ZS7pVO1tWnCpd6HVZTcIcDG8xxrdMrILej84RSVG3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706385497; c=relaxed/simple;
	bh=4DC+5l1o/P4Ix5iGNUTVAipgxYFbiis564wM4Anjp/o=;
	h=To:Subject:From:Message-Id:Date; b=EIdWeY1zPPqIBzk9wP8tWIC76W0VY6BESyUIHQxsB6eTRL/1s1+3kfFFXpWqDtEklBmmIMC35VnXyd/qmJ3PRqu8Q9AfUoOZj9WZUuqlDk6tgEe5suNY6N+40TnPifnd5IvoRTIwRPDZKmcl+Sj6zXzqMdj507P9VRvOtBIdIFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUQjKQN3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUQjKQN3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76534C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706385496;
	bh=4DC+5l1o/P4Ix5iGNUTVAipgxYFbiis564wM4Anjp/o=;
	h=To:Subject:From:Date:From;
	b=jUQjKQN3E95rx/Zw12dPN7KemQHqGu+f5sq2/1x+c+aM16JGb4b6gr+laXcor742a
	 +0yIt3jiZTxuhwGWZYlU/1yVqx20wceHhTrhuWGzm/pibnmzcj9l7zpY/VFp081wU4
	 fehf11Qw5/XYZPGS29T7UIXxpsvy3NXP+tltx3nxaLKadc17Q8m/MMgqOIEMNDmz/p
	 rHPT7xuPuk1W/NTYDoHppi+3QEfjViDWT3wkXxZiNoZ2BnxLisbYiNgGu1ULzX1hnX
	 zyQOp5uNZfUnrTeieTozg8BlHZYv9Je5wsbUbBc4j/edAbtv+09Bhwrvyn8jhS1LsG
	 Mvna2UZv/yCjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60273C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170638549636.26799.10564477796303788004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe8ee15b978169e52bf4cffa470cc66f18e6ccd1f050bc23af4315ca2d71067c
Date: Sat, 27 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706385496
