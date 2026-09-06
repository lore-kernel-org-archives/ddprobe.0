Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3413537A834
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788710434; cv=none; b=TbRc6Gx1Qh8EOhiPirhheLNMy3X0Sy76StOQ1tGdPOEUiB9J61RRUmaZTk18+0Yz5LOh4wJqAQBtxCoqWbel4u1/s7/ttrjXJu9UTaPShOsTkn62Ynt/Q1fkq9P1LR+ZF12W1MWIGBGKb7TYujl9nBXtTXKIWV1JGFg/3sUrHTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788710434; c=relaxed/simple;
	bh=NyM93vwvdIuQMHvlvy3UZQmxbqepqzV7KX6ZvVckNDk=;
	h=To:Subject:From:Message-Id:Date; b=CFXtBdAzuzDxiByVYJGcFIifdr4sS1ZDLmb+JRRq0aQt1kKTbm+K0jFegarSvD3tlb46F1A5GG+yCEXGyxkEaLiDgxZ3Tyg9wOJVfRUFL89Cl/zgu0QE4si6PfOqHr+GAWiUu6guehoPB/yClCI9SzhAU7pH15h7+Et5tdNQjts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1Ph0NIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1Ph0NIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54DEC2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788710433;
	bh=NyM93vwvdIuQMHvlvy3UZQmxbqepqzV7KX6ZvVckNDk=;
	h=To:Subject:From:Date:From;
	b=I1Ph0NIbg7nupjoAtLsnrj9+ab0EDDEkQVeMvJIwLRQV1T1khJnA+IplNc3buoK/k
	 hhkbJH5vI2vuy3yydiBN+9xtfOp9Jsh/WMExMybs2V+ZbfDukMI0vzZVvnsPh/Cw9v
	 BsRAVSRKB5vuZ7CN7EPxepNQJf5rp6sossek53CooiJTZ/KwAf8wXXMFMZ+NOp0Z9P
	 VKxCgW1xoRcP5D+9wQaSyJ5t9Vqwa6cvt2RIXXNbSK+FqLu+joyZdRFbiOD7d0QJ8u
	 5U958iPAi3FJUzOtJOLHjCMWHqlSk4/GZdq/yE91/wqohE6wqPwNF+t4R0c8LFx/Z5
	 LLiM06Tpdpz2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3ADDC79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871043372.26884.691181654180893355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb121b7b18e537be0935318925324deb62c19b01401073548071a02a5b738fed
Date: Sun, 06 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788710433
