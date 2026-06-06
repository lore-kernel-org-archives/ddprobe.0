Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455092236E3
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780758874; cv=none; b=h1EHcou31zzE0Pe4KTH3+YjvvtfHFzMZsJC35mvJiTFonCqtns4QFDPs41y0DIzOd1Ie/ilL9tXhykSbaF7xw3lZGOhxUukC6g6YAHKzA5B0xv+MB2i/W/WuIFaXM3lwOiwbfux6FhIww1imYE1+qZdCImBXlmonM1VNYO7yhDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780758874; c=relaxed/simple;
	bh=PkkZmxkLzaJldWzugC1gBlUJiVRtcMUqNkBUFEiFu9Y=;
	h=To:Subject:From:Message-Id:Date; b=okt/RPhmORDG7tw5VAbhqq4RgTGwXoEn/Nu/xBXB+Jhbk2hOLe+nb62N2KRwG9Nk9ZRQeTMGvALhYYQMGoFnRjWo2VyNVPS2K2UpZPH/TIa7BtTi6YcsSw0IdzlPwgNsyiuuVuf1+S+fqUUK9ux16ivhLLFsa0mUP+V57mt5vv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8xGtpZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8xGtpZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F39C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780758873;
	bh=PkkZmxkLzaJldWzugC1gBlUJiVRtcMUqNkBUFEiFu9Y=;
	h=To:Subject:From:Date:From;
	b=A8xGtpZAsrx9jJOgfjgBAKPcLYmyhy0MY7PGNVkJMEBt2h5Ptmim73GlZCTticgAc
	 D53LXE95+1embRYfn2FAeY72YX4QjPvhwwubXeKogBj6MgUwx42/08Cl2ke5uMf76Q
	 HLQanD23GzYE7+W7b3HBKTtPtF+zVfL+9GNIP/b9uyQoYpOnN+8ZNC8x57ZF/zOAea
	 AYT5ikG75bbm2d6mU8II3ZBY1Rxno0lfIIAMKv/7AWCm10bjy9WVU9DyvtS79q/Dot
	 UlnsSdxzdwnalAmAjLkf3e3vQ8lxp133eWNH/UF8kG6FNcw4FMQPXibcet+lzlZ5/Y
	 3pAD7UlUm/K1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF951CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075887368.17153.2391157204872932595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e782348496c987eb095b605c51eb05116fa81045a48cf48ba7e1cad3ee38d17
Date: Sat, 06 Jun 2026 15:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780758873
