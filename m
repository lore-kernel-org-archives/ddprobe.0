Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269C1259CA7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759997394; cv=none; b=HiiHW8h39dM84YUC/ZwOn3Qwaz9cdRzp7tLTTUF+5o2KFAgC9Y/qh5k9l3GgmtKxhItwfiRBwFyjBaBX+pGVVaFGHcko7vMcjb5v+pwSHnTWbHGLdJIxvbnPb/cx4Of2V1Rw1ec0WADPb7hCKRzpdiNwL38q3omPZ8cXg6cRuqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759997394; c=relaxed/simple;
	bh=23DpU0k64VRQp3qp6n1BVV1I0VlgDgfpXnaCkZYsP7c=;
	h=To:Subject:From:Message-Id:Date; b=L2okJ4I5v2KcW0rIV9Shkua/QQ5uFbZrb4xxWGMIx93Dzje6HvtYnKrL0lfAhDZ7GZ69YMuWPj83NSf0m8TMLi/8/gZ1zRJkBKcUGs4FbhlQrIMibdWSei3AryjwbfswzkGYYfNCOaI0awWiKB6n//5yVakAkVv7H0xJqcp5Tjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSzvClaw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSzvClaw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A573DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759997393;
	bh=23DpU0k64VRQp3qp6n1BVV1I0VlgDgfpXnaCkZYsP7c=;
	h=To:Subject:From:Date:From;
	b=FSzvClaw2168RTpn+GkHkEU+v43/KchKb+2IKUSu/c9u+N8cp1NhXmbIjK2EMBEV7
	 tp3ycdg5MELCLSmualj+MXSaVCKZ/YBvgh2fJqSuIzpf7Sw7wpebS4Y2ZZrnIKf1IL
	 0b3rmJq2qT/pG7gSR1G51lYlIOr3C87a/EZKWKj4MDOxUHeYe2YEh4C548wBHFuhud
	 Z3wXJKVlCkDcYMdqDRdwzmLHs98PqBHGkVYRFtY11OQapoHU/wDQoms67cgnQeVCDW
	 4f7l/y8P6Li7DZfTx07Y7v/23Qlk4Esqre0vjWr58ztTxB7sPTBeMbUTOGn0s8vQbW
	 uSaosOc9vZ1Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F3CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999739358.23007.14369845825915720178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fcf0c1484f25a6f3fc0da08373452b843f55c2ca794a7004368e8a99146de2
Date: Thu, 09 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759997393
