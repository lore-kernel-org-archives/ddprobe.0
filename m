Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BDC3EA73
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710328697; cv=none; b=QLfJO6mEv/KXx4+8FjzxY3bQL36qB6+2Zmlo99BdEqZSPqQoVK5vud/aRI1R4M6XtYfypCV1mtRICO4SrRe3NndHICxB3rye7kKjGlbrqHwV+qX7z1NR1+9gn6zzNkDbuQZz6u500xnL/s33p3NULbKTsa3JjbvyBrAZ+aLAtvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710328697; c=relaxed/simple;
	bh=3pjeUAJjnrNMpd6260znFkVy/2ZGIyTGVlaEceUxdo0=;
	h=To:Subject:From:Message-Id:Date; b=F7mxFrNFBq0BbAb6+eaPvXLQ3pLcCbghzwj9LBCxJL1RxocSXXttCgOa/41hIUANVGL8QcyWcVNCuLDGP8MF1sf83dOr2LGNA00GQuxdEsTRp6hO3jbI2e39qMGUX25Fc0Ks1b9NKJHjlwekgiUMmB+Qszc6hhcG2pvXiDJMVMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjFcdvBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjFcdvBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C191C433F1
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710328696;
	bh=3pjeUAJjnrNMpd6260znFkVy/2ZGIyTGVlaEceUxdo0=;
	h=To:Subject:From:Date:From;
	b=ZjFcdvBqUjf7tGcAHGJveplM8nybYXdfVgfDmIBPlGBkx1qCWbOUqn4TbtF++k6te
	 QYJr8Pn6XGTbmyQ+TINdqab6T1h6hTtZuw0Pb0dh+9Ti9qvQJmMa2PAUSsq4WBX831
	 CgKDyYGcEZpUth2tsc+iGvTThXanqCDSurVXx0YXX1EpWAsakYCAZYSgDlX7TBuXBb
	 haPNaa7KbmyI8B1tSdKSWpgdhG812C7W6jG08AglCbLK5ohiDRm1WNeu4vg1gl89CY
	 EAuf4RU+ZtlQfEBiTnjegx/oe94lFdWinD4qw7smoEUZ2ayH/+iWd1A+1EIAS4SSOP
	 gbSgRZVAhHpeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70A3BC54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171032869640.6848.4817120647622493220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2d03bf5d1be55df3c20a32b15975fcd95b3339c6f387e598f7197b2b82f63d
Date: Wed, 13 Mar 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710328696
