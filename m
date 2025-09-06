Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F62E27CB35
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757176194; cv=none; b=Cc0hFpOyCFZ5QHDJhb8hg95Cs3Nh86qBEX6nk257dC0f39eLNm1oc3EBWUhj+St5jXXpM6JEr+usj2uDj/9sZhCfcLfhdhCpeTkRBxvRvtYK9c8sazUHiatiyrb4/1UMp1AXcYsqLpvg95iPBJvbEnUShJM2zBv7lAxKrAkNCuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757176194; c=relaxed/simple;
	bh=SQB5WUBiAu4ffTQT9OzVv8Pr7SFr6Iw3WZoGmUf+bZY=;
	h=To:Subject:From:Message-Id:Date; b=lOjPDIVURawAzocxokDqx4gY39nPxzW7G4EUbqZKwaxpAyF3GhBtjs9c92ThqDTPu1ukz0AQjOnYnKkfYvGghxZs5Aw0cze9gV6h3J/EnaPFyLbuMlPk4noE5tDeAGHm7Ang8fKgXcUXE6MFiGMgFpckDgE7dom8zp7Ox/URPmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pR4JB6W2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pR4JB6W2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5300C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757176193;
	bh=SQB5WUBiAu4ffTQT9OzVv8Pr7SFr6Iw3WZoGmUf+bZY=;
	h=To:Subject:From:Date:From;
	b=pR4JB6W2z72vFrDB8RRzjs02Il3bV79o6BRPne1ThCzxFd+c+2vNBuSGQc+adp69A
	 xSn+peRT+M1jYI21p7McA8hMzjCgah/SDJTnDKCevgrLHzXy5S/DZbp3VdNQzkKT6z
	 ZXPR7xv2ZSjBs2zvuMCgvc/mlxpgvTh3a9bMgZLC8mpvtzX7lHIyHyoOGg61H5jFdh
	 O6Zxz6zpH99nNri9wuNUXq94vViqM3wX/hv5f2vbQBbhBf20Z+YTxn6sleuMhPYJ9m
	 KTneu60+g2OHmW+ruM4TmI9+66vIOv2Me6LxmOrKtIZqT4db98IRaZifo57tK3yjGZ
	 mnlb6qTr1QSJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92532CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175717619357.13602.11835550381698400834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c564f3c13dedb8d79692a8d5df607e0275d3d41bacc98a4c0625da701d2ed253
Date: Sat, 06 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757176193
