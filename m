Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D37D1DA4D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 21:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721163923; cv=none; b=BOnf2NJbRGhvpYVrFUt+Moa8ZH+GHDk2C5BPEjyErzxQo7z6ZpEUYofec3sQy84PmbI44CoR0REM4M8skwghHX6ZOcs7pPnh2lB+pUV5jR8RrJ10UBKMBbCXX7uMiwCuz0EpaAqdyG7IlKnwN6hjaFls1PqaCNnUU6In6jgBG3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721163923; c=relaxed/simple;
	bh=JxjrLrpVTXbnJgPWJ9ti8+iQ2L9kutYUs49yM3WK6cQ=;
	h=To:Subject:From:Message-Id:Date; b=m04I03YDQUtqH/QXS2125O2kcHd0V+RSO1aK4pV9aaMwRBTtC2H1vlM1GX09ziF13IB5Q7RyLqP40+iwUuW377uAojJ0e0yraKFIY+TMz2NtddEMwXSYxdKH2qyFCk2zUrasqLBaW+1GlC5x36Be/rBvn6lq729zJ32J9kUEST4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/O/BwJh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/O/BwJh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5203C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 21:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721163922;
	bh=JxjrLrpVTXbnJgPWJ9ti8+iQ2L9kutYUs49yM3WK6cQ=;
	h=To:Subject:From:Date:From;
	b=G/O/BwJhn72OtxKekbSkI+UkmuetklKoWI7YQbBx85esAsRbiubHFtdybaCrFHMtA
	 NVLpDjqPWJO0Egn/T7alp/I/hywUdEUh1PESQ71XNuSm16POf+f7JNVgpr6fcz2ZSS
	 WTFP6JsdoetSo11QDZjKw+xHURNlLMrt/zdVDrmtPrwpEjT/ByMSkHleJS+cK3T08F
	 9WGKnQz/f5zflkjwXAUs71/+HZJiqqN/Y1ekIyMs2ZG6itXQBqyK3lDsXkkRRUcNke
	 jBUt4xaGpF6sQ/7E4uIlSE7vzk/7csZ6rnUZkgfpQhNypTOI/ktoxnwdKbotnxOmGN
	 ZtQZkaRPmmHow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE03AC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 21:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172116392276.31997.11892442922400093190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5a1d0af8e4eef789c456c2e9c34a5975b148eb2de88d6b061865bb3a61cb90
Date: Tue, 16 Jul 2024 21:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721163922
